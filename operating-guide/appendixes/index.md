---
title: Operating Guide Appendixes
keywords: pages, authoring, exclusion, frontmatter
last_updated: 14/09/2026
summary: "This chapter contains all appendixes related to the Operating Guide"
sidebar: c8o_sidebar
permalink: /operating-guide/appendixes/
---
## Convertigo Java System Properties

Some Java System Properties can modify the behavior of your Convertigo instance.

All settings of the [Administration Console Configuration](../using-convertigo-administration-console/) page can be overridden by launching’s parameters.

To set a Java System Property when the JVM is launched, just a **-Dconvertigo.engine.{property key}={property value}**.

For servers, this can be done by customize the **JAVA_OPTS** environment variables of launch scripts.

**{property key}={property value}** are exactly the same as the **{convertigo workspace}/configuration/engine.properties** content.

All keys, descriptions and default values are listed in [List of Convertigo Java System Properties](#list-of-convertigo-java-system-properties) below, and can also be found in the [EnginePropertiesManager](https://github.com/convertigo/convertigo/blob/master/engine/src/com/twinsoft/convertigo/engine/EnginePropertiesManager.java) source file.

Example for changing the engine log filename and enabling the log output on the standard console:

{% highlight java %}
export JAVA_OPTS="-Dconvertigo.engine.log4j.appender.CemsAppender.File=/tmp/myConvertigo.log -Dconvertigo.engine.log.stdout.enable=true"
# then run the convertigo server
{% endhighlight %}

{{site.data.alerts.note}}
A property set as a JVM system property takes precedence over the value saved in <code>engine.properties</code>. Since 8.4.3, such overridden properties are flagged with a restart hint in the Configuration page of the Administration Console. With the Docker image, the same properties can be set through the <code>JAVA_OPTS</code> environment variable, see <a href="../installing-convertigo-server/#environment-variables">Installing Convertigo Server</a>.
{{site.data.alerts.end}}

## Convertigo workspace

Convertigo plugin and war contain static data, that are not subject to be modified by the user. All other files are in a user directory: the Convertigo workspace.

This section presents the Convertigo workspace, as well as information about setting this directory or updating it:

### Presentation of Convertigo Workspace

The Convertigo workspace is a directory external to the installation directory into which the user has write permissions. This workspace contains all Convertigo user data: the projects, the configuration files, the logs, etc.

{{site.data.alerts.note}}
In case of a Convertigo Studio, the user is the Convertigo developer running and using the Studio. In case of a Convertigo Server, the user is the logged account running the Server.
{{site.data.alerts.end}}

The default location of the Convertigo workspace depends on the Convertigo type (Studio/Server), the Operating System and the Application Server (for Servers). See the appropriate installation documentation for each case.

The Convertigo workspace contains the following folders and data:

- **cache**: this folder contains the file cache repository, including the cached responses,
- **certificates**: this folder contains the Convertigo installed certificates (client or server),
- **configuration**: this folder contains the configuration files for the Convertigo engine (`engine.properties`, `global_symbols.properties`, `user_roles.db`, ...),
- **databases**: this folder contains HSQLDB databases files,
- **git**: this folder contains the git repositories cloned for referenced projects (see the **Git container** property),
- **logs**: this folder contains the Convertigo engine log files,
- **minime**: this folder contains the default legacy emulator configurations as well as Convertigo licensed keys,
- **projects**: this folder contains the Convertigo projects, 

{{site.data.alerts.important}}
In case of a Convertigo Studio, the configurable workspace folder is the Eclipse workspace, where the projects are located.
That means that the <em>projects</em> folder is empty in the Studio’s Convertigo workspace.
The Studio’s Convertigo workspace, containing all the described folders, is located inside the Eclipse workspace, in the <em>.metadata.pluginscom.twinsoft.convertigo.studio</em> folder.
{{site.data.alerts.end}}

- **studio**: this folder contains some Studio specific configurations.

{{site.data.alerts.important}}
The Convertigo workspace should be different for each installed/running Convertigo: a Studio and a Server should never share a workspace directory. The only supported exception is a farm of identical Servers sharing the same workspace (projects and configuration) on a fast shared file system, with instance-specific cache and log directories; see <a href="../installing-convertigo-server/#convertigo-workspace">Installing Convertigo Server</a>.
{{site.data.alerts.end}}


### Setting Convertigo workspace

It is possible, from Convertigo version 5.1.2, to specify the Convertigo workspace directory. This is done through:

- JVM property
- Installation wizard

#### JVM property

The Convertigo workspace path is provided through a JVM property:

_-Dconvertigo.cems.user_workspace_path= < absolute_path_to_the_convertigo_workspace_directory>_

If this JVM property is not provided, search for a file named .convertigo and located at the root of the user home. It contains a property giving the path to the Convertigo workspace:

_cems.user_workspace_path= < absolute_path_to_the_convertigo_workspace_directory>_

#### Installation wizard

If you are installing Convertigo Studio with installation package (on Windows), the Eclipse workspace path is configurable after installation at the Studio’s first start.

If you are installing Convertigo Server with installation packages (on Windows or on Linux/Tomcat), the Convertigo workspace path is configurable through the installation wizard.

If you are installing convertigo with war file, the Convertigo workspace can be specified, but it depends on the Operating System and the Application Server. Refer to the appropriate installation documentation depending on the Operating System and the Application Server.

### Updating Convertigo workspace

It is possible to update the Convertigo workspace directory after installation, depending on the Operating System and the Application Server. See the appropriate installation documentation depending on the Operating System and the Application Server, or find below other cases.

#### Linux + Websphere configuration

If you are using WebSphere application server, and if you want to change the workspace directory after Convertigo installation, the Convertigo workspace can be specified in WebSphere console.

In left menu, expand **Java and Process management > Process definition** and select **Java Virtual Machine**. Then, edit **Generic JVM arguments** to add:

*-Dconvertigo.cems.user_workspace_path= < absolute_path_to_the_workspace_directory>*

You have to restart WebSphere server for Convertigo to use the new workspace location.

## Connector monitoring window

The Legacy connector monitor is a window that is used for monitoring the screens that are reached by the legacy (Javelin) connectors. It displays a graphical rendering of the legacy connectors currently in use in the active contexts of the Convertigo Server.

It is not instantiated by default after a Convertigo Server installation and has to be activated with the **Display running connectors in monitor of Legacy connectors** option of the Administration Console Configuration page, see [Real-time activity monitoring](../using-convertigo-administration-console/#real-time-activity-monitoring). After restarting the server, the Legacy connector monitor appears on the desktop of the account running the server.

On a Windows server installed as a service, the service has to be authorized to interact with the desktop for the monitor to be displayed (**Log On** tab of the service properties, **Allow service to interact with desktop** option).

{{site.data.alerts.important}}This window must never be closed as it would cause Convertigo Server to be killed. The monitor is not available in Docker or Kubernetes deployments, nor in Convertigo Cloud; use the <b>Trace in logs the screen dumps of the running Legacy connectors</b> option instead.{{site.data.alerts.end}}

{{site.data.alerts.note}}
The HTML connector monitor, the embedded XulRunner and the Xvnc server used by previous versions no longer exist: the HTML connector has been removed from Convertigo Server.
{{site.data.alerts.end}}

## Differences between Convertigo Server and Convertigo Cloud in Administration Console

In Convertigo Cloud, a number of functionalities (pages or configurations) of the Administration Console are not accessible. This appendix lists these differences.

### Pages

The following list shows the pages of the Administration Console that are not available at all in Convertigo Cloud:

- Keys page

### Configuration categories and settings

Configuration page of the Administration Console includes categories, in which is proposed the edition of settings.

This first list shows the categories of Configuration page that are not available at all in Convertigo Cloud's Administration Console:

- Session management category,
- Analytics category,
- FullSync category.

This second list shows the settings that are not available in Convertigo Cloud's Administration Console, from visible categories of Configuration page:

- in Main parameters category:
    - Convertigo Server local URL,
    - Convertigo Server endpoint URL,
    - Enable the compatibility mode for projects data (required for JSP usage); engine restart required,
    - Delegate URL for extra functionality,
    - Automatically GC on low usage (every 10 min),

- in Accounts and security category:
    - Admin username,
    - Admin password,

- in Logs category:
    - Log into files,
    - Log into the standard console output,
    - Default appender, Default appender file, Default appender layout,
    - Audit appender file, Audit appender layout,

- in Real-time activity monitoring category:
    - Display running connectors in monitor of Legacy connectors,

- in Cache category:
    - Cache manager class,
    - File cache directory.

In the [List of Convertigo Java System Properties](#list-of-convertigo-java-system-properties) below, these settings are marked *not available in Convertigo Cloud*.

{{site.data.alerts.note}}
For more information about the pages or settings described in this appendix, <a href="../using-convertigo-administration-console/">see Using Convertigo Administration Console</a>.
{{site.data.alerts.end}}

## Analytics in Convertigo Server

In Convertigo Server, an analytics feature is available.

This section presents the analytics feature, as well as more detailed information:

### Analytics feature

The analytics feature is available in Convertigo Server, as well as for the Convertigo engine embedded in the Studio, but not in Convertigo Cloud. It can be activated in the Configuration page of the Administration Console, in Analytics tab.

The analytics feature consists in writing in a database one entry, also known as **ticket**, for each executed transaction or sequence. This is useful to monitor the Convertigo Server’s activity. The analytics feature produces the raw data, but the management and treatment of these data has to be manually performed and personalized by each Convertigo administrator.

### Ticket content

For each execution of a transaction or sequence, a ticket is inserted in the database. The Ticket table contains the following columns:

Table A - 1: Ticket table columns

Column name | Type | Description
--- | --- | ---
id | bigint(20) PK | The primary key of the record, it is an auto-incremented integer.
clientIp | varchar(255) | The IP address of the client that called the transaction or sequence.<br>In the case of a transaction or sequence called by a Call Transaction or Call Sequence step, the IP address is 127.0.0.1.
connectorName | varchar(255) | The name of the connector containing the executed transaction, in case of a transaction. Empty in the case of a sequence.
connectorType | varchar(255) | The type (the name of the Java class) of the connector containing the executed transaction, in case of a transaction.<br><br> For example: HtmlConnector, JavelinConnector, SqlConnector, HttpConnector, etc.<br><br>Empty in the case of a sequence.
creationDate | bigint(20) | The ticket creation date and time (as a timestamp).
customerName | varchar(255) | Contains a predefined value:<br>• CONVERTIGO Studio in case of an execution in a Studio, or<br>• CONVERTIGO Server in case of an execution in a Server.
projectName | varchar(255) | The name of the project containing the executed transaction or sequence.
requestableName | varchar(255) | The name of the executed transaction or sequence.
requestableType | varchar(255) | The type (the name of the Java class) of the executed transaction or sequence. For example: GenericSequence, HtmlTransaction, JavelinTransaction, SqlTransaction, XmlHttpTransaction, HttpTransaction, etc.
responseTime | bigint(20) | The response return date and time (as a timestamp).
score | bigint(20) | The score calculated for this execution. Depending on the executed object, the score is different and calculated with the following method:<br>• the number of detected screen classes for a transaction executed in one of the connectors with screen classes (Legacy, HTML),<br>• 1 for another transaction execution (SQL, HTTP, ...),<br>• 0 for a sequence execution.
userName | varchar(255) | The username defined for the execution, which is:<br>• the value of the username property set in the context of execution of the transaction or sequence:<br>• set using the expression context.set("username", "value")<br>• retrieved using the expression context.get("username"),<br>• otherwise, the default username configured for the server runtime when no explicit value is set.

## SQL drivers and related jar files

The SQL connector allows to connect to several types of databases. You can refer to the SQL connector documentation in the Reference Manual for more information about SQL connector and its configuration properties.

The type of database accessed by the SQL connector can be configured through the Driver property. Depending on the selected driver, Convertigo can or cannot deliver the needed jar file for execution.

When possible, Convertigo directly delivers the jar file needed to run code for connecting to the database. But sometimes, it is impossible to do so, because this jar file is not free.

In this case, Convertigo provides a fake jar instead, already declared in the software. When trying to execute, a log is displayed in the engine logs to warn you about this.

To run your SQL connector correctly, you only need to get the correct jar file by your own and to make it available to Convertigo:

- the recommended way is to put the jar file in the **libs** folder of the project using the SQL connector: it is packaged and deployed with the project,
- in Convertigo Server running with the Docker image, jar files can also be dropped in the **/workspace/lib** directory: they are copied in the web application at each container start (see [Installing Convertigo Server](../installing-convertigo-server/#add-custom-java-libraries-or-classes)),
- in a war installation, jar files are located in *< Convertigo Server installation folder>/webapps/convertigo/WEB-INF/lib*, and in Convertigo Studio in *< Convertigo Studio installation folder>/plugins/com.twinsoft.convertigo.studio_x.y.z.v12345/lib*; re-start Convertigo (Studio or Server) after adding a jar.

The following table shows the matches between SQL Driver, jar file, and their presence or not in Convertigo for running:

Table A - 2: SQL Drivers and jar files in Convertigo

Driver | Database | jar file | Delivered
--- | --- | --- | ---
org.mariadb.jdbc.Driver | MariaDB database, also usable for MySQL databases | mariadb-java-client | true
com.mysql.cj.jdbc.Driver (com.mysql.jdbc.Driver for older drivers) | MySQL database | mysql-connector-j | false (license restriction, use the MariaDB driver or provide the jar)
org.postgresql.Driver | PostgreSQL database | postgresql | true
net.sourceforge.jtds.jdbc.Driver | Microsoft SQL Server database (jTDS driver) | jtds | true
com.microsoft.sqlserver.jdbc.SQLServerDriver | Microsoft SQL Server database (Microsoft JDBC driver) | mssql-jdbc | false (provide the jar)
oracle.jdbc.driver.OracleDriver | ORACLE database | ojdbc | false (license restriction, provide the jar)
com.ibm.db2.jcc.DB2Driver | IBM DB2 Server database | db2jcc + db2jcc_license | false (license restriction, provide the jars)
com.ibm.as400.access.AS400JDBCDriver | IBM DB2 on AS400 / IBM i database | jt400 | true
org.hsqldb.jdbcDriver | HSQLDB database (used for demos and samples) | hsqldb | true

{{site.data.alerts.note}}
The JDBC-ODBC bridge (<code>sun.jdbc.odbc.JdbcOdbcDriver</code>) was removed from Java 8 and is no longer available. The <b>JNDI</b> mode is also available to use a data source defined in the application server.
{{site.data.alerts.end}}

## List of Convertigo Java System Properties

To set a Java System Property when the JVM is launched, just add -Dconvertigo.engine.{property key}={property value}.

The properties are grouped by category of the Administration Console Configuration page. Advanced properties are the ones displayed in the Advanced properties section of each category. Properties marked *not available in Convertigo Cloud* can only be set on Convertigo Server, see [Differences between Convertigo Server and Convertigo Cloud](#differences-between-convertigo-server-and-convertigo-cloud-in-administration-console).

### Main properties

property key | description | default value
--- | --- | ---
application_server.convertigo.url | Convertigo Server local URL<br>[More information on this parameter](../using-convertigo-administration-console/#Convertigo-Server-local-URL) *(not available in Convertigo Cloud)* | http://localhost:28080/convertigo (18080 in Studio)
application_server.convertigo.endpoint | Convertigo Server endpoint URL<br>[More information on this parameter](../using-convertigo-administration-console/#Convertigo-Server-endpoint-URL) *(not available in Convertigo Cloud)* | 
document.threading.max_worker_threads | Maximum number of worker threads<br>[More information on this parameter](../using-convertigo-administration-console/#Maximum-number-of-worker-threads) | 1000
convertigo.max_context | Maximum number of contexts<br>[More information on this parameter](../using-convertigo-administration-console/#Maximum-number-of-contexts) | 1500
convertigo.git.container | Git container (autoimport)<br>[More information on this parameter](../using-convertigo-administration-console/#Git-container) | {convertigo workspace}/git
convertigo.xsrf.admin | Enable XSRF protection for Administration Console<br>[More information on this parameter](../using-convertigo-administration-console/#Enable-XSRF-Admin) | true
convertigo.xsrf.projects | Enable XSRF protection for projects<br>[More information on this parameter](../using-convertigo-administration-console/#Enable-XSRF-Projects) | false

### Main advanced properties

property key | description | default value
--- | --- | ---
convertigo.product_version_check | Product version check | true
hide_product_version_in_api_specs | Hide product version in generated API specifications | false
document.threading.use_stop_method | Use the Java Thread.stop() method in order to finish threads | false
pool.manager.timeout | Time allowed for pool management task in seconds (-1 for disable) | -1
projects_data.compatibility_mode | Enable the compatibility mode for projects data (required for JSP usage); engine restart required *(not available in Convertigo Cloud)* | false
sequence.steps.use_same_jsession | Use same JSESSIONID for sequences and steps | true
soap.request.add_xml_encoding_charset | Add XML encoding charset for SOAP requests | false
throw_http_500 | Throw HTTP 500 in case of unrecoverable servlet error | false
throw_http_500.soap_fault | Throw HTTP 500 in case of SOAP fault | true
hiding_error_information | Hide all error information | false
show_error_requestable_information | Show error requestable information | true
show_error_context_information | Show error context information | false
show_error_type | Show error type | true
show_error_code | Show error code | true
show_error_message | Show error message | true
show_error_detail | Show error detail | true
show_error_exception | Show error exception | false
show_error_stacktrace | Show error stacktrace | false
project.zip_backup_old | Automatically performs a dated zip backup of replaced projects | false
cors.policy | CORS Policy<br>• empty: disallow all<br>• '=Origin': use client 'Origin' header<br>• 'url1#url2#url3': allow if 'Origin' one of 'url' | =Origin
delegate.url | Delegate URL for extra functionality *(not available in Convertigo Cloud)* | 
auto.gc | Automatically GC on low usage (every 10 min) *(not available in Convertigo Cloud)* | false

### Accounts and security

property key | description | default value
--- | --- | ---
admin.username | Admin username *(not available in Convertigo Cloud)* | admin
admin.password | Admin password *(not available in Convertigo Cloud)* | "admin" hashed (PasswordHash)
anonymous.dashboard | Allow anonymous access to /dashboard | false (true in Studio)
security.filter | Security Filter | false
user.password.regexp | RegularExpression used to validate password change for Admin accounts. | ^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[\w~@#$%^&*+=`\|{}:;!.?\\"()\[\]-]{8,20}$
user.password.instruction | Instruction in case of RegularExpression failure for password change. | must respect at least 1 lowercase, 1 uppercase, 1 digit and between 8-20 characters.

### Logs

property key | description | default value
--- | --- | ---
log4j.logger.cems | Root logger | INFO
log4j.logger.cems.Admin | Admin logger | WARN
log4j.logger.cems.Context.Audit | Audit context logger | INFO
log4j.logger.cems.Beans | Beans logger | INHERITED
log4j.logger.cems.Billers | Billers logger | WARN
log4j.logger.cems.CacheManager | Cache manager logger | WARN
log4j.logger.cems.CertificateManager | Certificate manager logger | WARN
log4j.logger.cems.Context | Context logger | INHERITED
log4j.logger.cems.ContextManager | Context manager logger | WARN
log4j.logger.cems.CouchDbManager | Couch DB manager output logger | WARN
log4j.logger.cems.DatabaseObjectManager | Database objects manager logger | WARN
log4j.logger.cems.Devices | Devices output logger | INFO
log4j.logger.cems.Emulators | Emulators output logger | INFO
log4j.logger.cems.Engine | Engine logger | INHERITED
log4j.logger.cems.JobManager | Job manager logger | WARN
log4j.logger.cems.ProxyManager | Proxy manager logger | INFO
log4j.logger.cems.Redis | Redis session/store logger | WARN
log4j.logger.cems.Scheduler | Scheduler output logger | INFO
log4j.logger.cems.SecurityFilter | Security filter output logger | WARN
log4j.logger.cems.SecurityTokenManager | Security token manager output logger | INFO
log4j.logger.cems.SiteClipper | Site clipper output logger | INFO
log4j.logger.cems.Statistics | Statistics logger | INFO
log4j.logger.cems.Studio | Studio logger | WARN
log4j.logger.cems.TracePlayerManager | Trace player manager logger | WARN
log4j.logger.cems.UsageMonitor | Usage monitor logger | WARN
log4j.logger.cems.Context.User | User context logger | INHERITED
log4j.logger.cems.User | User output logger | INFO
log4j.appender.AuditAppender | Audit appender | org.apache.log4j.RollingFileAppender
log4j.appender.AuditAppender.File | Audit appender file *(not available in Convertigo Cloud)* | ${log.directory}/audit.log
log4j.appender.CemsAppender.File | Default appender file *(not available in Convertigo Cloud)* | ${log.directory}/engine.log

The different available values are : FATAL, ERROR, WARN, INFO, DEBUG, TRACE.
To set INHERITED, put '' (empty). *Inherited from root logger* uses the value from *Root logger*.
[To know how to position these values go on this link](../using-convertigo-administration-console/#logs)

### Logs advanced properties

property key | description | default value
--- | --- | ---
log.file.enable | Log into files *(not available in Convertigo Cloud)* | true
log.stdout.enable | Log into the standard console output *(not available in Convertigo Cloud)* | false
log4j.message.truncate | Maximum number of characters per log message before truncation (-1 means unlimited) | -1 (unlimited)
log4j.appender.AuditAppender.layout | Audit appender layout *(not available in Convertigo Cloud)* | org.apache.log4j.PatternLayout
log4j.appender.AuditAppender.MaxBackupIndex | Audit appender max backup index | 25
log4j.appender.AuditAppender.MaxFileSize | Audit appender max file size | 10MB
log4j.appender.CemsAppender | Default appender *(not available in Convertigo Cloud)* | org.apache.log4j.RollingFileAppender
log4j.appender.CemsAppender.Encoding | Default appender encoding (requires JVM restart) | UTF-8
log4j.appender.CemsAppender.layout | Default appender layout *(not available in Convertigo Cloud)* | org.apache.log4j.PatternLayout
log4j.appender.CemsAppender.MaxBackupIndex | Default appender max backup index | 25
log4j.appender.CemsAppender.MaxFileSize | Default appender max file size | 10MB
log4j.additivity.cems | Root logger additivity | false

### Session management

property key | description | default value
--- | --- | ---
session.store.mode | Server-side store for session data (tomcat, redis) | tomcat
session.redis.default.ttl | Default session TTL in seconds when no timeout is specified | 1800

### Session management advanced properties

property key | description | default value
--- | --- | ---
session.shared_workspace.sync.enabled | Enable runtime synchronization between instances sharing the same workspace | false
session.redis.host | Redis hostname used by the session manager | localhost
session.redis.port | Redis port used by the session manager | 6379
session.redis.username | Redis username (optional) | 
session.redis.password | Redis password (optional) | 
session.redis.database | Redis logical database index | 0
session.redis.ssl | Enable SSL/TLS for the Redis connection | false
session.redis.ssl.truststore | Redis SSL server truststore path | 
session.redis.ssl.truststore.password | Redis SSL server truststore password | 
session.redis.ssl.keystore | Redis SSL client keystore path | 
session.redis.ssl.keystore.password | Redis SSL client keystore password | 
session.redis.ssl.keystore.type | Redis SSL client keystore type | 
session.redis.ssl.verification.mode | Redis SSL server certificate verification mode | 
session.redis.ssl.protocols | Redis SSL/TLS protocol versions (for example: TLSv1.3,TLSv1.2) | 
session.redis.timeout | Redis command timeout in milliseconds | 5000
session.redis.connection.pool.size | Redis data connection pool size | 128
session.redis.connection.minimum.idle.size | Redis data connection minimum idle size | 32
session.redis.prefix | Redis key prefix for stored sessions | convertigo:session
session.cookie.name | Name of the HTTP cookie carrying the session token | JSESSIONID
session.forward.ssl.trust_all | Disable SSL certificate validation for internal admin forwarding | false

### Network

property key | description | default value
--- | --- | ---
net.gzip | Enable GZip response for most text responses (need the header Accept-Encoding: gzip) | true
net.max-age | Set the Cache-Control: max-age value in seconds, for static resources | 10
net.reverse_dns | Use DNS reverse search for finding host names | false
net.upload.max_request_size | Maximum allowed size of a complete multipart request (in bytes). Value -1 indicates no limit. | -1
net.upload.max_request_size | Maximum allowed size of a single uploaded file (in bytes). | 10485760

### HTTP Client

property key | description | default value
--- | --- | ---
http_client.max_total_connections | Maximal number of HTTP connections (from 1 to 65535) | 100
http_client.max_connections_per_host | Maximal number of HTTP connections per host (from 1 to 255) | 50

### Real-time activity monitoring (legacy connectors)

property key | description | default value
--- | --- | ---
connectors.monitoring | Display running connectors in monitor of Legacy connectors *(not available in Convertigo Cloud)* | false
document.log.screen_dumps | Trace in logs the screen dumps of the running Legacy connectors | false

### XML generation

property key | description | default value
--- | --- | ---
document.include_statistics | Insert statistics in the generated document | false
document.namespace.aware | Set namespace aware | false
document.fromschema.depth | Maximum number of elements for XML sample generation based on schema | 100

### Proxy

property key | description | default value
--- | --- | ---
htmlProxy.mode | Proxy mode | off
htmlProxy.port | Proxy port | 8080
htmlProxy.host | Proxy host | localhost
htmlProxy.bpdomains | Do not apply proxy settings on | localhost,127.0.0.1
htmlProxy.auto | Autoconfiguration proxy url | 
htmlProxy.method | Proxy authentication method | anonymous
htmlProxy.user | Username | 
htmlProxy.password | Password | 

### SSL

property key | description | default value
--- | --- | ---
ssl.debug | SSL debug output (requires JVM restart); only available for HTTP connectors | false
ssl.issuers | SSL issuers | 

### Cache

property key | description | default value
--- | --- | ---
cache_manager.class | Cache manager class *(not available in Convertigo Cloud)* | com.twinsoft.convertigo.engine.cache.FileCacheManager
cache_manager.filecache.directory | File cache directory *(not available in Convertigo Cloud)* | ${user.workspace}/cache
cache_manager.scan_delay | Cache scan delay (in seconds) | 60
cache_manager.weak | Allow to cache responses in memory until the next GC | false
disable.cache | Disable Cache | false

### Analytics

property key | description | default value
--- | --- | ---
billing.enabled | Enable persistence analytics (JDBC) | false
billing.google.enabled | Enable google analytics | false
billing.persistence.dialect | Persistence SQL Dialect | org.hibernate.dialect.MySQLDialect
billing.persistence.jdbc.driver | Persistence JDBC driver | org.mariadb.jdbc.Driver
billing.persistence.jdbc.password | Persistence JDBC password | 
billing.persistence.jdbc.url | Persistence JDBC URL | jdbc:mariadb://localhost:3306/c8oAnalytics
billing.persistence.jdbc.username | Persistence JDBC username | 
billing.persistence.jdbc.maxretry | JDBC max retry on connection failed | 2
billing.google.analytics.measurement_id | Google Analytics Measurement ID | 
billing.google.analytics.api_secret | Google Analytics API Secret | 

### Notifications

property key | description | default value
--- | --- | ---
notifications.notify.project_deployment | Notify project deployment | false
notifications.target_email | Target email | 
notifications.sender_email | Sender email | noreply@convertigo.com
notifications.subject_prefix | Subject prefix | [convertigo]
notifications.project_url_prefix | Project URL prefix | 
notifications.smtp.host | SMTP host | 
notifications.smtp.port | SMTP port | 465
notifications.smtp.user | SMTP user | 
notifications.smtp.password | SMTP password | 

### Mobile builder

property key | description | default value
--- | --- | ---
mobile.builder.auth_token | Mobile builder authentication token | 
mobile.builder.android_certificate_title | Android certificate title | 
mobile.builder.android_certificate_pw | Android certificate password | 
mobile.builder.android_keystore_pw | Android keyStore password | 
mobile.builder.ios_certificate_title | iOS certificate title | 
mobile.builder.ios_certificate_pw | iOS certificate password | 
mobile.builder.platform_url | Mobile builder platform URL | https://build.convertigo.net/cmb/PhoneGapBuilder

### FullSync

property key | description | default value
--- | --- | ---
fullsync.pouchdb | Use PouchDB for FullSync (prefer CouchDB for production) *(not available in Convertigo Cloud)* | false (true in Studio)
fullsync.couch.url | Couch DB URL for FullSync | http://127.0.0.1:5984
fullsync.couch.username | Couch DB username for FullSync | 
fullsync.couch.password | Couch DB password for FullSync | 
fullsync.couch.prefix | Couch DB prefix for all FullSync databases *(not available in Convertigo Cloud)* | 
