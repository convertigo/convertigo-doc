#!/usr/bin/env python3
"""Exercise doc-flow only against disposable local bare repositories."""
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

SCRIPT = Path(__file__).with_name('doc-flow.sh').resolve()
SIDEBAR = '_data/sidebars/c8o_sidebar.yml'
GENERATED = 'reference-manual/convertigo-objects/example.md'
ROOT = Path(tempfile.mkdtemp(prefix='doc-flow-', dir=os.environ.get('DOC_FLOW_TEST_ROOT')))
ENV = dict(os.environ, GIT_CONFIG_GLOBAL=os.devnull, GIT_CONFIG_SYSTEM=os.devnull,
           GIT_TERMINAL_PROMPT='0')
for key in ['DOC_FLOW_SOURCE_COMMIT', 'DOC_FLOW_CONFIRM_RESET_HOTFIX', 'SOURCE_BRANCH',
            'TARGET_BRANCHES', 'MASTER_BRANCH', 'HOTFIX_BRANCH', 'DEVELOP_BRANCH', 'REMOTE']:
    ENV.pop(key, None)


def run(cwd, *args, check=True, env=None):
    result = subprocess.run(args, cwd=cwd, env=env or ENV, text=True,
                            stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    if check and result.returncode:
        raise AssertionError(f'{args!r} failed ({result.returncode}):\n{result.stdout}')
    return result


def git(cwd, *args, **kwargs):
    return run(cwd, 'git', *args, **kwargs).stdout.strip()


class Repository:
    def __init__(self, name):
        self.root = ROOT / name
        self.root.mkdir()
        self.remote = self.root / 'remote.git'
        self.author = self.root / 'author'
        run(self.root, 'git', 'init', '--bare', str(self.remote))
        git(self.remote, 'symbolic-ref', 'HEAD', 'refs/heads/master')
        run(self.root, 'git', 'init', '-b', 'master', str(self.author))
        self.configure(self.author)
        self.write('guide.md', 'base\n')
        self.write(SIDEBAR, 'entries:\n- title: base\n  version: 8.4.6\n  folders: []\n')
        self.write(GENERATED, 'master generated\n')
        self.commit('Initial documentation')
        git(self.author, 'remote', 'add', 'origin', str(self.remote))
        self.push('master')
        git(self.author, 'checkout', '-b', 'hotfix')
        self.write(SIDEBAR, 'entries:\n- title: base\n  version: 8.4.7\n  folders: []\n')
        self.write(GENERATED, 'hotfix generated\n')
        self.commit('Generated hotfix baseline')
        self.push('hotfix')
        git(self.author, 'checkout', '-b', 'develop', 'master')
        self.write(SIDEBAR, 'entries:\n- title: base\n  version: 8.5.0\n  folders: []\n')
        self.write(GENERATED, 'develop generated\n')
        self.commit('Generated develop baseline')
        self.push('develop')
        self.worker = self.root / 'worker'
        run(self.root, 'git', 'clone', str(self.remote), str(self.worker))
        self.configure(self.worker)

    @staticmethod
    def configure(repo):
        git(repo, 'config', 'user.name', 'Documentation Test')
        git(repo, 'config', 'user.email', 'docs@example.invalid')
        git(repo, 'config', 'commit.gpgsign', 'false')

    def write(self, path, text):
        p = self.author / path
        p.parent.mkdir(parents=True, exist_ok=True)
        p.write_text(text)

    def commit(self, message):
        git(self.author, 'add', '--all')
        git(self.author, 'commit', '-m', message)
        return git(self.author, 'rev-parse', 'HEAD')

    def push(self, branch):
        assert Path(git(self.author, 'remote', 'get-url', 'origin')).resolve() == self.remote.resolve()
        git(self.author, 'push', 'origin', 'HEAD:' + branch)
        return self.tip(branch)

    def checkout(self, branch):
        git(self.author, 'checkout', branch)

    def tip(self, branch):
        return git(self.remote, 'rev-parse', branch)

    def content(self, branch, path):
        return git(self.remote, 'show', branch + ':' + path)

    def flow(self, command, *args, sha=None, check=True, extra=None):
        assert Path(git(self.worker, 'remote', 'get-url', 'origin')).resolve() == self.remote.resolve()
        env = dict(ENV, **(extra or {}))
        if sha:
            env['DOC_FLOW_SOURCE_COMMIT'] = sha
        result = run(self.worker, 'bash', str(SCRIPT), command, *args, check=check, env=env)
        with (self.root / 'runs.log').open('a') as stream:
            stream.write(f'\n{command} {args} => {result.returncode}\n{result.stdout}')
        return result

    def ancestor(self, source, target):
        return run(self.remote, 'git', 'merge-base', '--is-ancestor', source, target, check=False).returncode == 0


class ForwardTests(unittest.TestCase):
    def setUp(self):
        self.repo = Repository(self._testMethodName)

    def assert_target_fields(self):
        self.assertIn('version: 8.5.0', self.repo.content('develop', SIDEBAR))
        self.assertEqual('develop generated', self.repo.content('develop', GENERATED))

    def test_multi_commit_push_and_mixed_sidebar(self):
        r = self.repo
        r.checkout('hotfix')
        r.write('guide.md', 'base\nfirst\n')
        r.commit('ref convertigo/convertigo#1232 - First manual change')
        r.write('guide.md', 'base\nfirst\nsecond\n')
        r.write(SIDEBAR, 'entries:\n- title: new title\n  version: 8.4.8\n  folders: []\n')
        r.write(GENERATED, 'new hotfix generated\n')
        tip = r.commit('ref convertigo/convertigo#1232 - Second manual change')
        r.push('hotfix')
        r.flow('forward-hotfix', sha=tip)
        self.assertEqual('base\nfirst\nsecond', r.content('develop', 'guide.md'))
        self.assertIn('title: new title', r.content('develop', SIDEBAR))
        self.assert_target_fields()
        self.assertTrue(r.ancestor(tip, 'develop'))
        before = r.tip('develop')
        r.flow('forward-hotfix', sha=tip)
        self.assertEqual(before, r.tip('develop'))

    def test_generated_only_records_ancestry_without_changing_tree(self):
        r = self.repo
        r.checkout('hotfix')
        r.write(GENERATED, 'generated update only\n')
        r.write('images/beans/example.txt', 'generated icon\n')
        r.write(SIDEBAR, 'entries:\n- title: base\n  version: 8.4.9\n  folders: []\n')
        tip = r.commit('Generated content only')
        r.push('hotfix')
        tree = git(r.remote, 'rev-parse', 'develop^{tree}')
        r.flow('forward-hotfix', sha=tip)
        self.assertEqual(tree, git(r.remote, 'rev-parse', 'develop^{tree}'))
        self.assertTrue(r.ancestor(tip, 'develop'))

    def test_conflict_does_not_push_or_mark_source_processed(self):
        r = self.repo
        r.checkout('hotfix')
        r.write('guide.md', 'hotfix version\n')
        r.commit('Manual hotfix change')
        r.push('hotfix')
        r.checkout('develop')
        r.write('guide.md', 'different develop version\n')
        r.commit('Manual develop change')
        before = r.push('develop')
        result = r.flow('forward-hotfix', check=False)
        self.assertNotEqual(0, result.returncode)
        self.assertIn('conflicts', result.stdout)
        self.assertEqual(before, r.tip('develop'))
        self.assertFalse(r.ancestor('hotfix', 'develop'))
        self.assertTrue(git(r.worker, 'ls-files', '--unmerged'))

    def test_master_then_hotfix_pipeline_does_not_reapply_or_push(self):
        r = self.repo
        r.checkout('master')
        r.write('guide.md', 'base\nmaster first\n')
        r.commit('First master change')
        r.write('guide.md', 'base\nmaster first\nmaster second\n')
        tip = r.commit('Second master change')
        r.push('master')
        r.flow('forward-master', sha=tip)
        self.assertEqual(r.content('master', 'guide.md'), r.content('hotfix', 'guide.md'))
        self.assertEqual(r.content('master', 'guide.md'), r.content('develop', 'guide.md'))
        self.assertTrue(r.ancestor('master', 'hotfix'))
        self.assertTrue(r.ancestor('hotfix', 'develop'))
        self.assert_target_fields()
        before = r.tip('develop')
        result = r.flow('forward-hotfix', sha=r.tip('hotfix'))
        self.assertEqual(before, r.tip('develop'))
        self.assertIn('no push', result.stdout)
        r.flow('forward-master', sha=tip)
        self.assertEqual(before, r.tip('develop'))

    def test_source_sha_bounds_the_range_instead_of_selecting_one_commit(self):
        r = self.repo
        r.checkout('hotfix')
        r.write('guide.md', 'base\nfirst\n')
        r.commit('First built change')
        r.write('guide.md', 'base\nfirst\nsecond\n')
        built = r.commit('Second built change')
        r.write('guide.md', 'base\nfirst\nsecond\nnot built yet\n')
        r.commit('Later unbuilt change')
        r.push('hotfix')
        r.flow('forward-hotfix', sha=built)
        self.assertEqual('base\nfirst\nsecond', r.content('develop', 'guide.md'))
        self.assertFalse(r.ancestor('hotfix', 'develop'))

    def test_source_merge_manual_change_is_forwarded(self):
        r = self.repo
        r.checkout('hotfix')
        git(r.author, 'checkout', '-b', 'topic')
        r.write('merged-guide.md', 'content from merged topic\n')
        r.commit('Topic manual change')
        r.checkout('hotfix')
        git(r.author, 'merge', '--no-ff', '-m', 'Merge manual documentation', 'topic')
        tip = r.push('hotfix')
        r.flow('forward-hotfix', sha=tip)
        self.assertEqual('content from merged topic', r.content('develop', 'merged-guide.md'))
        self.assertTrue(r.ancestor(tip, 'develop'))

    def test_existing_manual_patch_only_adds_missing_ancestry(self):
        r = self.repo
        r.checkout('hotfix')
        r.write('guide.md', 'same manual change\n')
        commit = r.commit('Common manual fix')
        r.push('hotfix')
        r.checkout('develop')
        git(r.author, 'cherry-pick', commit)
        before = r.push('develop')
        tree = git(r.remote, 'rev-parse', before + '^{tree}')
        r.flow('forward-hotfix')
        self.assertEqual(tree, git(r.remote, 'rev-parse', 'develop^{tree}'))
        self.assertEqual(1, int(git(r.remote, 'rev-list', '--first-parent', '--count', before + '..develop')))

    def test_rejected_push_fails_without_remote_update(self):
        r = self.repo
        r.checkout('hotfix')
        r.write('guide.md', 'new manual text\n')
        r.commit('Manual update')
        r.push('hotfix')
        hook = r.remote / 'hooks/pre-receive'
        hook.write_text('#!/bin/sh\nexit 1\n')
        hook.chmod(0o755)
        before = r.tip('develop')
        result = r.flow('forward-hotfix', check=False)
        self.assertNotEqual(0, result.returncode)
        self.assertIn('push to develop failed', result.stdout)
        self.assertEqual(before, r.tip('develop'))

    def test_minor_release_after_forwarding(self):
        r = self.repo
        r.checkout('hotfix')
        r.write('guide.md', 'release manual text\n')
        r.commit('Release documentation')
        tip = r.push('hotfix')
        r.flow('forward-hotfix')
        r.flow('release-minor')
        self.assertEqual(tip, r.tip('master'))
        self.assertTrue(r.ancestor('master', 'develop'))
        self.assertEqual('hotfix generated', r.content('master', GENERATED))
        self.assert_target_fields()
        before = r.tip('develop')
        r.flow('forward-master', sha=tip)
        self.assertEqual(before, r.tip('develop'))

    def test_minor_release_refuses_missing_manual_forward(self):
        r = self.repo
        r.checkout('hotfix')
        r.write('guide.md', 'unforwarded text\n')
        r.commit('Pending manual documentation')
        r.push('hotfix')
        before = r.tip('master')
        result = r.flow('release-minor', check=False)
        self.assertNotEqual(0, result.returncode)
        self.assertIn('manual differences remain', result.stdout)
        self.assertEqual(before, r.tip('master'))

    def test_major_release_preserves_its_confirmation_and_flow(self):
        r = self.repo
        r.flow('forward-hotfix')
        before = [r.tip(b) for b in ['master', 'hotfix', 'develop']]
        result = r.flow('release-major', check=False)
        self.assertNotEqual(0, result.returncode)
        self.assertEqual(before, [r.tip(b) for b in ['master', 'hotfix', 'develop']])
        r.flow('release-major', extra={'DOC_FLOW_CONFIRM_RESET_HOTFIX': '1'})
        self.assertEqual(r.tip('develop'), r.tip('master'))
        self.assertEqual(r.tip('develop'), r.tip('hotfix'))
        r.flow('forward-master', sha=r.tip('master'))
        r.flow('forward-hotfix', sha=r.tip('hotfix'))
        self.assertEqual('develop generated', r.content('hotfix', GENERATED))

    def test_local_audit_never_fetches(self):
        r = self.repo
        for branch in ['hotfix', 'develop']:
            git(r.worker, 'branch', branch, 'origin/' + branch)
        git(r.worker, 'remote', 'set-url', 'origin', str(r.root / 'does-not-exist.git'))
        result = run(r.worker, 'bash', str(SCRIPT), 'audit', '--local')
        self.assertNotIn('git fetch', result.stdout)
        self.assertIn('Manual differences: hotfix..develop', result.stdout)

    def test_generic_source_to_target_command(self):
        r = self.repo
        r.checkout('hotfix')
        r.write('guide.md', 'generic manual update\n')
        r.commit('Manual generic update')
        r.push('hotfix')
        r.flow('forward', 'hotfix', 'develop')
        self.assertEqual('generic manual update', r.content('develop', 'guide.md'))


if __name__ == '__main__':
    print(f'Local-only fixtures retained at {ROOT}', flush=True)
    unittest.main(verbosity=2)
