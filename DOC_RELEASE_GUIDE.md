# Convertigo Documentation Release Guide

This repository follows the Convertigo release flow with three long-lived branches:

- `master`: released documentation, published as `latest`.
- `hotfix`: documentation for the next patch or minor release.
- `develop`: documentation for the next major release.

Expected invariants:

- `master` should remain an ancestor of `hotfix`.
- `hotfix` should remain an ancestor of `develop` after forwarding.
- `master` should remain an ancestor of `develop`.
- Manual documentation fixes pushed to `master` are automatically forwarded through `hotfix` to `develop`.
- Manual documentation fixes pushed to `hotfix` are automatically forwarded to `develop`.
- Release updates to `master` should normally be fast-forwards.

## Generated Paths

Convertigo-generated documentation is not manually forwarded:

- `reference-manual/convertigo-objects/**`
- `images/beans/**`

`_data/sidebars/c8o_sidebar.yml` is a hybrid file. Its `version:` line is generated and ignored by manual-difference audits.

## Audit

### Local Docker build and preview

Docker installs the repository's `Gemfile` in the image. No host Ruby, host
`vendor/bundle` or pre-existing `Gemfile.lock` is required. The image keeps its
own resolved dependencies outside the mounted source directory.

```sh
docker compose build server
docker compose run --rm --no-deps server build
```

This generates the complete site in `_site/`, without starting a server. For a
preview at `http://localhost:4000`, run `docker compose up server`, or use
`./runJekyll.sh` for the live-reloading preview. `./runJekyll.sh build` also runs
a non-interactive build. Rebuild the image after changing the `Gemfile`.

### Branch audit

Run this before a release, or whenever the branch graph looks suspicious:

```sh
.circleci/doc-flow.sh audit
```

Expected ancestry includes `origin/master` in `origin/hotfix` and
`origin/hotfix` in `origin/develop`. The reverse directions need not hold.
The `origin/hotfix..origin/develop` manual-difference section must be empty
before a minor release. Differences from `master` may remain while the next
release is being prepared; all three sections should be empty after release
forwarding has completed. Generated differences between branches are expected.
The audit prints differences; a successful exit alone does not mean they are empty.

To inspect prepared local branches without fetching or publishing anything:

```sh
.circleci/doc-flow.sh audit --local
# A catch-up worktree can use a different local develop branch name:
DEVELOP_BRANCH=my-doc-catchup .circleci/doc-flow.sh audit --local
```

## Automatic Manual Documentation Forwarding

On each `master` push, CircleCI runs `forward_master_manual_changes`: first
`master` to `hotfix`, then that exact hotfix result to `develop`. On each
`hotfix` push, `forward_hotfix_manual_changes` forwards hotfix to develop.
Both jobs run after the documentation build and share the same
[CircleCI serial group](https://circleci.com/docs/reference/configuration-reference/#serial-group).
This serializes their writes across pipelines. A concurrent human or generated
push is still protected by Git's normal non-fast-forward rejection.

The shared source-to-target helper:

- walks **all** new source commits not already in the target ancestry, in
  first-parent order; a source merge contributes its effective manual change;
- uses `DOC_FLOW_SOURCE_COMMIT` (the pipeline SHA) only as an upper bound,
  so a push containing several commits is forwarded completely, while a later
  unbuilt source commit waits for its own pipeline;
- applies only manual paths with `git apply -3 --index`;
- normalizes the sidebar version during patch application, then restores the
  target branch's `version:` line, including when neighbouring manual fields change;
- preserves the source commit subject and author for each effective manual patch;
- records the processed source tip with `git merge -s ours`, preserving the
  target's generated pages and branch-specific version;
- fails on conflicts or rejected pushes; it never force-pushes a forward.

An `ours` merge records ancestry, **not** a content merge. Generated-only commits
also receive an ancestry marker without changing the target tree. After the
master job has forwarded through hotfix, the hotfix job triggered by that push
finds its source already in develop: no repeated patch and no further push.
A skipped older CircleCI job is also covered by the next job's full source range.
Forwarding never writes back from develop or hotfix to master.

Keep shared manual text identical between hotfix and develop. If behavior differs
by version, use an explicit version-dependent section (for example a Liquid
condition on `site.data.sidebars.c8o_sidebar.entries[0].version`) rather than
silently overwriting a branch-specific explanation.

### Conflicts and rejected pushes

A conflict stops before the source ancestry marker and before publishing the
target. Inspect the failed source commit and the target branch, then reconcile
its manual change in a local worktree with `git apply -3` or an equivalent manual
edit. Keep the target generated files and sidebar version. Review/build the
result, and only record a source tip with an `ours` merge **after every manual
change through that tip is accounted for**. Publish only the reviewed target
with the normal authorization, then rerun the failed job or forward command.
Do not record an unresolved source tip just to make the job green.

A rejected push leaves the remote unchanged for that push. Fetch and repeat the
forward on the updated target; do not force-push the failed local result. If the
master job already published hotfix before the develop leg failed, keep that
successful hotfix update and rerun the develop leg. Already-recorded ancestry
makes completed steps idempotent.

### Local regression tests

```sh
python3 .circleci/test-doc-flow.py
```

The tests create and retain disposable local bare repositories, and assert that
all remotes are local before invoking a push. They cover multi-commit pushes,
mixed manual/generated sidebar edits, generated-only changes, conflicts, rejected
pushes, source merges, already-applied patches, chained master/hotfix jobs, and
minor/major release flows. `DOC_FLOW_TEST_ROOT` can select a directory for their
fixtures. No test contacts the real repository remote.

CircleCI needs this environment variable to push forwarded commits:

```text
DOC_FLOW_GITHUB_TOKEN
```

The token should be limited to the documentation repository, with:

- `Contents: Read and write`
- `Metadata: Read-only`

## Minor Release

A minor release publishes `hotfix` to `master`, then records that release point in `develop`.

Prepare:

```sh
git switch master
git fetch --prune origin
.circleci/doc-flow.sh audit
```

Release:

```sh
.circleci/doc-flow.sh release-minor
```

The helper runs the equivalent of:

```sh
git checkout -B master origin/master
git merge --ff-only origin/hotfix
git push origin HEAD:master

git checkout -B develop origin/develop
git merge -s ours --no-edit master
git push origin HEAD:develop
```

If `master` cannot fast-forward to `hotfix`, or manual differences remain
between hotfix and develop, the helper stops before publishing. The existing
hotfix ancestry in develop makes the final `ours` merge a no-op when appropriate.

## Major Release

A major release publishes `develop` to `master`, then resets `hotfix` to the new `master`.

Prepare:

```sh
git switch master
git fetch --prune origin
.circleci/doc-flow.sh audit
```

Release:

```sh
DOC_FLOW_CONFIRM_RESET_HOTFIX=1 .circleci/doc-flow.sh release-major
```

The helper runs the equivalent of:

```sh
git checkout -B master origin/master
git merge --ff-only origin/develop
git push origin HEAD:master

git checkout -B hotfix origin/hotfix
git reset --hard master
git push --force-with-lease origin HEAD:hotfix
```

The `hotfix` reset is intentionally protected by `DOC_FLOW_CONFIRM_RESET_HOTFIX=1`.
The helper checks this confirmation before changing or pushing either branch.

## Generated Documentation Builds

Convertigo builds continue to generate and push object documentation to the matching documentation branch:

- Convertigo `hotfix` -> documentation `hotfix`
- Convertigo `develop` -> documentation `develop`

Those builds should only handle generated documentation. They do not perform release merges.

## Post-release Checks

After a release, check CircleCI:

- `master` should be green and publish `latest`.
- `hotfix` should remain green.
- `develop` should remain green.

Also check the usual public documentation endpoints for:

- `latest`
- `hotfix`
- `develop`

## Useful Commands

Show help:

```sh
.circleci/doc-flow.sh --help
```

Show non-generated differences between release branches:

```sh
.circleci/doc-flow.sh audit
```

Manually forward non-generated `master` changes to `hotfix` and `develop`:

```sh
.circleci/doc-flow.sh forward-master
```

Forward hotfix manual changes to develop:

```sh
.circleci/doc-flow.sh forward-hotfix
```

The generic form is `.circleci/doc-flow.sh forward SOURCE TARGET...`.
These commands push their targets; use them only with authorization. CircleCI
normally runs the two named forward commands after each matching branch build.
