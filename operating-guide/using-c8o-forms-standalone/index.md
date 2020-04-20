---
title: Using  Convertigo Form Builder Standalone
keywords: pages, authoring, exclusion, frontmatter
last_updated: 17/04/2020
summary: "This chapter describes how to install Convertigo Form Builder Standalone on premise"
sidebar: c8o_sidebar
permalink: /operating-guide/using-c8o-forms-standalone/
---

#  Convertigo Form Builder Standalone

This a is the dockerized version of Convertigo forms that able you to run it on premises.

- [Convertigo Form Builder Standalone](#c8o-forms-standalone)
  - [Pre-requisites](#pre-requisites)
  - [Installation guide](#installation-guide)
  - [Environnement](#environnement)
    - [Convertigo Form Builder](#c8oforms)
    - [Convertigo Server](#convertigo-server)
    - [Couchdb fauxton](#couchdb-fauxton)
    - [Workspace](#workspace)
  - [Create a new Convertigo Form Builder account](#create-a-new-c8oforms-account)
  - [Authentication Active directory](#authentication-active-directory)

## Pre-requisites
Linux platform is recommended.

* You need to have access to internet
* You need to install:
  * Docker Engine<br>[Install Docker Engine on CentOS](https://docs.docker.com/engine/install/centos/)<br> [Install Docker Engine on Debian](https://docs.docker.com/engine/install/debian/)<br>[Install Docker Engine on Fedora](https://docs.docker.com/engine/install/fedora/)<br>[Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)<br>
  * Docker Compose<br>[Install Docker Compose on Linux systems](https://docs.docker.com/compose/install/#install-compose-on-linux-systems)

 
## Installation guide 

First of all, extract tar.gz (This file is given by a download link in a message) :
```shell
$ tar -xzvf c8oforms_standalone.tar.gz
```
{{site.data.alerts.note}}
A <em>c8oforms_standalone</em> sub-folder is created after the <em>tar</em> command.
{{site.data.alerts.end}}


Then, start docker as a deamon :
 ```shell
$ systemctl start docker
```
Then, make sure you have correct permissions on folder _c8oforms_standalone_ (read/write/execute)

 ```shell
$ sudo chmod -R 777 ./c8oforms_standalone
```
Then, navigate to folder, and start-up docker :
```shell
$ cd c8oforms_standalone
$ docker-compose up -d
```
When its done, on first launch you must configure **couchdb**. You can either use _init_couchdb.sh_ that configure for you automatically **couchdb** in single-node mode :
```shell
$ ./init_couchdb.sh
```
You can also configure it by using [fauxton](#couchdb-fauxton).

You have to wait about 5 minutes for the environment to finish setting up to start.

Go to [Convertigo administration](../using-convertigo-administration-console/#projects-page), into projects to check that all projects has been loaded.
After 5 minutes you must see following projects:

{% include image.html file="guide_img/projectsPageForms.png" caption="Figure: Projects Forms" %}

Convertigo projects used by **Convertigo Form Builder** are:

- C8Oforms
- lib_ExtendedComponents
- lib_FullSyncGrp
- lib_UserManager
- lib_OAuth

To shutdown docker,and stop **Convertigo Form Builder**, run:
```shell
$ docker-compose down
```


## Environment
### Convertigo Form Builder
  - Connect to url: [http://**your_server**:28080/convertigo/projects/C8Oforms/DisplayObjects/mobile/index.html](http://localhost:28080/convertigo/projects/C8Oforms/DisplayObjects/mobile/index.html)
  - To login into **FORMS** you can either [create a new account](#create-a-new-c8oforms-account) or [setup authentication with active directory](#authentication-active-directory)

### Convertigo Server

  - root url: [http://**your_server**:28080/convertigo/](http://localhost:28080/convertigo/)
  - administration url: [http://**your_server**:28080/convertigo/admin/main.html](http://localhost:28080/convertigo/admin/main.html)<br>login: _admin_  password: _admin_

### Couchdb fauxton

  - Connect to url: <a href="http://localhost:28081/_utils">http://your_server:28081/_utils</a><br>login: _admin_  password: _fullsyncpassword_

### Workspace

you can find your _workspace_ into folder _c8oforms_standalone_.

## Create a new  Convertigo Form Builder account 
Go to [convertigo administration](../using-convertigo-administration-console/#accessing-the-administration-console) and login,
then navigate to test platform, and click on _lib_UserManager_, execute sequence **AddUser** with user email and password.

{% include image.html file="guide_img/projectsPageCreateAccountForms.png" caption="Figure: CreateAccount Forms" %}



Be careful to use an email like "myemail@mail.com". If you don't, you won't be able to login. 

## Authentication Active directory

{{site.data.alerts.note}}
Before configuring symbols ensure that you have write rights on workspace folder.
{{site.data.alerts.end}}

You have to configure project _lib_UserManager_ .
To do so go to convertigo admin console: http://**your_server**:28080/convertigo/admin/login.html and type [login and password](../using-convertigo-administration-console/#accessing-the-administration-console).
Then, click on project on the left hand side to access to project list view. On the left side of _lib_UserManager_ project, you will se a red warning icon, click on it to create symbols.

{% include image.html file="guide_img/UserManagerForms.png" caption="Figure: Symbols UserManager 1" %}

Now that its done, click on symbols on the left hand side.

{% include image.html file="guide_img/UserManagerSymbols.png" caption="Figure: Symbols UserManager 2" %}


You will have to define 3 symbols:  
* lib_UserManager.adminUser
  * This user must be an active directory account, who has at least read only access right, and so can execute research on whole tree (expected synthax is DOMAIN_NAME\USER)
* lib_UserManager.adminPassword.secret
  * Password of our active directory user
* lib_UserManager.ldapServer
  * Url of LDAP server such as ldap://**LDAP_SERVER**:389
