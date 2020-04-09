---
title: Installing Convertigo Server
keywords: pages, authoring, exclusion, frontmatter
last_updated: 03/04/2020
summary: "This chapter describes how to install Convertigo Server in several qualified environments and operating systems."
sidebar: c8o_sidebar
permalink: /operating-guide/installing-convertigo-server/
---
This chapter describes how to install Convertigo Server in several qualified environments , operating systems , docker and containers.

## General purpose and packages

Convertigo Server can be installed on different operating systems and application servers. The installation can be done on Windows or Linux operating systems and application container technology. 

Convertigo Server installation is available as 2 packaging types  :<br>

* convertigo-X.Y.Z.war file
* docker images

### Convertigo war file

Convertigo war file can be used with application servers in 64bits environments. It can be installed on Apache Tomcat. The minimum version of java must be 11, and for Tomcat 9.

The war file, convertigo-X.Y.Z.war, is available on [https://github.com/convertigo/convertigo/releases](https://github.com/convertigo/convertigo/releases)

You can use java options to parameter Convertigo at run time.

Table 3 - 1: Specific java options for Convertigo

java option | meaning  
--- | ---
-Dconvertigo.cems.user_workspace_path| Convertigo workspace path<br>Example:<br>_-Dconvertigo.cems.user_workspace_path=<br>/home/convertigoMobilityPlatform/convertigo_<br>[More information on this parameter](../appendixes/#convertigo-workspace)
-Dconvertigo.cems.global_symbols_file| By default the symbols file is located in the ``<absolute_path_to_the_convertigo_workspace_directory>/configuration`` and is named _global_symbols.properties_. With this option, it is possible to specify a different path and name.<br>Example:<br>_-Dconvertigo.cems.global_symbols_file=<br>/opt/convertigo79/global_symbols_Company.properties_<br>[More information on this parameter](../using-convertigo-administration-console/#global-symbols)

All the configuration parameters in the convertigo administration console can be set when launching convertigo.<br>
[Find complete list of Convertigo Java System Properties on this link](../appendixes/#list-of-convertigo-java-system-properties).

### Convertigo docker images

Using docker images from [Convertigo Docker Hub](https://hub.docker.com/_/convertigo) is the easiest way to install the server. By default you will use the official release but at any time you can point on pre-release or previous versions. 

#### minimum Convertigo server

On a linux server with docker installed and running you can start a container with the minimum Convertigo server. Convertigo uses ***images/workspace*** directory to store configuration file and deployed projects as an docker volume.

```shell
$ docker run --name C8O -d -p 28080:28080 convertigo
```

You can access the server admin console on http://[dockerhost]:28080/convertigo and login using the default credentials: admin / admin

#### Link Convertigo to a CouchDB database for FullSync 


If you need fullsync functions, Convertigo FullSync module uses Apache CouchDB as NoSQL repository. You can use the couchdb docker image and link to it Convertigo this way:

Launch CouchDB container and name it ***fullsync***

```shell
$ docker run -d --name fullsync couchdb:2.3.1
```

Then launch Convertigo and link it to the running ***fullsync*** container. Convertigo server will automatically uses it as its fullsync repository.

```shell
$ docker run -d --name C8O --link fullsync:couchdb -p 28080:28080 convertigo
```
#### Link Convertigo to a Billing & Analytics database

MySQL is the recommended database for holding Convertigo MBaaS server analytics. You can use this command to run convertigo and link it to a running MySQL container. Change [mysql-container] to the container name, and [username for the c8oAnalytics db], [password for specified db user] with the values for your MySQL configuration.

```shell
$ docker run -d --name C8O --link [mysql-container]:mysql -p 28080:28080                             \
-e JAVA_OPTS="-Dconvertigo.engine.billing.enabled=true                                           \ 
        -Dconvertigo.engine.billing.persistence.jdbc.username=[username for the c8oAnalytics db] \
        -Dconvertigo.engine.billing.persistence.jdbc.password=[password for specified db user]   \
        -Dconvertigo.engine.billing.persistence.jdbc.url=jdbc:mysql://mysql:3306/c8oAnalytics"   \
convertigo
```
#### Convertigo workspace

Projects are deployed in the Convertigo workspace, a simple file system directory. You can map the docker container /workspace to your physical system by using :

```shell
$ docker run --name C8O -v $(pwd):/workspace -d -p 28080:28080 convertigo
```
You can share the same workspace by all Convertigo containers. In this case, when you deploy a project on a Convertigo container, it will be seen by others. This is the best way to build multi-instance load balanced Convertigo server farms.

#### Security

The default administration account of a Convertigo server is admin / admin and the test platform is anonymous.

These accounts can be configured through the administration console and saved in the workspace or with CONVERTIGO_ADMIN_USER and CONVERTIGO_ADMIN_PASSWORD variables.

You can change the default administration account :

```shell
$ docker run -d --name C8O -e CONVERTIGO_ADMIN_USER=administrator -e CONVERTIGO_ADMIN_PASSWORD=s3cret -p 28080:28080 convertigo
```
You can lock the test platform by setting the account :

```shell
$ docker run -d --name C8O -e CONVERTIGO_TESTPLATFORM_USER=tp_user -e CONVERTIGO_TESTPLATFORM_PASSWORD=s3cret -p 28080:28080 convertigo
```

#### Environment variables

Convertigo is based on a Java process with some defaults JVM options. You can override our defaults JVM options with you own.

Table 3 - 2: Environment variables

 Environment variable | Meaning  
--- | ---  
JAVA_OPTS  |Add any Java JVM options such as -D[something] : <br><br>_$ docker run -d --name C8O -e JAVA_OPTS="-DjvmRoute=server1" -p 28080:28080 convertigo_
JXMX|Convertigo tries to allocate this amount of memory in the container and will automatically reduce it until the value is compatible for the Docker memory constraints. Once the best value found, it is used as -Xmx={JXMX}m parameter for the JVM.<br>The default JXMX value is 2048 and can be defined :<br><br>_$ docker run -d --name C8O -e JXMX="4096" -p 28080:28080 convertigo_
COOKIE_PATH|Convertigo generates a JSESSIONID to maintain the user session and stores in a cookie. The cookie is set for the server path / by default. In case of a front server with multiple services for different paths, you can set a path restriction for the cookie with the JSESSIONID. Just define the COOKIE_PATH environment variable with a compatible path.<br>The default COOKIE_PATH value is / and can be defined this way:<br><br>_$ docker run -d --name C8O -e COOKIE_PATH="/convertigo" -p 28080:28080 convertigo_
COOKIE_SAMESITE|Convertigo use ??.<br><br>The default COOKIE_SAMESITE value is false and can be defined this way: <br /><br>_$ docker run -d --name C8O -e COOKIE_SAMESITE="true" -p 28080:28080 convertigo_

### Pre configurated Docker compose stack

You can use this stack to run a complete Convertigo MBaaS server with FullSync repository and MySQL analytics in a few command lines.

```shell
$ mkdir c8oMBaaS<br>
$ cd c8oMBaaS<br>
$ wget https://raw.githubusercontent.com/convertigo/docker/master/compose/mbaas/docker-compose.yml
$ docker-compose up -d
```