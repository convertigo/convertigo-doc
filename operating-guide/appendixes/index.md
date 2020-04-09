---
title: Operating Guide Appendixes
keywords: pages, authoring, exclusion, frontmatter
last_updated: 21/03/2019
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

All keys, description and default values can be found in this source file.

Example for change the engine log filename and disable the automatic project zip backup:

{% highlight java %}
export JAVA_OPTS="-Dconvertigo.engine.log4j.appender.CemsAppender.File=/tmp/myConvertigo.log -Dconvertigo.engine.project.zip_backup_old=false"
# then run the convertigo server
{% endhighlight %}

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
- **configuration**: this folder contains the configuration files for the Convertigo engine,
- **databases**: this folder contains HSQLDB databases files,
- **logs**: this folder contains the Convertigo engine log files,
- **minime**: this folder contains the default legacy emulator configurations as well as Convertigo licensed keys,
- **projects**: this folder contains the Convertigo projects, 

{{site.data.alerts.important}}
In case of a Convertigo Studio, the configurable workspace folder is the Eclipse workspace, where the projects are located.
That means that the <em>projects</em> folder is empty in the Studio’s Convertigo workspace.
The Studio’s Convertigo workspace, containing all the described folders, is located inside the Eclipse workspace, in the <em>.metadata.pluginscom.twinsoft.convertigo.studio</em> folder.
{{site.data.alerts.end}}

- **studio**: this folder contains some Studio specific configurations,
- **xulrunner-work**: this folder contains the work directory of embedded xulrunner for HTML connector. 

{{site.data.alerts.important}}
The Convertigo workspace should be different for each installed/running Convertigo: two Convertigo, for example a Studio and a Server, or two Servers, should never share a workspace directory.
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

## Connector monitoring windows

Two windows are connector monitors: the Legacy connector monitor and the HTML connector monitor.

This section presents both windows as well as the requirements needed for displaying these windows on several server environments:

### Presentation of the connector monitoring windows

Convertigo Server includes two connector monitoring windows:

#### Legacy connector monitor

The Legacy connector monitor is a window that is used for monitoring the screens that are reached by the legacy connectors. It displays a graphical rendering of the legacy connectors currently in use in the active contexts of the Convertigo Server.

It is not instantiated by default after a Convertigo Server installation and has to be activated.

#### HTML connector monitor

The HTML connector monitor is a window that is used for monitoring the pages that are reached by the HTML connectors. It displays a graphical rendering of the HTML connectors currently in use in the active contexts of the Convertigo Server.

It is a necessary tool for the HTML connector to work in Convertigo Server. It is not always visible but it always exists after a Convertigo Server installation (using the Windows installer of the Linux installation file).
 
{{site.data.alerts.note}}
Find more information about the activation and display of both connector monitoring windows in <a href="#activate-the-connector-monitors-on-a-windows-based-system">Activate the connector monitors on a Windows-based system</a> and <a href="#activate-the-connector-monitors-on-a-linux-based-system">Activate the connector monitors on a Linux-based system</a>
{{site.data.alerts.end}}

### Activate the connector monitors on a Windows-based system

This section presents the common configuration to perform on Windows installed Convertigo Server before activating each of the monitors:

- Interaction with desktop
- HTML connector monitor display
- Legacy connector monitor display

#### Interaction with desktop

After installing a Convertigo Server on a Windows operating system, the Convertigo Server is installed as a service. To be able to display the connector monitors, the service has to be authorized to interact with the desktop.

**_Activate service’s interaction with desktop on Windows_**

1 Open the properties window of the Convertigo Server service:
{% include image.html file="guide_img/apendixes_winbased1.jpg" caption="Figure A - 1: Convertigo Server service properties" %}

2 You can also find a shortcut icon in Windows taskbar, named Convertigo Server. 
Right-click on this icon and select Configure... option:
{% include image.html file="guide_img/apendixes_winbased2.jpg" caption="Figure A - 2: Convertigo Server Tomcat Configurator" %}

3 Switch to the Log On tab:
{% include image.html file="guide_img/apendixes_winbased3.jpg" caption="Figure A - 3: Log On tab of Convertigo service properties" %}

4 Check the Allow service to interact with desktop option:
{% include image.html file="guide_img/apendixes_winbased4.jpg" caption="Figure A - 4: Activation of the desktop interaction on the Log On tab of Convertigo service properties" %}

5 Click on the OK button to validate the option and close the window. 

You may have to restart the service for the property to be completely taken into account.

#### HTML connector monitor display

Now that the service is authorized to interact with the desktop, any transaction execution using an HTML connector displays the HTML connector monitor.

Depending on Windows version, the monitor can appear directly on the desktop or popup indicates that the program wants to display a message. While accessing this message, the HTML connectors monitor appears:
{% include image.html file="guide_img/apendixes_winbased5.jpg" caption="Figure A - 5: HTML connector monitor" %}

Every context that will use an HTML connector will the be displayed in the same monitor, added in a new a tab:
{% include image.html file="guide_img/apendixes_winbased6.jpg" caption="Figure A - 6: Several contexts in HTML connector monitor" %} 

This window must never be closed as it would cause Convertigo Server to be killed.

#### Legacy connector monitor display

To display this monitor, an option has to be configured in the Administration Console Configuration page, see [Real-time activity monitoring](../using-convertigo-administration-console/#real-time-activity-monitoring).

After restarting the server, the Legacy connector monitor will appear next to the HTML connector monitor:
{% include image.html file="guide_img/apendixes_winbased7.jpg" caption="Figure A - 7: Legacy connector monitor" %}

Every context that will use a legacy connector will the be displayed in the same monitor, next to others:
{% include image.html file="guide_img/apendixes_winbased8.jpg" caption="Figure A - 8: Several contexts in Legacy connector monitor" %} 

{{site.data.alerts.important}}This window must never be closed as it would cause Convertigo Server to be killed.{{site.data.alerts.end}}

### Activate the connector monitors on a Linux-based system

After installing a Convertigo Server on a Linux operating system, the HTML connector monitor is automatically instantiated in an XVNC.

To display the HTML connector monitor, you can directly launch a VNC player on port 5903.

To display the Legacy connector monitor, an option has to be configured in the Administration Console Configuration page, see "Real-time activity monitoring".

After restarting the server, the Legacy connector monitor will appear next to the HTML connector monitor:
{{site.data.alerts.important}}These windows must never be closed as it would cause Convertigo Server to be killed.{{site.data.alerts.end}}

## Differences between Convertigo Server and Convertigo Cloud in Administration Console

In Convertigo Cloud, a number of functionalities (pages or configurations) of the Administration Console are not accessible. This appendix lists these differences.

### Pages

The following list shows the pages of the Administration Console that are not available at all in Convertigo Cloud:

- Keys page

### Configuration categories and settings

Configuration page of the Administration Console includes categories, in which is proposed the edition of settings.

This first list shows the categories of Configuration page that are not available at all in Convertigo Cloud’s Administration Console:

- Legacy Carioca portal management category,
- Billing system category.

This second list shows the settings that are not available in Convertigo Cloud’s Administration Console, from visible categories of Configuration page:

- in Main configuration parameters category:
    - Convertigo Server application URL,
    - (Linux only) Launch Xvnc server using DISPLAY environment variable at startup,
    - Linux only) Depth parameter for the Xvnc, default is 16,
    - (Linux only) Geometry parameter for Xvnc, default is 320x240,
    - Enable the compatibility mode for projects data (required for JSP usage); engine restart required,

- in Log management category:
    - Log4J default appender,
    - Log4J default appender file,
    - Log4J default appender layout,
    - Log4J audit appender file,
    - Log4J audit appender layout,

- in HTML parser configuration category:
    - XulRunner path,
    - XulRunner work directory,

- in Cache management category:
    - Cache manager class,
    - File cache directory. 

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
userName | varchar(255) | The username defined for the execution, which is:<br>• the value of the username property set in the context of execution of the transaction or sequence:<br>• set using the expression context.set("username", "value")<br>• retrieved using the expression context.get("username"),<br>• the Carioca portal username, of if no Carioca portal is used, the default Carioca portal username:<br>• set in the Administration Console Configuration page, in Legacy Carioca portal tab, using property Default user name,<br>• user if no previous value is set.

## SQL drivers and related jar files

The SQL connector allows to connect to several types of databases. You can refer to the SQL connector documentation in the Reference Manual for more information about SQL connector and its configuration properties.

The type of database accessed by the SQL connector can be configured through the Driver property. Depending on the selected driver, Convertigo can or cannot deliver the needed jar file for execution.

When possible, Convertigo directly delivers the jar file needed to run code for connecting to the database. But sometimes, it is impossible to do so, because this jar file is not free.

In this case, Convertigo provides a fake jar instead, already declared in the software. When trying to execute, a log is displayed in the engine logs to warn you about this.

To run your SQL connector correctly, you only need to:

- get the correct jar file by your own
- rename it to match the Convertigo jar file name
- replace the fake jar in Convertigo by the real one:
    - in Convertigo Studio, jar files are located in < Convertigo Studio installation folder>pluginscom.twinsoft.convertigo.studio_x.y.z.v12345lib
    - in Convertigo Server, jar files are located in < Convertigo Server installation folder>tomcatwebappsconvertigoWEB-INFlib
- and re-start Convertigo (Studio or Server).

The following table shows the matches between SQL Driver, jar file, and their presence or not in Convertigo for running:

Table A - 2: SQL Drivers and jar files in Convertigo

Driver | Database | jar file name | Delivered
--- | --- | --- | ---
sun.jdbc.odbc.JdbcOdbcDriver | JDBC-ODBC bridge for accessing ODBC databases | rt.jar (delivered in Java) | true
com.ibm.as400.access.AS400JDBCDriver | IBM AS400 database | jt400.jar | true
com.mysql.jdbc.Driver | MySQL database | mysql-connector.jar | false (fake jar)
net.sourceforge.jtds.jdbc.Driver | Microsoft SQL Server database | jtds-1.2.2.jar | true
org.hsqldb.jdbcDriver | HSQLDB database | hsqldb.jar | true
com.ibm.db2.jcc.DB2Driver | IBM DB2 Server database | db2jcc.jar<br> + db2jcc-licence.jar | false (fake jars)
oracle.jdbc.driver.OracleDriver | ORACLE database | ojdbc5.jar | true
org.mariadb.jdbc.Driver | MariaDB database, community-developed fork of MySQL | mariadb-java-client-1.1.3.jar | true

## List of Convertigo Java System Properties

To set a Java System Property when the JVM is launched, just add -Dconvertigo.engine.{property key}={property value}.

### Main properties

property key | meaning | default value
--- | --- | --- | ---
application_server.convertigo.url | Convertigo Server local URL<br>[More information on this parameter](../using-convertigo-administration-console/#Convertigo-Server-local-URL) | http://localhost:18080/convertigo
application_server.convertigo.endpoint | Convertigo Server endpoint URL<br>[More information on this parameter](../using-convertigo-administration-console/#Convertigo-Server-endpoint-URL) | 
application_server.mashup.url | Mashup composer server base URL | http://localhost:18080/convertigo
document.threading.max_worker_threads | Maximum number of worker threads <br>[More information on this parameter](../using-convertigo-administration-console/#Maximum-number-of-worker-threads) | 100
convertigo.max_context | Maximum number of contexts <br>[More information on this parameter](../using-convertigo-administration-console/#Maximum-number-of-contexts)| 750
convertigo.git.container | ? <br>[More information on this parameter](../using-convertigo-administration-console/#Convertigo-Server-local-URL)| ?
convertigo.xsrf.admin | Enable XSRF protection for Administration Console <br>[More information on this parameter](../using-convertigo-administration-console/#Convertigo-Server-local-URL) | true
convertigo.xsrf.projects | Enable XSRF protection for projects <br>[More information on this parameter](../using-convertigo-administration-console/#Convertigo-Server-local-URL)| false

### Main advance properties

property key | meaning | default value
--- | --- | --- 
convertigo.product_version_check | Product version check | true
document.threading.use_stop_method | Use the Java Thread.stop() method in order to finish threads (not to be used) | false
linux.xvnc.launch | (Linux only) Launch Xvnc server using DISPLAY environment variable at startup | true
linux.xvnc.depth | (Linux only) Depth parameter for the Xvnc, default is 16 | 16
linux.xvnc.geometry | (Linux only) Geometry parameter for Xvnc | 320x240
migration.3.0.0 | Migration 3.0.0 ? | false
pool.manager.timeout | Time allowed for pool management task in seconds (-1 for disable) | -1
projects_data.compatibility_mode | Enable the compatibility mode for projects data (required for JSP usage); engine restart required | false
sequence.steps.use_same_jsession | Use same JSESSIONID for sequences and steps | true
soap.request.add_xml_encoding_charset | Add XML encoding charset for SOAP requests | false
throw_http_500 | Throw HTTP 500 in case of unrecoverable servlet error | false
hiding_error_information | Hide detailed information in case of unrecoverable servlet error | false
throw_http_500.soap_fault | Throw HTTP 500 in case of SOAP fault | false
update.steps | update.steps | false
crypto.passphrase | Cryptographic services passphrase | A8dkLmsdfkKze0e34FGh
project.zip_backup_old | Automatically performs a dated zip backup of replaced projects | true
cors.policy | CORS Policy\n• empty: disallow all\n• '=Origin': use client 'Origin' header\n• 'url1#url2#url3': allow if 'Origin' one of 'url' | =Origin
delegate.url | Delegate URL for extra functionality | 

### Accounts

property key | meaning | default value
--- | --- | --- 
admin.username | Admin username | admin
admin.password | Admin password encoded | "admin" encoded with PropertyType.PasswordHash
testplatform.username | Test Platform username (leave it blank for anonymous access) | 
testplatform.password | Test Platform password | "" encoded with PropertyType.PasswordHash
security.filter | Activate Security Filter with file security_filter.json| false
user.password.regexp | RegularExpression used to validate password change for Admin accounts | ``^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[\\w~@#$%^&*+=`|{}:;!.?\\\"()\\[\\]-]{8,20}$``
user.password.instruction | Instruction in case of RegularExpression failure for password change | must respect at least 1 lowercase, 1 uppercase, 1 digit and between 8-20 characters

### Logs

property key | meaning | default value
--- | --- | --- 
log4j.logger.cems | Log4J root logger | INFO, CemsAppender
log4j.logger.cems.Admin| Log4J admin logger| WARN
log4j.logger.cems.Context.Audit| Log4J audit context logger| INFO
log4j.logger.cems.Beans| Log4J beans logger| INHERITED
log4j.logger.cems.Billers| Log4J billers logger| WARN
log4j.logger.cems.CacheManager| Log4J cache manager logger| WARN
log4j.logger.cems.CertificateManager| Log4J certificate manager logger| WARN
log4j.logger.cems.Context| Log4J context logger| INHERITED
log4j.logger.cems.ContextManager| Log4J context manager logger| WARN
log4j.logger.cems.CouchDbManager| Log4J couch DB manager output logger| WARN
log4j.logger.cems.DatabaseObjectManager| Log4J database objects manager logger| WARN
log4j.logger.cems.Devices| Log4J devices output logger| INFO
log4j.logger.cems.Emulators| Log4J emulators output logger| INFO
log4j.logger.cems.Engine| Log4J engine logger| INHERITED
log4j.logger.cems.JobManager| Log4J job manager logger| WARN
log4j.logger.cems.ProxyManager| Log4J proxy manager logger| INFO
log4j.logger.cems.Scheduler| Log4J scheduler output logger| INFO
log4j.logger.cems.SecurityFilter| Log4J security filter output logger| WARN
log4j.logger.cems.SecurityTokenManager| Log4J security token manager output logger| INFO
log4j.logger.cems.SiteClipper| Log4J site clipper output logger| INFO
log4j.logger.cems.Statistics| Log4J statistics logger| INFO
log4j.logger.cems.Studio| Log4J studio logger| WARN
log4j.logger.cems.TracePlayerManager| Log4J trace player manager logger| WARN
log4j.logger.cems.UsageMonitor| Log4J usage monitor logger| WARN
log4j.logger.cems.Context.User| Log4J user context logger| INHERITED
log4j.logger.cems.User| Log4J user output logger| INFO


The different available values are : FATAL, ERROR, WARN, INFO, DEBUG, TRACE.
To set INHERITED, put '' (empty). *Inherited from root logger* uses the value from  *Log4J root logger*.
[To know how to position these values go on this link](../using-convertigo-administration-console/#logs)


### Logs advance


property key | meaning | default value
--- | --- | --- 
log.explicit_variables| ? Explicit variables| contextid,project,sequence,connector,<br>transaction,user,clientip,clienthostname,
log4j.appender.AuditAppender| Log4J audit appender|org.apache.log4j.RollingFileAppender
log4j.appender.AuditAppender.File| Log4J audit appender file| ${log.directory}/audit.log
log4j.appender.AuditAppender.layout| Log4J audit appender layout|org.apache.log4j.PatternLayout
log4j.appender.AuditAppender.layout<br>.ConversionPattern| ? Log4J audit appender layout conversion pattern| ``!%c{1} | %d | %-5p | %m%n``
log4j.appender.AuditAppender.MaxBackupIndex| Log4J audit appender max backup index| 25
log4j.appender.AuditAppender.MaxFileSize| Log4J audit appender max file size| 10MB
log4j.appender.CemsAppender| Log4J default appender| org.apache.log4j.RollingFileAppender
log4j.appender.CemsAppender.Encoding| Log4J default appender encoding | UTF-8
log4j.appender.CemsAppender.File| Log4J default appender file| ${log.directory}/engine.log
log4j.appender.CemsAppender.layout| Log4J default appender layout| org.apache.log4j.PatternLayout
log4j.appender.CemsAppender.layout<br>.ConversionPattern| ? Log4J default appender layout conversion pattern| ``!%-28c{1} | %d | %-5p | %-32t | %X{ContextualParameters}%m%n``
log4j.appender.CemsAppender.MaxBackupIndex| Log4J default appender max backup index|25
log4j.appender.CemsAppender.MaxFileSize| Log4J default appender max file size|10MB
log4j.additivity.cems| ? Log4J root logger additivity| false

### Network

property key | meaning | default value
--- | --- | --- 
net.gzip| Enable GZip response for most text responses (need the header Accept-Encoding: gzip)| true
net.max-age| Set the Cache-Control: max-age value in seconds, for static resources| 10
net.reverse_dns| Use DNS reverse search for finding host names| false
net.upload.max_request_size| Maximum allowed size of a complete multipart request (in bytes). Value -1 indicates no limit.| -1
net.upload.max_request_size| Maximum allowed size of a single uploaded file (in bytes).| 10485760

### HTTP Client

property key | meaning | default value
--- | --- | --- 
http_client.max_total_connections| Maximal number of HTTP connections (from 1 to 65535)| 100
http_client.max_connections_per_host| Maximal number of HTTP connections per host (from 1 to 255)| 50

### Connector legacy monitoring

property key | meaning | default value
--- | --- | ---
connectors.monitoring| Display running connectors in monitor of Legacy connectors| false
document.log.screen_dumps| Trace in logs the screen dumps of the running Legacy connectors | false

### XML generation

property key | meaning | default value
--- | --- | ---
document.include_statistics| Insert statistics in the generated document| false
document.xslt_engine| XSLT engine| XsltEngine.xalan_xsltc
document.namespace.aware| Set namespace aware| false
document.fromschema.depth| Maximum number of elements for XML sample generation based on schema | 100

### Proxy

property key | meaning | default value
--- | --- | ---
htmlProxy.mode| Proxy mode| ProxyMode.off
htmlProxy.port| Proxy port| 8080
htmlProxy.host| Proxy host| localhost
htmlProxy.bpdomains| Do not apply proxy settings on | localhost,127.0.0.1
htmlProxy.auto| Autoconfiguration proxy url| 
htmlProxy.method| Proxy authentication method| ProxyMethod.anonymous
htmlProxy.user| Username| 
htmlProxy.password| Password|

### SSL

property key | meaning | default value
--- | --- | ---
ssl.debug| SSL debug output ; only available for HTTP connectors | false
ssl.issuers| SSL issuers|

### Cache

property key | meaning | default value
--- | --- | ---
cache_manager.class| Cache manager class| com.twinsoft.convertigo.engine.cache.FileCacheManager
cache_manager.filecache.directory| File cache directory| workspace/cache
cache_manager.scan_delay| Cache scan delay (in seconds)| 60
cache_manager.weak| Allow to cache responses in memory until the next GC | false
disable.cache| Disable Cache | false

### Analytics

property key | meaning | default value
--- | --- | ---
billing.enabled| Enable persistence analytics (JDBC)| false
billing.google.enabled| Enable google analytics| false
billing.persistence.dialect| Persistence SQL Dialect| org.hibernate.dialect.MySQL5InnoDBDialect
billing.persistence.jdbc.driver| Persistence JDBC driver| org.mariadb.jdbc.Driver
billing.persistence.jdbc.password| Persistence JDBC password| 
billing.persistence.jdbc.url| Persistence JDBC URL| jdbc:mysql://localhost:3306/c8oAnalytics
billing.persistence.jdbc.username| Persistence JDBC username|
billing.persistence.jdbc.maxretry| JDBC max retry on connection failed| 2
billing.google.analytics.id| Google Analytics ID|

### Notifications

property key | meaning | default value
--- | --- | ---
notifications.notify.project_deployment| Notify project deployment| false
notifications.target_email| Target email| 
notifications.smtp.host| STMP host|
notifications.smtp.port| STMP port| 465
notifications.smtp.user| STMP user| 
notifications.smtp.password| STMP password|

### Mobile builder

property key | meaning | default value
--- | --- | ---
mobile.builder.auth_token| Mobile builder authentication token|  
mobile.builder.android_certificate_title| Android certificate title| 
mobile.builder.android_certificate_pw| Android certificate password|
mobile.builder.android_keystore_pw| Android keyStore password|
mobile.builder.ios_certificate_title| iOS certificate title| 
mobile.builder.ios_certificate_pw| iOS certificate password|
mobile.builder.platform_url|Mobile builder platform URL|  https://build.convertigo.net/cmb/PhoneGapBuilder

### Full Sync

property key | meaning | default value
--- | --- | ---
fullsync.couch.url| Couch DB URL for FullSync| http://127.0.0.1:5984
fullsync.couch.username| Couch DB username for FullSync| 
fullsync.couch.password| Couch DB password for FullSync|
fullsync.couch.prefix| Couch DB prefix for all FullSync databases|



