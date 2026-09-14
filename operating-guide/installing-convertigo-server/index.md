---
title: Installing Convertigo Server
keywords: pages, authoring, exclusion, frontmatter
last_updated: 14/09/2026
summary: "This chapter describes how to install Convertigo Server in several qualified environments and operating systems."
sidebar: c8o_sidebar
permalink: /operating-guide/installing-convertigo-server/
---
This chapter describes how to install Convertigo Server in several qualified environments , operating systems , docker and Kubernetes.

## General purpose and packages

Convertigo Server can be installed on different operating systems and application servers. The installation can be done on Windows or Linux operating systems and Kubernetes.

Convertigo Server installation is available as 2 packaging types  :<br>

* convertigo-X.Y.Z.war file
* docker images

### Convertigo war file

Convertigo war file can be used with application servers in 64bits environments. It can be installed on Apache Tomcat 9. The minimum version of Java is 17 (the official Docker image runs on a Temurin JDK 25).

The war file, convertigo-X.Y.Z.war, is available on [https://github.com/convertigo/convertigo/releases](https://github.com/convertigo/convertigo/releases)

You can use java options to parameter Convertigo at run time.

Table 3 - 1: Specific java options for Convertigo

java option | description  
--- | ---
-Dconvertigo.cems.user_workspace_path| Convertigo workspace path<br>Example:<br>_-Dconvertigo.cems.user_workspace_path=<br>/home/convertigoMobilityPlatform/convertigo_<br>[More information on this parameter](../appendixes/#convertigo-workspace)
-Dconvertigo.cems.global_symbols_file| By default the symbols file is located in the ``<absolute_path_to_the_convertigo_workspace_directory>/configuration`` and is named _global_symbols.properties_. With this option, it is possible to specify a different path and name.<br>Example:<br>_-Dconvertigo.cems.global_symbols_file=<br>/opt/convertigo79/global_symbols_Company.properties_<br>[More information on this parameter](../using-convertigo-administration-console/#global-symbols)

All the configuration parameters in the Convertigo administration console can be set when launching Convertigo.<br>
[Find complete list of Convertigo Java System Properties on this link](../appendixes/#list-of-convertigo-java-system-properties).

### Convertigo docker images

Using docker images from the official [Docker Hub image](https://hub.docker.com/_/convertigo) is the easiest way to install the server. By default you will use the official release but at any time you can point on pre-release or previous versions.

The Docker Hub page is the reference documentation of the image: it describes all the supported environment variables, mount points (`/workspace`, `/ssl`) and advanced scenarios. This chapter only presents the most common use cases.

#### minimum Convertigo server

On a linux server with docker installed and running you can start a container with the minimum Convertigo server. Convertigo uses the image ***/workspace*** directory to store configuration file and deployed projects as a docker volume.

```shell
$ docker run --name C8O -d -p 28080:28080 convertigo
```

You can access the server administration console on ***http://[dockerhost]:28080/convertigo*** and login using the default credentials: admin / admin

#### Connect Convertigo to a CouchDB database for FullSync

If you need FullSync functions, Convertigo FullSync module uses Apache CouchDB as NoSQL repository. The recommended way is to run CouchDB in another container on a user-defined Docker network, and to give its URL to Convertigo with the `convertigo.engine.fullsync.couch.url` property:

```shell
$ docker network create c8o-net
$ docker run -d --name fullsync --network c8o-net couchdb:3.2.2
$ docker run -d --name C8O --network c8o-net \
    -e JAVA_OPTS="-Dconvertigo.engine.fullsync.couch.url=http://fullsync:5984" \
    -p 28080:28080 convertigo
```

If CouchDB runs directly on the Docker host, use `http://host.docker.internal:5984` as URL (on Docker Engine for Linux, add `--add-host host.docker.internal:host-gateway`).

{{site.data.alerts.note}}
The legacy <code>--link fullsync:couchdb</code> option may still work but is no longer the recommended Docker approach. For tests only, the embedded PouchDB engine can be enabled with <code>-Dconvertigo.engine.fullsync.pouchdb=true</code> (Internet access is required).
{{site.data.alerts.end}}

#### Connect Convertigo to a Billing & Analytics database

MySQL (or MariaDB) is the recommended database for holding Convertigo server analytics. Run the database on the same user-defined Docker network (or use `host.docker.internal` for a database running on the Docker host) and configure the analytics properties. Change [username for the c8oAnalytics db] and [password for specified db user] with the values for your database configuration.

```shell
$ docker run -d --name C8O --network c8o-net -p 28080:28080 \
-e JAVA_OPTS="-Dconvertigo.engine.billing.enabled=true \
        -Dconvertigo.engine.billing.persistence.jdbc.username=[username for the c8oAnalytics db] \
        -Dconvertigo.engine.billing.persistence.jdbc.password=[password for specified db user] \
        -Dconvertigo.engine.billing.persistence.jdbc.url=jdbc:mysql://mysql:3306/c8oAnalytics" \
convertigo
```

#### Convertigo workspace

Projects are deployed in the Convertigo workspace, a simple file system directory. You can map the docker container /workspace to your physical system by using :

```shell
$ docker run --name C8O -v $(pwd):/workspace -d -p 28080:28080 convertigo
```

You can share the same workspace by all Convertigo containers. In this case, when you deploy a project on a Convertigo container, it will be seen by others. This is the best way to build multi-instance load balanced Convertigo server farms. Be sure to have a really fast file sharing between instances.

Since Convertigo 8.4.2, instances sharing the same workspace can also apply administration changes at runtime without restarting every instance (project deploy, import from URL or delete, global symbols, engine properties and logger levels, users and roles, cache configuration and clear). This synchronization is disabled by default and must only be enabled when all instances really share the same workspace:

```shell
-Dconvertigo.engine.session.shared_workspace.sync.enabled=true
```

The shared workspace is intended for projects and configuration. Logs and file cache must not be shared between instances, so use instance-specific paths:

```shell
$ docker run --name C8O1 -v /my-shared-workspace:/workspace -d -p 28081:28080 \
    -e JAVA_OPTS="-Dconvertigo.engine.session.shared_workspace.sync.enabled=true \
                  -Dconvertigo.engine.cache_manager.filecache.directory=/workspace/cache/server1 \
                  -Dlog.directory=/workspace/logs/server1" \
    convertigo
```

#### Add custom Java libraries or classes

At each container start, the image copies the contents of `/workspace/lib/` into `WEB-INF/lib/` (JAR files, for example JDBC drivers) and the contents of `/workspace/classes/` into `WEB-INF/classes/` (compiled classes, keeping the package directory structure) before Tomcat starts. Restart or recreate the container after adding or updating these files.

#### Migrate from an earlier version of Convertigo

* Stop the container to perform a backup. And just back the workspace directory. This will backup all the projects definitions and some project data.
* Start a new Convertigo docker container mapping the workspace
* All the workspace (projects) will be automatically migrated to the new Convertigo version

#### Security

The default administration account of a Convertigo server is admin / admin.

These accounts can be configured through the administration console and saved in the workspace or with the `CONVERTIGO_ADMIN_USER` and `CONVERTIGO_ADMIN_PASSWORD` variables:

```shell
$ docker run -d --name C8O -e CONVERTIGO_ADMIN_USER=administrator -e CONVERTIGO_ADMIN_PASSWORD=s3cret -p 28080:28080 convertigo
```

These variables are startup conveniences: if `/workspace/configuration/engine.properties` already defines `admin.username` or `admin.password`, the matching environment variable is ignored to preserve the persisted configuration.

Access to the Dashboard (the page listing the deployed projects and their requestables, formerly known as the Test Platform) requires an authenticated user by default. You can allow anonymous access with the `CONVERTIGO_ANONYMOUS_DASHBOARD` variable:

```shell
$ docker run -d --name C8O -e CONVERTIGO_ANONYMOUS_DASHBOARD=true -p 28080:28080 convertigo
```

Since Convertigo 8.4.3, for production CORS configuration, you can replace the default `cors.policy` behavior (`=Origin`, which reflects the client `Origin` header) with an explicit list of public origins using the `PUBLIC_DOMAINS` variable. Values must match the full browser `Origin` header, including scheme and optional port; multiple origins are separated with `#`:

```shell
$ docker run -d --name C8O -e PUBLIC_DOMAINS="https://app.example.com#https://admin.example.com" -p 28080:28080 convertigo
```

Also since 8.4.3, administration responses include safer default security headers, and hardened deployments can hide the product version from unauthenticated responses and generated API specifications with `-Dconvertigo.engine.hide_product_version_in_api_specs=true`.

#### HTTPS / SSL configuration

In many cases, the Convertigo instance is behind a reverse proxy that handles HTTPS. The container can also serve HTTPS itself on port `28443` when a certificate is provided: mount a folder containing `key.pem`, `cert.pem` (and optionally `chain.pem`) on `/ssl`, or pass their base64 content with the `SSL_KEY_B64`, `SSL_CERT_B64` and `SSL_CHAIN_B64` variables. For tests, `SSL_SELFSIGNED=<hostname>` generates a self-signed certificate at first start.

```shell
$ docker run -d --name C8O -v <my SSL folder>:/ssl -p 28080:28080 -p 28443:28443 convertigo
```

#### Environment variables

Convertigo is based on a Java process with some default JVM options. The most common environment variables are listed below; the complete and up-to-date list is available on the [official Docker Hub image page](https://hub.docker.com/_/convertigo).

Table 3 - 2: Environment variables

 Environment variable | Description
--- | ---
JAVA_OPTS | Add any Java JVM options such as -D[something] (the image keeps its required runtime options): <br><br>_$ docker run -d --name C8O -e JAVA_OPTS="-DjvmRoute=server1" -p 28080:28080 convertigo_<br>All the configuration parameters in the Convertigo administration console can be set when running docker, with the `-Dconvertigo.engine.` prefix.<br>[Find complete list of Convertigo Java System Properties on this link](../appendixes/#list-of-convertigo-java-system-properties).
JXMX | Defines the JVM heap size in MiB: the image adds `-Xms128m -Xmx${JXMX}m` to the JVM options. When JXMX is not set, the image uses `-XX:MaxRAMPercentage=80` instead, so the heap is sized from the container memory limit. Make sure the container memory limit leaves room for memory outside the Java heap.<br><br>_$ docker run -d --name C8O -e JXMX="4096" -p 28080:28080 convertigo_
LOG_STDOUT / LOG_FILE | Set `LOG_STDOUT=true` to also write the engine logs to the container standard output (default `false`). Set `LOG_FILE=false` to disable the `engine.log` file.<br><br>_$ docker run -d --name C8O -e LOG_STDOUT=true -e LOG_FILE=false -p 28080:28080 convertigo_
COOKIE_PATH | Convertigo generates a JSESSIONID to maintain the user session and stores it in a cookie. The cookie is set for the server path `/` by default. In case of a front server with multiple services for different paths, you can set a path restriction for the cookie.<br><br>_$ docker run -d --name C8O -e COOKIE_PATH="/convertigo" -p 28080:28080 convertigo_
COOKIE_SECURE | Adds the `Secure` flag to the session cookie (default `false`), for deployments behind an HTTPS front. Once enabled, sessions do not work through a plain HTTP connection. Cookies are automatically `Secure` on the HTTPS 28443 port.
COOKIE_SAMESITE | Allow to configure the SameSite parameter for generated cookies. Can be empty, "none", "lax" or "strict". The default value is empty.<br><br>_$ docker run -d --name C8O -e COOKIE_SAMESITE=lax -p 28080:28080 convertigo_
SESSION_TIMEOUT | Default Tomcat session timeout in minutes, used for non-project calls (Administration console, FullSync...). Project calls (Sequence, Transaction...) override it. The default value is 30.
CONVERTIGO_ADMIN_USER / CONVERTIGO_ADMIN_PASSWORD | Initial administration account, see [Security](#security).
CONVERTIGO_ANONYMOUS_DASHBOARD | Allows anonymous access to `/convertigo/dashboard/`, see [Security](#security).
PUBLIC_DOMAINS | Explicit list of public CORS origins, see [Security](#security).
SSL_KEY_B64 / SSL_CERT_B64 / SSL_CHAIN_B64 / SSL_SELFSIGNED | HTTPS configuration, see [HTTPS / SSL configuration](#https--ssl-configuration).

### Pre configurated Docker compose stack

You can use this stack to run a complete Convertigo server with FullSync repository and MySQL analytics in a few command lines (see the [compose branch README](https://github.com/convertigo/docker/tree/compose) for details):

```shell
$ mkdir convertigo
$ cd convertigo
$ curl -sL https://github.com/convertigo/docker/archive/refs/heads/compose.tar.gz | tar xvz --strip-components=1
$ docker compose up -d
```

### Use Convertigo with Kubernetes

The recommended way to deploy Convertigo on Kubernetes is the official Helm chart, published on [ArtifactHub](https://artifacthub.io/packages/helm/convertigo/convertigo). The chart deploys the Convertigo workers with their shared workspace, an ingress, and optionally the bundled CouchDB (FullSync), Redis (stateless sessions), MariaDB (analytics), Baserow and the No Code Studio. Its README on ArtifactHub is the reference for all the available values.

```shell
$ helm repo add convertigo https://convertigo-helm-charts.s3.eu-west-3.amazonaws.com
$ helm install [RELEASE NAME] convertigo/convertigo --version x.y.z -f values.yaml
```

The main values to review before installing are:

Table 3 - 3: Main Helm chart values

Value | Description
--- | ---
replicaCount | Number of Convertigo workers. One worker handles from 100 to 200 simultaneous users.
image.tag / image.jxmx | Convertigo image version and Java heap size (MB) of a worker pod.
publicAddr / publicUrl / publicDomains | Public hostname and origin used by the ingress and injected as `PUBLIC_DOMAINS` for CORS.
sessionStore.mode | `tomcat` (sticky sessions), `redis` (stateless sessions, with the embedded or an external Redis, optionally with TLS/mTLS) or `auto`.
sharedWorkspaceSync.enabled | Enables the runtime synchronization between workers sharing the same `ReadWriteMany` workspace (recommended for multi-replica deployments).
couchdb.* / redis.* / mariadb.* | Enable the bundled components, or point to external services (`couchdb.urlOverride`, `sessionStore.redis.*`, ...).
additionalJavaOpts | Extra lines appended to `JAVA_OPTS`, to set any [Convertigo Java System Property](../appendixes/#list-of-convertigo-java-system-properties).

If you write your own manifests instead of using the chart, keep in mind that:

- Convertigo workers must share the same `/workspace` volume (`ReadWriteMany`) to see the same projects and configuration, and should enable `-Dconvertigo.engine.session.shared_workspace.sync.enabled=true` (8.4.2 and later);
- logs and file cache must stay pod-local, for example with `-Dlog.directory=/tmp/convertigo-logs` and `-Dconvertigo.engine.cache_manager.filecache.directory=/tmp/convertigo-cache`;
- credentials (administration account, databases, CouchDB) should be provided through Kubernetes Secrets rather than in clear text in `JAVA_OPTS`;
- use the current `apps/v1` API for `Deployment` or `StatefulSet` objects, and expose the container port `28080` through a `Service` and an ingress terminating HTTPS.

{{site.data.alerts.note}}
Whatever the deployment method, all the Convertigo options defined <a href="../appendixes/#list-of-convertigo-java-system-properties">on this link</a> can be set in the <code>JAVA_OPTS</code> environment variable of the container.
{{site.data.alerts.end}}
