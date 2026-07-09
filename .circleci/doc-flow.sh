#!/usr/bin/env bash
set -euo pipefail

REMOTE="${REMOTE:-origin}"
MASTER_BRANCH="${MASTER_BRANCH:-master}"
TARGET_BRANCHES="${TARGET_BRANCHES:-hotfix develop}"
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
  audit            Show branch ancestry and non-generated differences.
  forward-master   Forward-port non-generated master changes to hotfix/develop.
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

require_clean_worktree() {
  git diff --quiet || die "working tree has unstaged changes"
  git diff --cached --quiet || die "index has staged changes"
}

fetch_branches() {
  run git fetch --prune "$REMOTE" "$MASTER_BRANCH" hotfix develop
}

manual_diff_exists() {
  ! git diff --quiet --ignore-matching-lines='^[[:space:]]*version: ' "$1" "$2" "${MANUAL_PATHSPEC[@]}"
}

single_parent_of() {
  local line
  line="$(git rev-list --parents -n 1 "$1")"
  set -- $line
  [ "$#" -eq 2 ] || return 1
  printf '%s\n' "$2"
}

restore_sidebar_version() {
  [ -f "$SIDEBAR" ] || return 0

  local version_line
  version_line="$(git show "HEAD:$SIDEBAR" 2>/dev/null | sed -n '/^[[:space:]]*version: /{p;q}' || true)"
  [ -n "$version_line" ] || return 0

  C8O_DOC_TARGET_VERSION="$version_line" perl -0pi -e \
    's/^[ \t]*version: .*$/$ENV{C8O_DOC_TARGET_VERSION}/m if $ENV{C8O_DOC_TARGET_VERSION};' \
    "$SIDEBAR"
  git add "$SIDEBAR"
}

commit_with_original_author() {
  local source_commit="$1"
  local short_commit
  short_commit="$(git rev-parse --short=12 "$source_commit")"

  GIT_AUTHOR_NAME="$(git show -s --format=%an "$source_commit")" \
  GIT_AUTHOR_EMAIL="$(git show -s --format=%ae "$source_commit")" \
  GIT_AUTHOR_DATE="$(git show -s --format=%aI "$source_commit")" \
  git commit \
    -m "Forward-port master doc fix $short_commit" \
    -m "$(git show -s --format=%s "$source_commit")"
}

apply_manual_part_of_commit() {
  local commit="$1"
  local parent
  if ! parent="$(single_parent_of "$commit")"; then
    die "cannot auto-forward merge/root commit $commit"
  fi

  if ! manual_diff_exists "$parent" "$commit"; then
    echo "skip $commit: generated-only change" >&2
    return 0
  fi

  local patch_file
  patch_file="$(mktemp)"
  git diff --binary "$parent" "$commit" "${MANUAL_PATHSPEC[@]}" > "$patch_file"
  if [ ! -s "$patch_file" ]; then
    rm -f "$patch_file"
    echo "skip $commit: empty manual patch" >&2
    return 0
  fi

  if ! git apply -3 --index "$patch_file"; then
    rm -f "$patch_file"
    die "manual patch from $commit conflicts; resolve by hand"
  fi
  rm -f "$patch_file"

  restore_sidebar_version

  if git diff --cached --quiet; then
    echo "skip $commit: no effective manual change after preserving generated fields" >&2
    git reset --hard HEAD
    return 0
  fi

  commit_with_original_author "$commit"
}

commits_to_forward() {
  local target_ref="$1"
  local source_ref="$2"

  if [ -n "${DOC_FLOW_SOURCE_COMMIT:-}" ]; then
    if git merge-base --is-ancestor "$DOC_FLOW_SOURCE_COMMIT" "$target_ref"; then
      return 0
    fi
    printf '%s\n' "$DOC_FLOW_SOURCE_COMMIT"
  else
    git rev-list --reverse "$target_ref..$source_ref"
  fi
}

forward_master() {
  require_clean_worktree
  fetch_branches

  local source_ref="$REMOTE/$MASTER_BRANCH"
  local target commits before after
  for target in $TARGET_BRANCHES; do
    run git checkout -B "$target" "$REMOTE/$target"
    before="$(git rev-parse HEAD)"

    commits="$(commits_to_forward "$REMOTE/$target" "$source_ref" || true)"
    if [ -z "$commits" ]; then
      echo "$target: already contains requested master changes" >&2
      continue
    fi

    for commit in $commits; do
      apply_manual_part_of_commit "$commit"
    done

    after="$(git rev-parse HEAD)"
    if [ "$before" != "$after" ]; then
      run git push "$REMOTE" "HEAD:$target"
    else
      echo "$target: no push needed" >&2
    fi
  done
}

show_ancestry() {
  local a b
  for a in "$REMOTE/$MASTER_BRANCH" "$REMOTE/hotfix" "$REMOTE/develop"; do
    for b in "$REMOTE/$MASTER_BRANCH" "$REMOTE/hotfix" "$REMOTE/develop"; do
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
  local left="$1"
  local right="$2"
  echo
  echo "Manual differences: $left..$right"
  git diff --name-status --ignore-matching-lines='^[[:space:]]*version: ' "$left" "$right" "${MANUAL_PATHSPEC[@]}" || true
}

audit() {
  fetch_branches
  show_ancestry
  show_manual_diff "$REMOTE/$MASTER_BRANCH" "$REMOTE/hotfix"
  show_manual_diff "$REMOTE/$MASTER_BRANCH" "$REMOTE/develop"
  show_manual_diff "$REMOTE/hotfix" "$REMOTE/develop"
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
  assert_ancestor "$REMOTE/$MASTER_BRANCH" "$REMOTE/hotfix"
  assert_no_manual_diff "$REMOTE/hotfix" "$REMOTE/develop"

  run git checkout -B "$MASTER_BRANCH" "$REMOTE/$MASTER_BRANCH"
  run git merge --ff-only "$REMOTE/hotfix"
  run git push "$REMOTE" "HEAD:$MASTER_BRANCH"

  run git checkout -B develop "$REMOTE/develop"
  run git merge -s ours --no-edit "$MASTER_BRANCH"
  run git push "$REMOTE" HEAD:develop
}

release_major() {
  require_clean_worktree
  fetch_branches
  assert_ancestor "$REMOTE/$MASTER_BRANCH" "$REMOTE/develop"

  run git checkout -B "$MASTER_BRANCH" "$REMOTE/$MASTER_BRANCH"
  run git merge --ff-only "$REMOTE/develop"
  run git push "$REMOTE" "HEAD:$MASTER_BRANCH"

  [ "${DOC_FLOW_CONFIRM_RESET_HOTFIX:-}" = "1" ] || die "set DOC_FLOW_CONFIRM_RESET_HOTFIX=1 to reset hotfix to master"
  run git checkout -B hotfix "$REMOTE/hotfix"
  run git reset --hard "$MASTER_BRANCH"
  run git push --force-with-lease "$REMOTE" HEAD:hotfix
}

case "${1:-}" in
  audit) audit ;;
  forward-master) forward_master ;;
  release-minor) release_minor ;;
  release-major) release_major ;;
  -h|--help|help|"") usage ;;
  *) usage >&2; exit 2 ;;
esac
