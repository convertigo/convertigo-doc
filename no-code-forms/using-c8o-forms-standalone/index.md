---
title: Installing Convertigo No Code Studio Standalone
keywords: pages, authoring, exclusion, frontmatter, GDPR, RGPD 
last_updated: 17/04/2020
summary: "This chapter describes how to install Convertigo No Code StudioStandalone on premises"
sidebar: c8o_sidebar
permalink: /no-code-forms/using-c8o-forms-standalone/
---

#  Convertigo No Code Studio Standalone

This a is the dockerized version of Convertigo No Code Studio that enables you to run it on premises.

## Pre-requisites
Linux platform is recommended.

* You need to have access to internet
* You need to install:
  * Docker Engine<br>[Install Docker Engine on CentOS](https://docs.docker.com/engine/install/centos/)<br> [Install Docker Engine on Debian](https://docs.docker.com/engine/install/debian/)<br>[Install Docker Engine on Fedora](https://docs.docker.com/engine/install/fedora/)<br>[Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)<br>
  * Docker Compose<br>[Install Docker Compose on Linux systems](https://docs.docker.com/compose/install/#install-compose-on-linux-systems)
 * You need at least 2 GB of disk space. 20 GB is recommended.
 * For CENTOS 7 you must enable user namespaces in kernel to support PWA creations
     * Add `user.max_user_namespaces=28633` to `/etc/sysctl.conf` (or `/etc/sysctl.d`) 
     * And then run 
       ```shell
       $ sudo sysctl --system
       ```
     * For older release than CENTOS 7.7, you have to run additional commands
       ```shell
       $ sudo grubby --update-kernel=ALL --args="user_namespace.enable=1"
       $ reboot
       ```
 
## Installation guide 

You can access the No Code Studio Releases [here](https://github.com/convertigo/C8oForms/releases)

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
Then, navigate to folder
```shell
$ cd c8oforms_standalone
```

and edit the .env file 
```shell
$ nano .env
```

Check that 
```shell
COUCHDB_ENABLE=1
HTTPD_ENABLE=1
BASEROW_ENABLE=1
```

Edit the PUBLIC_HOSTNAME to the DNS host name users will type in their browser URL field. for example http://my.dns.name, replace with your real server DNS name. This must not be localhost and is mandatory.
```shell
PUBLIC_HOSTNAME=my.dns.name
```

### Configure BR email notification system

No Code Studio uses BR notifications for No Code Databases workspace sharing. Configure this in the **.env** file as is :


Name	| Description	 | Defaults
------| ------------ |------------
FROM_EMAIL	| The email address BR  will send emails from. |	
EMAIL_SMTP	|If set to any non empty value then BR  will start sending emails using the configuration options below. If not set then BR  will not send emails and just log them to the Celery worker logs instead.	
EMAIL_SMTP_USE_TLS	| If set to any non empty value then BR  will attempt to send emails using TLS.Whether to use a TLS (secure) connection when talking to the SMTP server. This is used for explicit TLS connections, generally on port 587. If you are experiencing hanging connections, see the implicit TLS setting EMAIL_SMTP_USE_SSL.	
EMAIL_SMTP_USE_SSL |	If set to any non empty value then an implicit TLS (secure) connection will be used when talking to the SMTP server. In most email documentation this type of TLS connection is referred to as SSL. It is generally used on port 465. If you are experiencing problems, see the explicit TLS setting EMAIL_SMTP_USE_TLS. Note that EMAIL_SMTP_USE_TLS/EMAIL_SMTP_USE_SSL are mutually exclusive, so only set one of those settings to True.	
EMAIL_SMTP_HOST	| The host of the external SMTP server that BR  should use to send emails.	
EMAIL_SMTP_PORT	| The port used to connect to $EMAIL_SMTP_HOST on.	
EMAIL_SMTP_USER	| The username to authenticate with $EMAIL_SMTP_HOST when sending emails.	
EMAIL_SMTP_PASSWORD |	The password to authenticate with $EMAIL_SMTP_HOST when sending emails.	
EMAIL_SMTP_SSL_CERTFILE_PATH	| If EMAIL_SMTP_USE_SSL or EMAIL_SMTP_USE_TLS is set, you can optionally specify the path to a PEM-formatted certificate chain file to use for the SSL connection. If using docker then you will need to mount in this file into all the BR  backend containers.	
EMAIL_SMTP_SSL_KEYFILE_PATH	|EMAIL_SMTP_USE_SSL or EMAIL_SMTP_USE_TLS is set, you can optionally specify the path to a PEM-formatted private key file to use for the SSL connection. If using docker then you will need to mount in this file into all the BR  backend containers. Note that setting EMAIL_SMTP_SSL_CERTFILE_PATH and EMAIL_SMTP_SSL_KEYFILE_PATH doesn’t result in any certificate checking. They’re passed to the underlying SSL connection. Please refer to the documentation of Python’s ssl.wrap_socket() function for details on how the certificate chain file and private key file are handled.	

Now Start the Convertigo stack  **Convertigo With No Code Studio**, run:
```shell
$ docker-compose up -d
```

You have to wait a couple of minutes for the environment to finish setting up to start.
After several minutes Go to Convertigo system administration (http://my.dns.name/convertigo) and login using
 * user: admin
 * password admin

To shutdown docker,and stop **Convertigo No Code Studio**, run:
```shell
$ docker-compose down
```

## Update guide ##
You can access the No Code Studio Repository [here :](https://github.com/convertigo/C8oForms/releases).

First of all, downlaod C8Oforms.car, and then Go to [Convertigo administration](../using-convertigo-administration-console/#projects-page), into projects to import your C8oForms.car

Click on Deploy a project, and then browse file on your system.

{% include image.html file="guide_img/projectsPageForms_update.PNG" caption="Figure: Deploy a project" %}


## Environment
### Convertigo No Code Studio
  - Connect to url: [http://**my.dns.name**/convertigo/projects/C8Oforms/DisplayObjects/mobile/index.html](http://my.dns.name/convertigo/projects/C8Oforms/DisplayObjects/mobile/index.html)
  - To login into **Convertigo No Code Studio** you can either [create a new account](#create-a-new-c8oforms-account) or [setup authentication with active directory](#authentication-active-directory) or setup authentication with [Google, Microsoft or OpenID](#authenticating-with-oauth-or-openid)


### Convertigo Server admin console

  - Administration url: [http://**my.dns.name**/convertigo/admin/main.html](http://my.dns.name/convertigo/admin/main.html)<br>login: _admin_  password: _admin_


### Workspace

  - You can find your _workspace_ into folder _c8oforms_standalone/workspace_.
  - This workspace contains all Convertigo user data: the projects, the configuration files, the logs, etc.

## Create a new  Convertigo No Code Studio account 
Go to [convertigo administration](../using-convertigo-administration-console/#accessing-the-administration-console) and login,
then navigate to test platform, and click on _lib_UserManager_, execute sequence **AddUser** with user email and password.

{% include image.html file="guide_img/projectsPageCreateAccountForms.png" caption="Figure: CreateAccount Form Builder" %}

Be careful to use an email like "myemail@mail.com". If you don't, you won't be able to login. 

## Authentication Active directory
{{site.data.alerts.note}}
Before configuring symbols ensure that you have write rights on workspace folder.
{{site.data.alerts.end}}

You have to configure project _lib_UserManager_ .
To do so go to convertigo admin console: http://**my.dns.name**/convertigo/admin/login.html and type [login and password](../using-convertigo-administration-console/#accessing-the-administration-console).
Then, click on project on the left hand side to access to project list view. On the left side of _lib_UserManager_ and _C8Oforms_ projects, you will se a red warning icon, click on it to create symbols.

{% include image.html file="guide_img/UserManagerForms.png" caption="Figure: Symbols UserManager 1" %}

Now that its done, click on symbols on the left hand side.

{% include image.html file="guide_img/UserManagerSymbols.png" caption="Figure: Symbols UserManager 2" %}

## Authenticating with LDAP or Entra ID (Azure AD)
Relevant symbols for LDAP or Entra ID (Azure AD) configuration:

| Symbol | Description | Example |
| --- | --- | --- |
| `C8Oforms.useGenericLDAP` | Use LDAP login instead of AD login |  |
| `C8Oforms.loginAdLabel` | Customize login page label to replace "Login with Active directory" |  |
| `C8Oforms.loginAdGroup` | This group, is used to determine if an active directory user will be able to connect to _No Code Studio_. If symbol is empty, any Active directory user will have acess to _Convertigo Forms_, but if symbol is defined, only users that are members of this group will have acess to _NoCode Studio_. |  |
| `lib_UserManager.adminUser` | Service account user used to search users |  |
| `lib_UserManager.adminPassword.secret` | Service account password used to search users |  |
| `lib_UserManager.ldapServer` | URL to LDAP server | ldap://localhost:389 |
| `lib_UserManager.ldapBasePath` | Base path used to search LDAP user account | dc=gov |
| `lib_UserManager.ldapDomainName` | Domain name to prefix to user in case of azure AD | \gov |
| `lib_UserManager.LDAP_USER_ID_ATTRIBUTE` | User ID attribute to search | uid |
| `lib_UserManager.LDAP_GROUP_OBJECT_CLASS` | Object class identifying groups | group |
| `lib_UserManager.ldapBasePathGroup` | Base path used to search for LDAP groups | ou=fr,dc=gov |
| `lib_UserManager.LDAP_GROUP_DISPLAY_ATTRIBUTE` | The display name attribute for groups | cn |



## Authenticating with OAuth or OpenID

_NoCode Studio_ supports OAuth SSO. to set it up configure the following symbols :

**For Microsoft AzureAD (Entra ID)**

Symbol | Sample Value | Desciption
-------|-------|-----------
lib_oauth.azuread.clientid|XXX    | The EntraID (AzureAD) cliend ID
lib_oauth.azuread.tenantid|common | The EntraID tenant ID

**For GitHub OAuth :**

Symbol | Sample Value | Desciption
-------|-------|-----------
lib_oauth.github.clientid| XXXX | The GitHub Client id
lib_oauth.github.keysecret.secret|XXX | The GitHub client secret

**For Google OAuth :**

Symbol | Sample Value | Desciption
-------|-------|-----------
lib_oauth.google.clientid| XXXX | The Google Client ID
lib_oauth.google.keysecret.secret| XXX | The Google Client Secret

**For Linkedin:**

| Symbol | Sample Value | Desciption  |
| -------- | ------------ | ----------- |
| lib_oauth.linkedin.clientid | XXXX | The Linkedin Client ID |
| lib_oauth.linkedin.keysecret.secret | XXXX | The Linkedin Client Secret |

**For OpenID :**

Symbol | Sample Value | Desciption
-------|-------|-----------
lib_oauth.openid.clientid|   XXXX | The OpenID Client ID
lib_oauth.openid.clientsecret.secret| XXXX | The OpenID client secret
lib_oauth.openid.endpoint| https\://api.login.yahoo.com/oauth2/request_auth | The URL to the end point
lib_oauth.openid.instrospect_url| https\://openid_introspect_url | An optional introspect URL

## Backup

Directories to save in the event of a machine crash :

- All the _workspace_ directory except logs folder. This contains all the specifics parameters as well as the symbols set.
- All the _couchdb_ directory. This directory contains all the databases used for Convertigo No Code Studio. In particular the definitions of forms, users, rights, ... 
- The _tomcat/conf_ directory, only if you have changed the configuration like add a certificate store.

Restoration is easy. It consists of replacing the installed directories with those saved. Note that backup can be done while CouchDB is running see this article in CouhcDB documentation [Couchdb Backups](https://docs.couchdb.org/en/stable/maintenance/backups.html)

## GDPR Compliance

They are two built in features in Convertigo Forms to help you comply with the General Data Protection Regulation - GDPR.

1) You can define a text (HTML is supported) to display in the GDPR menu of the application.

2) You can display a message each time a user creates a form, to make him aware of the GDPR rules.

To do this, Go to [Convertigo administration](../using-convertigo-administration-console/#projects-page), into symbols section, and create the following symbols:

* `C8Oforms.GDRP-MENU` To define the text and show the GDPR menu (1)
* `C8Oforms.GDRP-TOAST` To define and display the message before creating a new form (2)

## Post install Check

Once installed, you can check that everything is ok using this check list 
* Launch the application (url: http://my.dns.name/convertigo/projects/C8Oforms/DisplayObjects/mobile/index.html)
* Log in with an existing AD account (Use DOMAIN\user) or Login in using SSO (Google, OpenID, or Microsoft Entra ID)
* Create a user (Use No Code Studio Admin menu)
* Verify SMTP configuration (Create a sample app with a Submit flow using the Mail Send Action)
* Create an app from a template (Click on one of the application temaplates)
* Check access to No Code (Click on the No Code database tab and check that the Database panel is displayed)
* Publish the application and use it (Using QR Code)
* Export / import the app
