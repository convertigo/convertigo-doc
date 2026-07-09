# Convertigo Documentation Release Guide

This repository follows the Convertigo release flow with three long-lived branches:

- `master`: released documentation, published as `latest`.
- `hotfix`: documentation for the next patch or minor release.
- `develop`: documentation for the next major release.

Expected invariants:

- `master` should remain an ancestor of `hotfix`.
- `master` should remain an ancestor of `develop`.
- Manual documentation fixes pushed to `master` are automatically forwarded to `hotfix` and `develop`.
- Release updates to `master` should normally be fast-forwards.

## Generated Paths

Convertigo-generated documentation is not manually forwarded:

- `reference-manual/convertigo-objects/**`
- `images/beans/**`

`_data/sidebars/c8o_sidebar.yml` is a hybrid file. Its `version:` line is generated and ignored by manual-difference audits.

## Audit

Run this before a release, or whenever the branch graph looks suspicious:

```sh
.circleci/doc-flow.sh audit
```

Expected result:

```text
origin/master is ancestor of origin/hotfix
origin/master is ancestor of origin/develop

Manual differences: origin/master..origin/hotfix

Manual differences: origin/master..origin/develop

Manual differences: origin/hotfix..origin/develop
```

The `Manual differences` sections should be empty. Generated differences between branches are expected.

## Direct Fixes On Master

Direct edits on `master` are allowed for quick documentation fixes that are not tied to the next generated documentation update.

On each `master` push, CircleCI runs `forward_master_manual_changes`. That job forwards only the non-generated part of the change to:

- `hotfix`
- `develop`

The job:

- applies only non-generated changes;
- ignores generated documentation;
- preserves the branch-specific `version:` line in `_data/sidebars/c8o_sidebar.yml`;
- records `master` ancestry with an `ours` merge;
- fails on conflicts or rejected pushes.

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

If `master` cannot fast-forward to `hotfix`, the helper stops.

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

This command is normally run automatically by CircleCI on each `master` push.
