# Convertigo Doc release guide

Ce depot suit le cycle de release Convertigo avec trois branches principales :

- `master` : documentation publiee en `latest`.
- `hotfix` : prochaine mineure ou patch public.
- `develop` : prochaine majeure.

Objectif attendu :

- `master` doit rester ancetre de `hotfix`.
- `master` doit rester ancetre de `develop`.
- Les corrections manuelles faites sur `master` sont propagees automatiquement vers `hotfix` et `develop`.
- Les releases doivent normalement etre des fast-forwards vers `master`.

## Zones generees

La documentation generee par Convertigo ne doit pas etre reportee manuellement :

- `reference-manual/convertigo-objects/**`
- `images/beans/**`

Le fichier `_data/sidebars/c8o_sidebar.yml` est hybride. Sa ligne `version:` est mise a jour par la generation et est ignoree par les audits de differences manuelles.

## Audit courant

Avant une release ou si le graphe Git parait suspect :

```sh
.circleci/doc-flow.sh audit
```

Etat attendu :

```text
origin/master is ancestor of origin/hotfix
origin/master is ancestor of origin/develop

Manual differences: origin/master..origin/hotfix

Manual differences: origin/master..origin/develop

Manual differences: origin/hotfix..origin/develop
```

Les sections `Manual differences` doivent etre vides. Les differences generees peuvent exister entre branches.

## Correction directe sur master

Cas admis : correction rapide de doc non generee faite inline sur GitHub dans `master`.

La CI `convertigo-doc` declenche alors le job `forward_master_manual_changes`, qui tente de reporter automatiquement la partie non generee vers :

- `hotfix`
- `develop`

Le job :

- applique uniquement les changements non generes ;
- ignore la doc generee ;
- conserve la ligne `version:` propre a chaque branche ;
- enregistre aussi l'ascendance de `master` avec un merge `ours` ;
- echoue en cas de conflit ou de push refuse.

Le secret CircleCI requis pour pousser est :

```text
DOC_FLOW_GITHUB_TOKEN
```

Le token GitHub doit avoir, sur `convertigo/convertigo-doc`, au minimum :

- `Contents: Read and write`
- `Metadata: Read-only`

## Release mineure

Une release mineure publie `hotfix` vers `master`, puis garde `develop` au courant de cette publication.

Preparer :

```sh
git switch master
git fetch --prune origin
.circleci/doc-flow.sh audit
```

Publier :

```sh
.circleci/doc-flow.sh release-minor
```

Ce que fait le helper :

```sh
git checkout -B master origin/master
git merge --ff-only origin/hotfix
git push origin HEAD:master

git checkout -B develop origin/develop
git merge -s ours --no-edit master
git push origin HEAD:develop
```

Si `master` ne peut pas fast-forward vers `hotfix`, le helper s'arrete.

## Release majeure

Une release majeure publie `develop` vers `master`, puis realigne `hotfix` sur le nouveau `master`.

Preparer :

```sh
git switch master
git fetch --prune origin
.circleci/doc-flow.sh audit
```

Publier :

```sh
DOC_FLOW_CONFIRM_RESET_HOTFIX=1 .circleci/doc-flow.sh release-major
```

Ce que fait le helper :

```sh
git checkout -B master origin/master
git merge --ff-only origin/develop
git push origin HEAD:master

git checkout -B hotfix origin/hotfix
git reset --hard master
git push --force-with-lease origin HEAD:hotfix
```

Le reset de `hotfix` est volontairement protege par `DOC_FLOW_CONFIRM_RESET_HOTFIX=1`.

## Build de documentation

Les builds Convertigo continuent de generer et pousser la doc d'objets dans la branche correspondante :

- Convertigo `hotfix` -> `convertigo-doc` `hotfix`
- Convertigo `develop` -> `convertigo-doc` `develop`

Ces builds ne font pas les merges de release. Ils ne doivent gerer que la partie generee.

## Verification apres release

Verifier les pipelines CircleCI :

- `master` doit etre vert et publier `latest`.
- `hotfix` doit rester vert.
- `develop` doit rester vert.

Verifier aussi les URLs publiques :

```text
http://c8o-documentation.s3-website.eu-west-3.amazonaws.com/documentation/latest/
http://c8o-documentation.s3-website.eu-west-3.amazonaws.com/documentation/hotfix/
http://c8o-documentation.s3-website.eu-west-3.amazonaws.com/documentation/develop/
```

## Commandes utiles

Afficher l'aide :

```sh
.circleci/doc-flow.sh --help
```

Voir les differences non generees entre branches :

```sh
.circleci/doc-flow.sh audit
```

Reporter manuellement les changements non generes de `master` vers `hotfix` et `develop` :

```sh
.circleci/doc-flow.sh forward-master
```

Cette commande est normalement lancee automatiquement par CircleCI sur chaque push `master`.
