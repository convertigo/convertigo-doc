#!/usr/bin/env bash
set -euo pipefail

REMOTE="${REMOTE:-origin}"
MASTER_BRANCH="${MASTER_BRANCH:-master}"
HOTFIX_BRANCH="${HOTFIX_BRANCH:-hotfix}"
DEVELOP_BRANCH="${DEVELOP_BRANCH:-develop}"
SIDEBAR="_data/sidebars/c8o_sidebar.yml"

MANUAL_PATHSPEC=(
  --
  .
  ':(exclude)reference-manual/convertigo-objects/**'
  ':(exclude)images/beans/**'
)

usage() {
  cat <<'USAGE'
Usage: .circleci/doc-flow.sh <command>

Commands:
  audit [--local]  Show ancestry and manual differences (remote refs by default).
  forward SOURCE TARGET...
                   Forward all new manual commits and record source ancestry.
  forward-master   Forward master to hotfix, then hotfix to develop.
  forward-hotfix   Forward hotfix manual changes to develop.
  release-minor    Fast-forward master to hotfix, then record master in develop.
  release-major    Fast-forward master to develop, then reset hotfix to master.

Generated paths are intentionally not forward-ported:
  reference-manual/convertigo-objects/**
  images/beans/**
USAGE
}

die() {
  echo "doc-flow: $*" >&2
  exit 1
}

run() {
  echo "+ $*" >&2
  "$@"
}

push_branch() {
  local target="$1"
  if ! git push "$REMOTE" "HEAD:$target"; then
    die "push to $target failed; configure DOC_FLOW_GITHUB_TOKEN or a write-enabled SSH key in CircleCI"
  fi
}

require_clean_worktree() {
  git diff --quiet || die "working tree has unstaged changes"
  git diff --cached --quiet || die "index has staged changes"
  [ -z "$(git ls-files --others --exclude-standard)" ] || die "working tree has untracked files"
}

fetch_branches() {
  run git fetch --prune "$REMOTE" "$MASTER_BRANCH" "$HOTFIX_BRANCH" "$DEVELOP_BRANCH"
}

manual_diff_exists() {
  ! git diff --quiet --ignore-matching-lines='^[[:space:]]*version: ' "$1" "$2" "${MANUAL_PATHSPEC[@]}"
}

# Strip only the generated sidebar version in temporary trees, before forming
# the patch. Restoring it after apply alone cannot avoid a three-way conflict
# when one commit changes both the version and neighbouring manual sidebar data.
manual_tree() (
  set -e
  local ref="$1" scratch mode blob
  scratch="$(mktemp -d)"
  trap 'rm -f "$scratch/index" "$scratch/index.lock" "$scratch/sidebar"; rmdir "$scratch"' EXIT
  export GIT_INDEX_FILE="$scratch/index"
  git read-tree "$ref"
  if git cat-file -e "$ref:$SIDEBAR" 2>/dev/null; then
    git show "$ref:$SIDEBAR" | sed 's/^\([[:space:]]*version: \).*$/\1__DOC_FLOW_VERSION__/' > "$scratch/sidebar"
    mode="$(git ls-tree "$ref" -- "$SIDEBAR" | awk '{print $1}')"
    blob="$(git hash-object -w "$scratch/sidebar")"
    git update-index --cacheinfo "$mode,$blob,$SIDEBAR"
  fi
  git write-tree
)

restore_sidebar_version() {
  [ -f "$SIDEBAR" ] || return 0

  local version_line
  version_line="$(git show "HEAD:$SIDEBAR" 2>/dev/null | awk '/^[[:space:]]*version: / { print; exit }' || true)"
  [ -n "$version_line" ] || return 0

  C8O_DOC_TARGET_VERSION="$version_line" perl -0pi -e \
    's/^[ \t]*version: .*$/$ENV{C8O_DOC_TARGET_VERSION}/m if $ENV{C8O_DOC_TARGET_VERSION};' \
    "$SIDEBAR"
  git add "$SIDEBAR"
}

commit_with_original_author() {
  local source_commit="$1"
  local source_branch="$2"
  local short_commit
  short_commit="$(git rev-parse --short=12 "$source_commit")"

  GIT_AUTHOR_NAME="$(git show -s --format=%an "$source_commit")" \
  GIT_AUTHOR_EMAIL="$(git show -s --format=%ae "$source_commit")" \
  GIT_AUTHOR_DATE="$(git show -s --format=%aI "$source_commit")" \
  git commit \
    -m "$(git show -s --format=%s "$source_commit")" \
    -m "Manual documentation forwarded from $source_branch at $short_commit."
}

apply_manual_part_of_commit() {
  local commit="$1" source_branch="$2" parent left_tree right_tree patch_file
  # First-parent traversal handles a source merge as its effective change,
  # including conflict resolutions, without replaying its side branch twice.
  parent="$(git rev-parse "$commit^1" 2>/dev/null)" || parent="$(git hash-object -w -t tree /dev/null)"
  if ! manual_diff_exists "$parent" "$commit"; then
    echo "skip $commit: generated-only or ancestry-only change" >&2
    return 0
  fi

  left_tree="$(manual_tree "$parent")"
  right_tree="$(manual_tree "$commit")"
  patch_file="$(mktemp)"
  git diff --binary "$left_tree" "$right_tree" "${MANUAL_PATHSPEC[@]}" > "$patch_file"
  if [ ! -s "$patch_file" ]; then
    rm -f "$patch_file"
    return 0
  fi
  # Normalize the target as well: the three-way merge must compare the same
  # placeholder on all sides, then restore the target version from HEAD.
  if [ -f "$SIDEBAR" ]; then
    perl -pi -e 's/^([ \t]*version: ).*$/${1}__DOC_FLOW_VERSION__/' "$SIDEBAR"
    git add "$SIDEBAR"
  fi
  if ! git apply -3 --index "$patch_file"; then
    rm -f "$patch_file"
    die "manual patch from $source_branch commit $commit conflicts; resolve by hand before recording ancestry"
  fi
  rm -f "$patch_file"
  restore_sidebar_version
  if git diff --cached --quiet; then
    echo "skip $commit: manual change already present" >&2
    return 0
  fi
  commit_with_original_author "$commit" "$source_branch"
}

record_source_ancestry() {
  local source_ref="$1"
  if git merge-base --is-ancestor "$source_ref" HEAD; then
    return 0
  fi
  run git merge -s ours --no-edit "$source_ref"
}

forward_source() {
  local source_branch="$1"
  shift
  [ "$#" -gt 0 ] || die "forward needs a source and at least one target"
  require_clean_worktree
  fetch_branches

  local source_tip="$REMOTE/$source_branch"
  if [ -n "${DOC_FLOW_SOURCE_COMMIT:-}" ]; then
    git cat-file -e "$DOC_FLOW_SOURCE_COMMIT^{commit}" || die "source commit is unavailable"
    assert_ancestor "$DOC_FLOW_SOURCE_COMMIT" "$source_tip"
    source_tip="$DOC_FLOW_SOURCE_COMMIT"
  fi
  source_tip="$(git rev-parse "$source_tip")"
  local target commits before after commit
  for target in "$@"; do
    [ "$target" != "$source_branch" ] || die "source and target must differ"
    run git checkout -B "$target" "$REMOTE/$target"
    before="$(git rev-parse HEAD)"
    # The pipeline SHA bounds the source, it never replaces this full range.
    commits="$(git rev-list --reverse --first-parent "$before..$source_tip")"
    for commit in $commits; do
      apply_manual_part_of_commit "$commit" "$source_branch"
    done
    record_source_ancestry "$source_tip"
    after="$(git rev-parse HEAD)"
    LAST_TARGET_TIP="$after"
    if [ "$before" != "$after" ]; then
      push_branch "$target"
    else
      echo "$target: already contains $source_branch through $source_tip; no push" >&2
    fi
  done
}

forward_master() {
  # Going through hotfix gives develop both source ancestries. The hotfix job
  # triggered by our first push then has no missing commit and makes no push.
  forward_source "$MASTER_BRANCH" "$HOTFIX_BRANCH"
  DOC_FLOW_SOURCE_COMMIT="$LAST_TARGET_TIP" forward_source "$HOTFIX_BRANCH" "$DEVELOP_BRANCH"
}

forward_hotfix() {
  forward_source "$HOTFIX_BRANCH" "$DEVELOP_BRANCH"
}

show_ancestry() {
  local a b
  for a in "$@"; do
    for b in "$@"; do
      [ "$a" = "$b" ] && continue
      if git merge-base --is-ancestor "$a" "$b"; then
        echo "$a is ancestor of $b"
      else
        echo "$a is NOT ancestor of $b"
      fi
    done
  done
}

show_manual_diff() {
  echo
  echo "Manual differences: $1..$2"
  git diff --name-status --ignore-matching-lines='^[[:space:]]*version: ' "$1" "$2" "${MANUAL_PATHSPEC[@]}"
}

audit() {
  local prefix="$REMOTE/"
  case "${1:-}" in
    --local) prefix="" ;;
    "") fetch_branches ;;
    *) die "audit accepts only --local" ;;
  esac
  local master="$prefix$MASTER_BRANCH" hotfix="$prefix$HOTFIX_BRANCH" develop="$prefix$DEVELOP_BRANCH"
  show_ancestry "$master" "$hotfix" "$develop"
  show_manual_diff "$master" "$hotfix"
  show_manual_diff "$master" "$develop"
  show_manual_diff "$hotfix" "$develop"
}

assert_ancestor() {
  git merge-base --is-ancestor "$1" "$2" || die "$1 is not an ancestor of $2"
}

assert_no_manual_diff() {
  git diff --quiet --ignore-matching-lines='^[[:space:]]*version: ' "$1" "$2" "${MANUAL_PATHSPEC[@]}" || die "manual differences remain between $1 and $2"
}

release_minor() {
  require_clean_worktree
  fetch_branches
  assert_ancestor "$REMOTE/$MASTER_BRANCH" "$REMOTE/$HOTFIX_BRANCH"
  assert_no_manual_diff "$REMOTE/$HOTFIX_BRANCH" "$REMOTE/$DEVELOP_BRANCH"

  run git checkout -B "$MASTER_BRANCH" "$REMOTE/$MASTER_BRANCH"
  run git merge --ff-only "$REMOTE/$HOTFIX_BRANCH"
  run git push "$REMOTE" "HEAD:$MASTER_BRANCH"

  run git checkout -B "$DEVELOP_BRANCH" "$REMOTE/$DEVELOP_BRANCH"
  run git merge -s ours --no-edit "$MASTER_BRANCH"
  run git push "$REMOTE" "HEAD:$DEVELOP_BRANCH"
}

release_major() {
  [ "${DOC_FLOW_CONFIRM_RESET_HOTFIX:-}" = "1" ] || die "set DOC_FLOW_CONFIRM_RESET_HOTFIX=1 to reset hotfix to master"
  require_clean_worktree
  fetch_branches
  assert_ancestor "$REMOTE/$MASTER_BRANCH" "$REMOTE/$DEVELOP_BRANCH"

  run git checkout -B "$MASTER_BRANCH" "$REMOTE/$MASTER_BRANCH"
  run git merge --ff-only "$REMOTE/$DEVELOP_BRANCH"
  run git push "$REMOTE" "HEAD:$MASTER_BRANCH"

  run git checkout -B "$HOTFIX_BRANCH" "$REMOTE/$HOTFIX_BRANCH"
  run git reset --hard "$MASTER_BRANCH"
  run git push --force-with-lease "$REMOTE" "HEAD:$HOTFIX_BRANCH"
}

case "${1:-}" in
  audit) audit "${2:-}" ;;
  forward) shift; [ "$#" -ge 2 ] || die "forward needs SOURCE TARGET..."; forward_source "$@" ;;
  forward-master) forward_master ;;
  forward-hotfix) forward_hotfix ;;
  release-minor) release_minor ;;
  release-major) release_major ;;
  -h|--help|help|"") usage ;;
  *) usage >&2; exit 2 ;;
esac
