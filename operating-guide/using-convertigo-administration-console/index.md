---
title: Using Convertigo Administration Console
keywords: pages, authoring, exclusion, frontmatter
last_updated: 21/03/2019
summary: "This chapter describes several of the actions and configurations possible with the Convertigo engine Administration Console"
sidebar: c8o_sidebar
permalink: /operating-guide/using-convertigo-administration-console/
---
## General presentation of the Administration Console

Configure Convertigo Studio or Convertigo Server engine settings by using Convertigo Administration Console, a web application that is accessible online and through Convertigo Studio.

This section introduces you to Convertigo Administration Console:

- [Accessing the Administration Console](#accessing-the-administration-console)
- [Home page](#home-page)

### Accessing the Administration Console

This section explains step by step how to connect to your Convertigo Administration Console. Convertigo Server administrators can access the Administration Console of the Convertigo Server's engine. Developers can access the Administration Console of the engine embedded in their Convertigo Studio.

As a Web application, Convertigo Server Administration Console is accessible through a Web browser. To access the Administration Console:

**1**. Open a web browser.

**2**. In the URL address field, enter the URL using the following format:
`http://<ConvertigoServer>/<ConvertigoAppName>/admin/`

For example, for a local Convertigo Studio or Convertigo Server administration:

- ConvertigoServer = *localhost:18080* (or *localhost:28080* for local server installation)
- ConvertigoAppName = *convertigo*
- URL = `http://localhost:18080/convertigo/admin/`

When validating the URL, the Administration Console login page opens. You have to be authenticated to access the Administration Console.
{% include image.html file="guide_img/admin-console-01-administration-console-login-page.png" caption="Figure 4 - 3: Administration Console login page" %}

**3**. Enter the Convertigo Server login credentials in the **Username** and **Password** fields.

For example, in case of a Convertigo Studio or a default Convertigo Server installation, default username/password is admin/admin. In case of a private Convertigo Cloud, credentials were delivered to you by email.

**4**. Click on the **Login** button or press *Enter* on your keyboard.

Once logged in, the Administration Console Home page opens:
{% include image.html file="guide_img/admin-console-02-administration-console-home-page.png" caption="Figure 4 - 4: Administration Console Home page" %}

### Home page

The Administration Console Home page displays two main parts:

- the Left menu contains links to the Convertigo Server administration pages, plus shortcuts to Dashboard, Swagger, Test Platform, and documentation resources:
{% include image.html file="guide_img/admin-console-03-administration-console-left-menu.png" caption="Figure 4 - 5: Administration Console left menu" %} 
 
{{site.data.alerts.note}}
Note that in Convertigo Cloud, some pages are not accessible in the Administration Console, the left menu may look different. For more information, see appendix <a href="../appendixes/#differences-between-convertigo-server-and-convertigo-cloud-in-administration-console">Differences between Convertigo Server and Convertigo Cloud in Administration Console</a>.
{{site.data.alerts.end}}

- and, a part to the right that contains status cards and monitoring charts:
- **Status** card
{% include image.html file="guide_img/admin-console-04-status-card-in-administration-console-home-page.png" caption="Figure 4 - 6: Status card in Administration Console Home page" %}

This card provides information about the Convertigo engine state, versioning, license, and endpoint, and gives quick access to **Variables** and **Restart** actions.

- **System Information** card
{% include image.html file="guide_img/admin-console-05-system-information-card-in-administration-console-home-page.png" caption="Figure 4 - 7: System Information card in Administration Console Home page" %}

This card presents the system properties of the host and the browser you're using.

- **Monitoring** charts
{% include image.html file="guide_img/admin-console-06-monitoring-charts-in-administration-console-home-page.png" caption="Figure 4 - 8: Monitoring charts in Administration Console Home page" %}

These charts show engine activity in real-time (memory, threads, contexts, request duration, and sessions).

## Configuration

The Left menu contains a link to the Config page. This page enables configuring several settings of the Convertigo engine.

This section explains step by step how to access the Configuration page, browse its categories, edit a Convertigo engine property, and discover the settings that can be configured in the different tabs:

- [Configuration page](#configuration-page)
- [Main parameters](#main-parameters)
- [Accounts and security](#accounts-and-security)
- [Logs](#logs)
- [Real-time activity monitoring](#real-time-activity-monitoring)
- [XML generation](#xml-generation)
- [HTTP client](#http-client)
- [Network](#network)
- [Proxy](#proxy)
- [SSL](#ssl)
- [Cache](#cache)
- [Analytics](#analytics)
- [Notifications](#notifications)
- [Mobile builder](#mobile-builder)
- [Full sync](#full-sync)
- [Session management](#session-management)

### Configuration page

- [Accessing the Configuration page](#accessing-the-configuration-page)
- [Presentation of the Configuration page](#presentation-of-the-configuration-page)
- [Using the Configuration page](#using-the-configuration-page)

#### Accessing the Configuration page

The following procedure explains how to access the Configuration page of the Convertigo Administration Console.

##### To access Configuration page in the Administration Console

1. Follow the procedure in [Accessing the Administration Console](#accessing-the-administration-console) to access Convertigo Administration Home page.
2. Click the **Config** button on the Left menu:
{% include image.html file="guide_img/admin-console-07-accessing-config-page.png" caption="Figure 4 - 9: Accessing Config page" %}

The Administration Console Configuration page opens:
{% include image.html file="guide_img/admin-console-08-administration-console-config-page.png" caption="Figure 4 - 10: Administration Console Config page" %}

#### Presentation of the Configuration page

The Configuration page allows you to configure specific properties of the Convertigo engine, organized in categories. This page displays two main parts:
- the left part contains a list of tabs corresponding to configuration categories:
{% include image.html file="guide_img/admin-console-09-category-tabs-on-the-left-side-of-config-page.png" caption="Figure 4 - 11: Category tabs on the left side of Config page" %}

{{site.data.alerts.note}}
Note that in Convertigo Cloud, some categories of configuration are not accessible in the Administration Console. The tabs in the left panel may look different. For more information, see appendix <a href="../appendixes/#differences-between-convertigo-server-and-convertigo-cloud-in-administration-console">Differences between Convertigo Server and Convertigo Cloud in Administration Console</a>.
{{site.data.alerts.end}}

- and the main area contains the properties of the selected category tab (for example here the Main parameters tab properties):
{% include image.html file="guide_img/admin-console-10-properties-of-the-main-parameters-tab-on-config-page.png" caption="Figure 4 - 12: Properties of the Main parameters tab on Config page" %}
 
#### Using the Configuration page

The following procedures explain:

- how to access a configuration category with its editable properties,
- how to access the advanced properties of a category,
- how to edit a Convertigo engine property using the Configuration page.

##### To access a configuration category in the Configuration page

1. In the left part of the Configuration page, click on the tab that corresponds to the needed category, for example here click on the XML generation category tab:
{% include image.html file="guide_img/admin-console-11-selecting-a-category-tab-in-the-left-panel-on-config-page.png" caption="Figure 4 - 13: Selecting a category tab in the left panel on Config page" %}

The corresponding properties are displayed in the main area of the page:
{% include image.html file="guide_img/admin-console-12-category-properties-in-the-main-area.png" caption="Figure 4 - 14: Category properties in the main area" %}

The next procedure explains how to access the advanced properties of a category.

##### To access the advanced properties of a configuration category

1. Access the appropriate category using the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).
2. In the category view, click on the **Advanced Properties** section to expand it:
{% include image.html file="guide_img/admin-console-13-accessing-advanced-properties-on-config-page.png" caption="Figure 4 - 15: Accessing Advanced Properties on Config page" %}

The advanced properties of the currently selected tab are displayed below the **Advanced Properties** section:
{% include image.html file="guide_img/admin-console-14-advanced-properties-for-a-category.png" caption="Figure 4 - 16: Advanced properties for a category" %}

The next procedure explains how to edit a Convertigo engine property in the Configuration page.

##### To edit a Convertigo Engine setting using the Configuration page

**1**. Access the category tab that contains the setting you need to change by following one of the procedures [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page) or [To access the advanced properties of a configuration category](#to-access-the-advanced-properties-of-a-configuration-category). For example, here we open the **Accounts and Security** category:

The tab opens (for example here the Accounts and Security tab):
{% include image.html file="guide_img/admin-console-15-accounts-and-security-tab.png" caption="Figure 4 - 17: Accounts and Security tab" %}

**2**. In the main area of the Configuration page, change the value of the engine property you want to edit in the corresponding field. (For example here we edit the **Admin username** field.)

**3**. Click on the **Save changes** button located at the top of the Configuration page:
{% include image.html file="guide_img/admin-console-16-setting-updated-parameters-and-saving-changes.png" caption="Figure 4 - 18: Setting updated parameters and saving changes" %}

A confirmation dialog appears to validate the changes:
{% include image.html file="guide_img/admin-console-17-confirmation-dialog.png" caption="Figure 4 - 19: Confirmation dialog" %}

**4**. Click on **Yes** to confirm and save.

The engine setting is updated. Beware that sometimes, the Convertigo engine needs to be restarted for the new property to be taken into account. This is specified on such properties documentation.

### Main parameters

Edit your Convertigo Server main parameters in Main parameters tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

This tab includes an Advanced properties section that can be opened by following the procedure [To access the advanced properties of a configuration category](#to-access-the-advanced-properties-of-a-configuration-category).

In the Advanced properties section, configure the main advanced Convertigo configuration parameters.

- [Properties](#properties)
- [Advanced properties](#advanced-properties)


#### Properties

- **Convertigo Server local URL** : <a id="Convertigo-Server-local-URL"></a> local Convertigo Server URL, this URL informs Convertigo Server of its local access URL, including the domain or IP address of the server, and the listening port of the server (configured in the application server).
    - This URL is used by several functionalities of Convertigo Server and it is very important that it is correctly configured, otherwise these functionalities would not work correctly (for example: Call Sequence or Call Transaction steps not using internal invoke, Scheduler, WSDL generation, etc.). This URL should be configured at the end of the Convertigo Server installation.
    - In case of Convertigo Studio, this URL is used in addition to define the listening port of the embedded server, as well as for the transaction or sequence executions using the "Execute" functionality.

- **Convertigo Server endpoint URL** : <a id="Convertigo-Server-endpoint-URL"></a>public Convertigo Server URL, this URL informs Convertigo Server of its external access URL, including the domain or IP address of the server, and the listening port of the server (configured in the application server).
    - This URL is used by the SiteClipper to compute the right full links.

- **Maximum number of worker threads** : <a id="Maximum-number-of-worker-threads"></a>Maximum number of simultaneous worker threads Convertigo will open in the application server. Though there is no theoretical limit to this, some application servers seem to be unstable when too many worker threads are in use. Convertigo limits itself to prevent server collapse. 

{{site.data.alerts.note}}
<b>What are worker threads ?</b><br><br>
For every request sent to Convertigo, a thread of the application server (Tomcat by default) manages the request and transfer it to Convertigo. Convertigo engine creates a worker thread to execute the request. Once the request is performed, the <b>worker thread</b> is released and can be used again.<br><br>
The arbitrary limit set with the <b>Maximum number of worker threads</b> property is never exceeded. When this limit is reached, every new request to Convertigo is rejected (the Convertigo engine throws an Exception) until a <b>worker thread</b> has finished performing its request and is available for a new one.
{{site.data.alerts.end}}

- **Maximum number of contexts** : <a id="Maximum-number-of-contexts"></a>Maximum number of simultaneous contexts Convertigo will create. This parameter allows the Convertigo server to protect itself from massive context creation policies. Too many contexts created in a server could lead to OutOfMemory errors, resulting in completely blocked server. Convertigo limits its number of contexts to prevent server collapse. 

{{site.data.alerts.note}}
<b>What is the difference between contexts and worker threads ?</b><br><br>
For every request sent to Convertigo, a <b>context</b> is created (or re-used if the request specifies a context name). Inside this context, a <b>worker thread</b> is created by Convertigo engine to execute the request.<br>
Once the request is performed, the <b>worker thread</b> is released and can be used again by Convertigo engine, the <b>context</b> is not always released or re-used, it can remain open without requests to execute for a while (without worker thread working).<br><br>
The arbitrary limits set with the <b>Maximum number of worker threads</b> and <b>Maximum number of contexts</b> properties are not managing the same objects. They are not reached at the same time nor in the same conditions. Depending on the projects and environments, one of these properties or both may be used.<br><br>
When one of these limits is reached, every new request to Convertigo is rejected (the Convertigo engine throws an Exception) until a worker thread has finished performing its request or a context is destroyed and/or is available for a new request.
{{site.data.alerts.end}}

- **Git container (autoimport)** : <a id="Git-container"></a>When a project is deployed to a Convertigo server, the server will check all the projects's reference objects. It it finds in a reference a link to a __git__ repository, he will clone the repository containing the referenced project and will import automatically the referenced project.

    By default the project will be cloned in the __workspace/git__ directory, but you can override this by modifying the property.

- **Enable XSRF protection for Administration Console** : <a id="Enable-XSRF-Admin"></a>XSRF (Cross Site Request Forgery ) is a common attack used on web applications. You can protect your administration console by enabling this setting. The protection will be done by issuing a session life-time token that that the console will use each time it invokes and admin service.


- **Enable XSRF protection for projects** : <a id="Enable-XSRF-Projects"></a>XSRF (Cross Site Request Forgery ) is a common attack used on web applications. You can protect your PWA and Web applications by enabling this setting. The protection will be done by issuing a session life-time token that that the Application will use each time it invokes and admin service.

{{site.data.alerts.note}}
Only applications Developed with Mobile Builder Convertigo 7.8.0 and further versions are compatible with XSRF protection.

Also Only applications developed on Convertigo Angular/Vue/JS SK Version 3.0.9 and further supports XSRF protection.
{{site.data.alerts.end}}



#### Advanced properties

- **Product version check** : Activated by default, this option enables the verification of Convertigo version number in projects that attempt to be deployed. This helps users not to deploy projects that were created in a greater version of Convertigo in an older version of Convertigo. Indeed, in this case, the projects may not be compatible, due to the add of objects or objects' properties in the software, that an older version of Convertigo cannot handle. In the opposite case, a new version of Convertigo is always compatible with older version, that makes projects to be importable in newer version of Convertigo, possibly including an automatic migration of projects if need be.

- **Use the Java Thread.stop() method in order to finish threads** : When a transaction or sequence timeout is reached, its thread is gracefully stopped. In some case, the transaction/sequence thread is locked (by reading blocking socket, or whatever) and cannot be gracefully stopped. Enabling this property allows Convertigo to use the deprecated Thread.stop() method in these cases to end the transaction/sequence thread.

- **Time allowed for pool management task in seconds (-1 for disable)** : This property defines the time in seconds allowed to the pool manager to start its contexts. If this time is reached, the pool manager does not start a new context and lets the context manager work before continuing its activities. Setting this property to -1 disables time checking: the pool manager starts all needed contexts before it lets the context manager work.
 
{{site.data.alerts.note}}
The pool manager is the entity that watches and starts contexts for connectors configured with pools. The pool manager shares the same thread as the context manager. While the pool manager is running, the context manager cannot do its tasks, like removing expired contexts.
{{site.data.alerts.end}}

- **Enable the compatibility mode for projects data (required for JSP usage); engine restart required** : Activate this option if you need to use an old Convertigo project using JSP pages in a new Convertigo Server. Indeed, some old projects may have used specific code in JSP pages of the project, to deliver content and functionalities to the client application. Since Convertigo 5.0, the JSP pages usage in Convertigo has been replaced by a JavaScript framework named Convertigo Weblib.
 
{{site.data.alerts.important}}
Beware that if you check this option, you will need to restart Convertigo engine for it to be taken into account.
{{site.data.alerts.end}}

- **Use same JSESSIONID for sequences and steps** : This option, activated by default, makes the sequence automatically re-use the client session cookie (JSESSIONID) of its context as its own JSESSIONID, used in contexts created by Call Transaction and Call Sequence steps. This is useful mainly when a context has to be maintained between several transaction calls. 

{{site.data.alerts.note}}
Convertigo Server uses the client session cookie (JSESSIONID) as a parameter to build the contextId of requested object (transaction or sequence) executions. In case of a sequence execution, this sequence can call other transactions or sequences thanks to Call Transaction or Call Sequence steps. In this case, the sequence itself is seen as a client to Convertigo. This parameter is used in this case only.
{{site.data.alerts.end}}

- **Add XML encoding charset for SOAP requests** : This option, when activated, adds the following XML encoding charset declaration in client SOAP requests: 
{% highlight xml %}<?xml version="1.0" encoding="UTF-8"?>{% endhighlight %}

- **Throw HTTP 500 in case of unrecoverable servlet error** : When activated, this option makes Convertigo Server return an HTTP 500 response to the requesting client when an unrecoverable servlet error occurs (no available pool, busy server, unable to connect to target resource, etc.). Unchecking this option makes Convertigo Server answer an HTTP 200 response containing the same content in such cases.

- **Hide all error informations** : When activated, this option makes Convertigo Server hide error information (the Java Exception stack trace, the detailed information of the error, etc.) where they can be displayed (engine logs, response XML, etc.) when an unrecoverable servlet error occurs (no available pool, busy server, unable to connect to target resource, etc.).

- **Throw HTTP 500 in case of SOAP fault** : This option, activated by default, makes Convertigo Server return an HTTP 500 response to the requesting SOAP client when a SOAP fault exception is thrown (by the project managing an error or by the Web service requester of Convertigo). Unchecking this option makes Convertigo Server answer an HTTP 200 response containing the same content in such cases.

- **Show error requestable informations** : Controls whether requestable information is shown in unrecoverable error outputs.

- **Show error context informations** : Controls whether context information is shown in unrecoverable error outputs.

- **Show error type** : Controls whether the error type is shown in unrecoverable error outputs.

- **Show error code** : Controls whether the error code is shown in unrecoverable error outputs.

- **Show error message** : Controls whether the error message is shown in unrecoverable error outputs.

- **Show error detail** : Controls whether detailed error information is shown in unrecoverable error outputs.

- **Show error exception** : Controls whether the Java exception class is shown in unrecoverable error outputs.

- **Show error stacktrace** : Controls whether stack traces are shown in unrecoverable error outputs.

- **Automatically performs a dated zip backup of replaced projects** : When activated, this option makes Convertigo Server archive the deployed project version to a zip file with the date in the filename, next to a project folder, just before a new version is deployed.

- **CORS Policy** : Defines how `Access-Control-Allow-Origin` is resolved for CORS requests:
  - empty: disallow all
  - `=Origin`: use client `Origin` header
  - `url1#url2#url3`: allow if the client `Origin` matches one of the configured URLs
  This property can be overridden per project using the **CORS Origin** project property.

- **Delegate URL for extra functionality** : Defines an optional delegate endpoint URL for extra server-side functionality.

- **Automatically GC on low usage (every 10 min)** : When activated, Convertigo runs a periodic garbage collection on low engine usage.

### Accounts and security

Edit your Convertigo Server accounts in the **Accounts and Security** tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

The following fields are editable:

- **Admin username** and **Admin password**: credentials used to access the Administration Console (default values are `admin/admin` on a default installation).
- **Allow anonymous access to /dashboard**: allows anonymous access to the dashboard when enabled.

#### Advanced properties

Advanced properties allow you to configure the password validation policy for administrator password changes:

- **Security Filter**: enables/disables password validation policy checks.
- **RegularExpression used to validate password change for Admin accounts**: defines the regular expression used to validate new admin passwords.
- **Instruction in case of RegularExpression failure for password change**: defines the message displayed when a password does not match the configured regular expression.

### Logs

Control your log settings under the Logs tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

This tab includes an Advanced properties section that can be opened by following the procedure [To access the advanced properties of a configuration category](#to-access-the-advanced-properties-of-a-configuration-category). In the Advanced properties section, configure the advanced log settings.

This category lets you configure global logging behavior (outputs and verbosity) for the engine and tune advanced log behavior when needed.

Common log properties include:

- **Log into files**: enables/disables file log output.
- **Log into the standard console output**: enables/disables stdout log output.
- **Maximum number of characters per log message before truncation (-1 means unlimited)**: limits long message payloads.
- **Root logger**: sets the global logger level.
- **Admin logger**: sets the logger level for Administration Console runtime.
- **Audit context logger**: sets the logger level for audit context events.

The Logs tab also contains additional component-specific logger levels and appender settings. Keep default values unless you need targeted troubleshooting.

### Real-time activity monitoring

Edit your real-time monitoring settings under the Real-time activity monitoring tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

Two options are available in this tab:

- **Display running connectors in monitor of Legacy connectors** : When activated, this option displays a graphical rendering of the legacy connectors currently in use in the active contexts of the Convertigo Server, in the Legacy connectors monitor.
 
{{site.data.alerts.note}}
The Legacy connectors monitor is a window that may be visible or not depending on the Convertigo Server installation. Both Windows and Linux based systems must meet specific requirements for this option to be effective. For more information, see the appendix <a href="../appendixes/#connector-monitoring-windows">Connector monitoring windows</a>.
{{site.data.alerts.end}}
 
{{site.data.alerts.important}}
Beware that if you check this option, you will need to restart Convertigo engine for it to be taken into account.
{{site.data.alerts.end}}

- **Trace in logs the screen dumps of the running Legacy connectors** : When activated, this option makes a text screen dump of each mainframe screen Convertigo detects in the legacy connectors currently in use in the active contexts. These screen dumps are output in context logger, it only works when context logger is activated at minimum INFO level.

### XML generation


Edit the parameters of XML generation of the transactions and sequences results in XML generation tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

This tab includes an Advanced properties section that can be opened by following the procedure [To access the advanced properties of a configuration category](#to-access-the-advanced-properties-of-a-configuration-category). 

In the Advanced properties section, configure the advanced parameters of XML generation of the transactions and sequences results.

- [Properties](#properties-1)
- [Advanced properties](#advanced-properties-1)

#### Properties

- **Insert statistics in the generated document** : This option, when activated, adds statistics about the time of execution of the transaction or sequence in the output response. These statistics, which data accuracy is not guaranteed, are :
    - inserted as a commentary into the response (the syntax depends on the requester: XML, SOAP, etc. and are not available some times: for JSON requester for example)
    - and are visible only when calling the transaction or sequence from a client (not visible in Studio execution).

{{site.data.alerts.note}}
This property has nothing to do with the transaction/sequence's <b>Add statistics to response</b> property that can be edited for each transaction/sequence and does not have the same behavior in response.
{{site.data.alerts.end}}

#### Advanced properties

- **Set namespace aware** : Enables namespace-aware XML processing for sample generation and XML transformations.

- **Maximum number of elements for XML sample generation based on schema** : Defines the maximum number of generated XML elements when producing XML samples from a schema.

### HTTP client

Edit the parameters of the HTTP client in HTTP client tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

- Maximal number of HTTP connections (from 1 to 65535) : This preference limits the total number of HTTP connections Convertigo can open using HTTP client. If more connections are needed, they are queued until a connection "slot" is available. This preference takes values between 1 and 65535 inclusive.
- Maximal number of HTTP connections per host (from 1 to 255) : This preference limits the total number of HTTP connections Convertigo can make using HTTP client to a single server. If more connections are needed, they are queued until a connection "slot" is available. This preference takes values between 1 and 255 inclusive. 

{{site.data.alerts.note}}
HTTP client is used in Convertigo in: HTTP connector, Site Clipper connector, HTML connector (to make the initial connector connection in stateless mode), HTTP statement.
{{site.data.alerts.end}}

### Network

Edit the network parameters in Network tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

- **Enable GZip response for most text responses (need the header Accept-Encoding: gzip)** : Enables gzip compression for eligible text responses when the client supports it.

- **Set the Cache-Control: max-age value in seconds, for static resources** : Sets the `max-age` directive used in Cache-Control headers for static resources.

- **Use DNS reverse search for finding host names** : If checked, this option makes Convertigo perform reverse DNS checks on client IP addresses. Resolved client names will then be used along with IP in log files and Connections page.

{{site.data.alerts.important}}
Check this option only if you are sure the Convertigo Server is able to reach a DNS server that serves reverse DNS requests, or response times will greatly deteriorate.
{{site.data.alerts.end}}

- **Maximum allowed size of a complete multipart request (in bytes). Value -1 indicates no limit** : This parameter allows to define the maximum allowed size of a multipart request to Convertigo, in bytes. Default value is -1, indicating that the request size is not limited.
- **Maximum allowed size of a single uploaded file (in bytes)** : This parameter allows to define the maximum allowed size of one uploaded file when sending a multipart request to Convertigo, in bytes. 

{{site.data.alerts.note}}
Since version 6.1.10, Convertigo allows to receive multi-part requests. The programmers can then develop forms that will be used to upload files to Convertigo as input variables of transactions/sequences.<br><br>
The transactions/sequences variables can be defined as a file upload using the <b>Is a file upload</b> property.
{{site.data.alerts.end}}

### Proxy

Configure the Convertigo Server unified proxy in the Proxy tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

- **Proxy mode**: In this parameter, three different modes are available to configure the proxy:
    - *disabled*: No proxy.
    - *automatic*: Using this mode, it is possible to automatically configure the proxy through a proxy auto-configuration (PAC) file. The URL of this file has to be set in **Autoconfiguration** proxy url parameter.
    - *manual*: The proxy must be configured manually by filling different fields:
        - **Proxy port**: Port which has to be used by the proxy,
        - **Proxy host**: Address of the proxy server,
        - **Do not apply proxy settings on**: In this field, it is possible to configure the domains to which the proxy should not be applied.

- **Proxy authentication method**: This parameter allows to choose what authentication method the proxy should use. The value is to be chosen amongst the following values:
    - *anonymous*
    - *basic*
    - *NTLM*
- **Username** and **Password**: Finally, these parameters allow to set the credentials to be used by the proxy. 
{{site.data.alerts.note}}
Since version 6.0, Convertigo includes a unified HTTP proxy for the following connectors: HTML connector, HTTP connector and Site Clipper connector.<br><br>
Previously, each connector had its own proxy configuration, configured through its properties. Now that the proxy is unified, only one configuration exists for these connectors.<br><br>
The proxy configuration set thanks to this administration page will be used by all HTTP, HTML and Site Clipper connectors of all Convertigo projects on the server.
{{site.data.alerts.end}}

**Examples**

##### Configuring a proxy with basic authentication

1. Proxy mode: *manual*
2. Proxy port: *3128*
3. Proxy host: *192.168.100.9*
4. Proxy authentication method: *basic*
5. Username: *steph*
6. Password: *123*

In case of NTLM authentication, if the proxy is related to LDAP, the username must be preceded by domain name.

##### Auto-Configuring proxy

1. Proxy mode: automatic
2. Autoconfiguration proxy url: http://192.168.100.141:18080/qualif/proxy.pac

### SSL

Edit the communication security parameters in SSL tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

- **SSL debug output (requires JVM restart); only available for HTTP connectors** : This option, when activated, makes the Java machine write traces about SSL dialogs in Convertigo in *stdout* console.

{{site.data.alerts.note}}
SSL dialogs are used in Convertigo in every connector trying to reach the host it is configured to connect to using SSL, i.e. when the connector's SSL mode property is checked.
{{site.data.alerts.end}} 

{{site.data.alerts.important}}
If you activate this option, you will have to restart the Java machine as it is the one writing traces, it does not take the property into account directly.
{{site.data.alerts.end}}

- **SSL issuers** : This parameter allows to enter a list os SSL issuers to be added to the standard issuers list, used to validate client certificates.

{{site.data.alerts.note}}
The Certificates page of the Administration Console defines certificates positioned on projects requiring them. When Convertigo tries to validate a client certificate, this certificate is validated by a list of issuers. These issuers have to be known for the certificate to be validated completely. The standard list of issuers may be incomplete, this is why this property exists.
{{site.data.alerts.end}}

### Cache

Edit the cache parameters in Cache tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

- **Cache manager class** : This parameter allows you to override the cache management Java class by a class of your own in case of file cache type set in the Cache page of the Administration Console.

{{site.data.alerts.important}}
Beware that this option has to be used by very advanced users, or on the advice of the Convertigo team. Otherwise, this could lead to a non-functioning cache feature.
{{site.data.alerts.end}}

- **File cache directory** : This parameter defines the folder where cache files have to be saved, in the case of file cache type set in the Cache page of the Administration Console.

{{site.data.alerts.note}}
Two cache types can be chosen, file or database. For more information on the Cache page of the Administration Console, <a href="#cache-1">see Cache</a>.
{{site.data.alerts.end}}

- **Cache scan delay (in seconds)** : This parameter defines the time in seconds to wait between two cache cleaning processes. It is taken into account for both file and database cache types.

{{site.data.alerts.note}}
Cache cleaning process is the deletion of expired cache entries, found using the expiry date of the cache entry.
{{site.data.alerts.end}}

- **Disable Cache** : This option, when activated, deactivates cache feature for the whole server. The running projects can then be tested out of any cache environment.

- **Allow to cache responses in memory until the next GC** : Allows caching responses in memory using weak references, until the next garbage collection.

### Analytics

Configure analytics persistence and Google Analytics integration in the Analytics tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

This tab includes an Advanced properties section that can be opened by following the procedure [To access the advanced properties of a configuration category](#to-access-the-advanced-properties-of-a-configuration-category). 
In the Advanced properties section, configure the advanced parameters of the analytics feature, i.e. all properties defining the database into which the tickets are stored.

- [Properties](#properties-4)
- [Advanced properties](#advanced-properties-4)

#### Properties

- **Enable persistence analytics (JDBC)** : Enables persistence of analytics data into a JDBC database.

- **Enable google analytics** : Enables Google Analytics tracking integration.

{{site.data.alerts.note}}
The analytics feature in Convertigo server consists in writing in a database one entry, also known as <b>ticket</b>, for each executed transaction or sequence, including its name, relative information, as well as a <b>"score"</b> calculated depending on the connector type. For more information on the analytics feature, see the appendix “Analytics in Convertigo Server”.<br><br>
Technically, Convertigo uses Hibernate (version 4.3) to connect to this database. The following properties, that allow configuring the connection to the analytics database, are based on Hibernate configuration.<br><br>
For more information, <a href="http://docs.jboss.org/hibernate/orm/4.3/devguide/en-US/html/ch01.html">see the Hibernate documentation</a> 
{{site.data.alerts.end}}

#### Advanced properties

- **Persistence SQL Dialect** : This parameter defines the Hibernate SQL dialect used by JDBC analytics persistence.

{{site.data.alerts.note}}
For more information on the Hibernate Dialects, <a href="http://docs.jboss.org/hibernate/orm/4.3/devguide/en-US/html/ch01.html#configuring-dialects">see the Hibernate documentation</a>: 
{{site.data.alerts.end}}

- **Persistence JDBC driver** : JDBC driver used to connect to the analytics database.

{{site.data.alerts.note}}
Other drivers than those existing for SQL connector may be used. They only have to be installed in Convertigo before use.<br>
Request for Convertigo support for installing a new SQL driver in Convertigo.
{{site.data.alerts.end}}

- **Persistence JDBC URL** : JDBC URL used to connect to the analytics database.

- **Persistence JDBC username** and **Persistence JDBC password** : Credentials used to connect to the analytics database.

- **JDBC max retry on connection failed** : Defines the number of retries when a JDBC connection fails.

- **Google Analytics Measurement ID** : Measurement identifier for Google Analytics integration.

- **Google Analytics API Secret** : API secret used for Google Analytics measurement protocol requests.


{{site.data.alerts.note}}
For more information on the Hibernate JDBC configuration, <a href="http://docs.jboss.org/hibernate/orm/4.3/devguide/en-US/html/ch01.html#hibernate-jdbc-properties">see the Hibernate documentation</a>
{{site.data.alerts.end}}

### Notifications

Enable the notifications feature in Notifications tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

This tab includes an Advanced properties section that can be opened by following the procedure [To access the advanced properties of a configuration category](#to-access-the-advanced-properties-of-a-configuration-category). 
In the Advanced properties section, configure the advanced parameters of the notifications feature.

- [Properties](#properties-5)
- [Advanced properties](#advanced-properties-5)

#### Properties

- **Notify project deployment** : This option, when checked, enables email notifications about project deployments on the Convertigo Server.

{{site.data.alerts.important}}
Beware that checking this option requires filling the Advanced properties.
{{site.data.alerts.end}}

#### Advanced properties

- **Target email** : this property defines the email address to which notifications will be sent.
- **STMP host** : this property defines the SMTP host of target email.
- **STMP port** : this property defines the SMTP port of target email, default is 465.
- **STMP user** : this property defines the SMTP username of target email.
- **STMP password** : this property defines the SMTP password of target email.

### Mobile builder

Edit the mobile builder parameters in Mobile builder tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

This tab includes an Advanced properties section that can be opened by following the procedure [To access the advanced properties of a configuration category](#to-access-the-advanced-properties-of-a-configuration-category). 
In the Advanced properties section, configure the advanced parameters of the mobile builder feature.

- [Properties](#properties-6)
- [Advanced properties](#advanced-properties-6)

#### Properties

- **<b>Mobile builder authentication</b> token** : This property defines the authentication token of the Mobile builder account to use to build the mobile application. The Mobile builder account is nothing more than a PhoneGap build account. It is referenced now by an authentication token. When building a mobile application, a Mobile builder account (PhoneGap build account) is mandatory. Convertigo provides one by default, used by default in Convertigo engine. This **Mobile builder authentication token** property allows you to define your own <b>Mobile builder authentication</b> token. It will be used by default for all mobile applications built by the Convertigo. It can still be overridden by the **Mobile builder authentication token** property in each Mobile application object in Convertigo projects.

{{site.data.alerts.note}}
The Convertigo mobile builder platform performs mobile application build thanks to PhoneGap build platform. Once a PhoneGap build account is configured thanks to the <b>Mobile builder authentication</b> token, do not forget to configure all mobile platforms certificates and keys in accordance. Find below the documentation of properties that need to be filled for mobile platforms certificates and keys.
{{site.data.alerts.end}}

- **Android certificate title, Android certificate password** and **Android keyStore password** : These properties define the Android certificate to use for building Android mobile applications. When building a mobile application for Android platform, an Android certificate (including title and password) is mandatory. When using default Convertigo's Mobile builder account, Convertigo's Android certificate is used. When using your own Mobile builder account, default PhoneGap Android certificate is used. These **Android certificate title, Android certificate password** and **Android keyStore password** properties allow to override the defaults Android certificate title, password and keystore password. They will be used by default for all Android mobile applications built by the Convertigo. They can still be overridden by the **Android certificate title, Android certificate password** and **Android keyStore password** properties in each Android mobile platform object in Convertigo projects.

{{site.data.alerts.note}}
The Android certificate is linked to the PhoneGap build account. Be aware to configure the <b>Mobile builder authentication token</b> and the <b>Android certificate</b> accordingly: the <b>Android certificate</b> must be one of the "Signing keys" declared in the PhoneGap build account.
{{site.data.alerts.end}}


- **iOS certificate title** and **iOS certificate password** : These properties define the iOS certificate to use for building iOS mobile applications. When building a mobile application for iOS platform, an iOS certificate (including title and password) is mandatory. When using default Convertigo's Mobile builder account, Convertigo's iOS certificate is used. When using your own Mobile builder account, default PhoneGap iOS certificate is used. These **iOS certificate title** and **iOS certificate password** properties allow to override the defaults iOS certificate title and password. They will be used by default for all iOS mobile applications built by the Convertigo. They can still be overridden by the **iOS certificate title** and **iOS certificate password** properties in each iOS mobile platform object in Convertigo projects.

{{site.data.alerts.note}}
The iOS certificate is linked to the PhoneGap build account. Be aware to configure the <b>Mobile builder authentication token</b> and the <b>iOS certificate</b> accordingly: the <b>iOS certificate</b> must be one of the "Signing keys" declared in the PhoneGap build account.
{{site.data.alerts.end}}


#### Advanced properties

- **Mobile builder platform URL** : This property defines the URL of the Convertigo mobile builder platform to use when building the mobile applications. This platform is delivered by Convertigo and should not be modified.

{{site.data.alerts.important}}
<b>Beware that this option has to be used by very advanced users, or on the advice of the Convertigo team. Otherwise, this could lead to a non-functioning mobile builder feature.</b>
{{site.data.alerts.end}}

### Full sync

Edit the Full sync parameters in Full sync tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

- **Use PouchDB for FullSync (prefer CouchDB for production)** : Enables PouchDB mode for FullSync. For production environments, CouchDB is recommended.
- **Couch DB URL for FullSync**: This property defines the URL of the Couch DB server used by Convertigo as the main repository for data replication.
- **Couch DB username for FullSync**: This property defines the default username used by Convertigo for synchronization operations
- **Couch DB password for FullSync**: This property defines the default password used by Convertigo for synchronization operations

{{site.data.alerts.note}}
Couch DB URL property is set to <b>http://127.0.0.1:5984</b> as default value.

Couch DB username and password properties are set to <b>empty</b> as default values.
{{site.data.alerts.end}}

#### Advanced properties

- **Couch DB prefix for all FullSync databases**: This property defines a prefix for the real CouchDB DB name for each FullSync connectors of the server. Set to **myprefix**, the **myfs** FullSync connector will be **myprefix_myfs** CouchDB database. Useful for a shared CouchDB cluster; acts like a **namespace**. Empty prefix means no prefix at all.

{{site.data.alerts.important}}
<b>Prefix name must respect CouchDB database restriction:</b>
<ul><li>Name must begin with a lowercase letter (a-z)</li>
<li>Lowercase characters (a-z)</li>
<li>Digits (0-9)</li>
<li>Any of the characters _, $, (, ), +, -, and /</li></ul>
{{site.data.alerts.end}}

### Session management

Edit the session parameters in Session management tab. This tab can be opened by following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

- **Server-side store for session data (tomcat, redis)** : Chooses where server-side session data is stored.
- **Redis hostname used by the session manager** : Defines Redis host for session storage.
- **Redis port used by the session manager** : Defines Redis port for session storage.
- **Redis username (optional)** : Optional Redis username.
- **Redis password (optional)** : Optional Redis password.
- **Redis logical database index** : Redis logical database index used for session storage.
- **Enable SSL/TLS for the Redis connection** : Enables SSL/TLS on the Redis connection.
- **Redis command timeout in milliseconds** : Command timeout used for Redis operations.
- **Redis key prefix for stored sessions** : Prefix added to Redis keys storing sessions.
- **Name of the HTTP cookie carrying the session token** : Name of the session cookie exposed to clients.
- **Default session TTL in seconds when no timeout is specified** : Default session lifetime when no explicit timeout is set.
- **Disable SSL certificate validation for internal admin forwarding** : Disables certificate validation for internal admin forwarding only.

## Connections

The left menu contains a link to the **Connections** page. This page displays real-time activity on the Convertigo Server.
This section introduces the Connections page and its main areas:

- [Connections page](#connections-page)
- [Connections table](#connections-table)

### Connections page

The Connections page displays global counters, active HTTP sessions, and active contexts.

{% include image.html file="guide_img/admin-console-18-administration-console-connections-page.png" caption="Figure: Administration Console Connections page" %}

### Connections table

In 8.4, the Connections page is split into three data areas:

- **Global counters**: shows `Contexts In Use`, `Threads In Use`, `Sessions In Use`, and `Max http session inactivity`.
- **Sessions**: lists active HTTP sessions with user, roles, activity, client IP, and actions.
- **Contexts**: lists active request contexts with project/connector/requested object and actions.

At the top of the page, the **Delete all Sessions and Contexts** action clears all active sessions and contexts.

Sorting features are available:

- Global counters can be sorted by clicking each column title.
- Sessions can be sorted by clicking each column title.
- Contexts can be sorted by clicking each column title.

In the **Sessions** area, available actions include opening logs for a session, filtering contexts by session, and deleting a session.

In the **Contexts** area, available actions include opening logs for a context and deleting a context.

To focus the Contexts table on one HTTP session, use the **Filter contexts by this session** action in the corresponding session row.

{{site.data.alerts.note}}
Some actions can be disabled depending on the current user permissions and runtime state.
{{site.data.alerts.end}}

{{site.data.alerts.tip}}
Use the logs action to open runtime traces related to a session or context. For more information, see [Logs](#logs).
{{site.data.alerts.end}}

## Projects

The left menu contains a link to the **Projects** page. This page contains information related to projects currently deployed on the Convertigo Server.

This section introduces the Projects page and its main operations:

- [Projects page](#projects-page)
- [Projects table](#projects-table)

### Projects page

The Projects page displays all deployed projects and available actions.
{% include image.html file="guide_img/admin-console-19-administration-console-projects-page.png" caption="Figure: Administration Console Projects page" %}

### Projects table

The Projects table lists projects deployed on the Convertigo Server.

This section is separated in the following paragraphs:

- [Description of the Projects table](#description-of-the-projects-table)
- [Deploying a project](#deploying-a-project)
- [Importing a project from URL](#importing-a-project-from-url)
- [Reloading a project](#reloading-a-project)
- [Exporting a project](#exporting-a-project)
- [Editing a project](#editing-a-project)
- [Deleting a project](#deleting-a-project)
- [Testing a project](#testing-a-project)

#### Description of the Projects table

For each project, the table includes:

- **Project**: project technical name.
- **Comment**: optional project description.
- **Version**: project version.
- **Exported**: last export date.
- **Deployment**: last deployment date.
- **Actions**:
  - Show undefined global symbols (when applicable)
  - Edit project configuration
  - Reload project
  - Export project
  - Open project dashboard
  - Delete project

At the top of the page:

- **Deploy project** opens a dialog to upload a `.car`/`.zip` file.
- **Import a Remote Project URL** opens a dialog to import from a remote Git/HTTP source.

{{site.data.alerts.note}}
Project actions can be disabled depending on user permissions and project state.
{{site.data.alerts.end}}

The page also includes:

- a search field to filter displayed projects,
- sortable columns by clicking table headers (project/comment/version/exported/deployment).

#### Deploying a project

##### To deploy a project

In the Projects page header, click **Deploy project**.

In the deploy dialog, either drop a `.car`/`.zip` archive or use file selection. If needed, enable the *Assemble XSL files* option, then click **Deploy**.

If a project with the same name already exists, deployment updates the project on the server.

#### Importing a project from URL

##### To import a project from a remote URL

In the Projects page header, click **Import a Remote Project URL**.

In the import dialog, enter one of the supported formats:

- `<project name>=<git or http URL>[:path=<optional subpath>][:branch=<optional branch>]`
- a Convertigo archive HTTP(S) URL

Click **Import** to start the remote import.

#### Reloading a project

{{site.data.alerts.tip}}
Reloading a project can interrupt current executions using that project.
{{site.data.alerts.end}}

##### To reload an existing project

In the project row, click the **Reload project** action, then confirm.

#### Exporting a project

##### To export an existing project

In the project row, click the **Export project** action.

A project archive (`.car`) is generated and downloaded.

#### Editing a project

##### To edit an existing project

In the project row, click **Edit project configuration**.

The selected row expands and displays:

- a **Tree View** panel to browse project objects,
- editable property groups (for example Base properties / Expert / Information),
- **Save changes** and **Cancel changes** actions.

Update the needed properties, then click **Save changes**.

#### Deleting a project

##### To delete an existing project

In the project row, click **Delete project**, then confirm.

#### Testing a project

##### To test an existing project

In the project row, click **Open project dashboard** to open the project runtime/test endpoints.

## Certificates

The left menu contains a link to the **Certificates** page. This page lets you manage certificate entries used by Convertigo authentication flows.

This section introduces the Certificates page and its main elements:

- [Certificates page](#certificates-page)
- [Certificates table](#certificates-table)
- [Mappings](#mappings)

### Certificates page

The page is organized in two parts:

- a certificates management table (top),
- a mappings section (bottom) to associate authentication contexts with certificate entries.

{% include image.html file="guide_img/admin-console-20-administration-console-certificates-page.png" caption="Figure: Administration Console Certificates page" %}

### Certificates table

The certificates table provides one row per certificate/store entry.

For each entry, you can configure:

- **Type** (`Server` or `Client`)
- **Password**
- **Group**
- row **Actions** (update/delete)

Top-level actions are:

- **Install a new certificate**
- **Remove a certificate**

#### Installing a certificate

##### To install a new certificate

**1**. Click **Install a new certificate**.

**2**. Choose or drag a certificate file (`*.pfx`, `*.p12`, `*.cer`, `*.store`).

**3**. Click **Install**.

{% include image.html file="guide_img/admin-console-21-install-certificate-dialog.png" caption="Figure: Install certificate dialog" %}

#### Updating or deleting an entry

##### To update an existing entry

Edit the row fields (**Type**, **Password**, **Group**) then click the row **Update** action.

##### To delete an existing entry

Use the row **Delete** action, then confirm.

### Mappings

The **Mappings** section associates authentication contexts with certificates:

- **Mappings for anonymous users** (project to certificate),
- **Mappings for identified users** (project/server/group/user to certificate).

Use row actions in this section to update or delete mappings.

## Logs

The left menu contains a link to the **Logs** page. This page provides traces of Convertigo engine executions, updated in real-time.

Use this page to:

- monitor runtime activity,
- inspect warnings/errors,
- troubleshoot execution flows while the server is running,
- adjust logger levels for targeted diagnostics.

This section introduces the Logs page and its three operating modes:

- [Logs page](#logs-page)
- [Viewer mode](#viewer-mode)
- [Purge mode](#purge-mode)
- [Log levels mode](#log-levels-mode)

### Logs page

The Logs page header shows the active timezone and a mode selector:

- **Viewer**
- **Purge**
- **Log Levels**

{% include image.html file="guide_img/admin-console-22-administration-console-logs-page-viewer-mode.png" caption="Figure: Administration Console Logs page (Viewer mode)" %}

### Viewer mode

**Viewer** is the default mode. It is used to explore and follow logs in real time.

The top toolbar provides:

- a **Preset** selector for date/time ranges,
- start and end date/time fields,
- a **live** toggle to keep the end date synchronized with current time,
- **Server filter** and **Server search** actions.

The main panel provides:

- a logs table,
- fullscreen/search/filter actions,
- navigation actions (scroll top/bottom),
- an **auto tail** toggle.

{% include image.html file="guide_img/admin-console-23-viewer-table-and-filters.png" caption="Figure: Viewer table and filters" %}

#### Log columns

Depending on the current engine log format, the table can expose fields such as:

- **Date**
- **Time**
- **Delta**
- **Category**
- **Thread**
- contextual fields like **user**, **project**, **sequence**, **connector**, **transaction**, **contextid**, **uid**, **uuid**, **clientip**, **clienthostname**
- **Message**

These columns can be sorted and filtered directly from the table header.

#### Using filters and search

Use **Server filter** to apply structured filters and **Server search** for full-text search.

Use the filter/search icons inside the table toolbar to refine loaded rows without changing server log configuration.

##### To inspect a specific execution window

**1**. Select a time range using **Preset** or manual date/time fields.

**2**. Disable **live** mode if you want a fixed historical window.

**3**. Use **Server filter** to narrow by contextual fields (for example project/context/thread).

**4**. Use **Server search** or table search to find keywords/exceptions.

##### To monitor logs live

**1**. Set a short recent time range.

**2**. Enable **live** mode.

**3**. Keep **auto tail** enabled to follow newest entries.

{{site.data.alerts.tip}}
When troubleshooting a single request, start from Connections page actions (open logs for a session/context), then refine in Logs using `contextid`, `uid` or `uuid`.
{{site.data.alerts.end}}

### Purge mode

Use **Purge** mode to remove archived log files by time segment.

In this mode:

- logs are split into multiple files (steps),
- a slider selects the target step/date,
- the **Purge** action deletes selected logs.

##### To purge old logs

**1**. Switch to **Purge** mode.

**2**. Select the target date/step with the slider.

**3**. Click **Purge**.

**4**. Confirm the operation when prompted.

{{site.data.alerts.important}}
Purge permanently removes selected log files. Keep retention requirements and incident forensics needs in mind before deleting logs.
{{site.data.alerts.end}}

### Log levels mode

Use **Log Levels** mode to tune verbosity without editing configuration files manually.

This mode is used to configure:

- global output behavior (**Log into files**, **Log into the standard console output**),
- root level (global logger),
- component-specific levels (for example admin, audit/context, engine, scheduler, security, user-related loggers).

Available levels are:

- **FATAL**
- **ERROR**
- **WARN**
- **INFO**
- **DEBUG**
- **TRACE**

For inherited behavior, use empty value where supported (inherits from root logger).

##### To increase verbosity for targeted troubleshooting

**1**. Switch to **Log Levels** mode.

**2**. Keep the **Root logger** unchanged when possible.

**3**. Increase only the relevant component logger (for example context/engine/scheduler) to **DEBUG** or **TRACE**.

**4**. Reproduce the issue.

**5**. Return the logger to its previous value after analysis.

{{site.data.alerts.note}}
Use targeted logger changes instead of global TRACE to limit performance impact and log volume.
{{site.data.alerts.end}}

For exhaustive property names and defaults, see:

- [Appendix: Logs](../appendixes/#logs)
- [Appendix: Logs advance](../appendixes/#logs-advance)

## FullSync

The left menu entry currently labeled **FS** is the FullSync administration page.
In the menu, this entry is located between **Logs** and **Cache**.

This page is the Administration Console equivalent of **Fauxton** for exploring the CouchDB server configured in **Config > Full sync** settings.

### FullSync page

The FullSync page lets you browse and operate databases available on the configured server.

{% include image.html file="guide_img/admin-console-24-administration-console-fullsync-page-database-list.png" caption="Figure: Administration Console FullSync page (database list)" %}

Use this page to:

- refresh the database list,
- search and sort databases,
- inspect database metrics (**Docs**, **Size**, **Seq**),
- open selected database details,
- access related JSON endpoints.

### Exploring a database

Open a database (for example **actions**) from the list to access its explorer view.

{% include image.html file="guide_img/admin-console-25-fullsync-database-explorer-documents-and-views.png" caption="Figure: FullSync database explorer (documents and views)" %}

In this view, you can:

- list documents from **All Documents**,
- browse **Design Documents** and available **Views**,
- run a view by clicking its name,
- switch result rendering (**Table**, **Metadata**, **JSON**),
- access database JSON/help endpoints.

### Editing a document

Click a document ID to open its JSON editor.

{% include image.html file="guide_img/admin-console-26-fullsync-document-editor.png" caption="Figure: FullSync document editor" %}

Edit the JSON content, then click **Save Changes**.

{{site.data.alerts.important}}
Deleting a database or a document from FullSync permanently removes its content. Ensure you have a backup before deletion.
{{site.data.alerts.end}}

## Cache

The left menu contains a link to the **Cache** page. This page lets you configure how Convertigo stores cached responses.

This section introduces the Cache page and details the following elements:

### Cache page

The Cache page displays the selected cache mode and, when **Database** mode is selected, additional database settings.

{% include image.html file="guide_img/admin-console-27-administration-console-cache-page.png" caption="Figure: Administration Console Cache page" %}

### Cache settings

The Cache page provides:

- a **Cache Type** selector (**File** or **Database**),
- actions (**Apply**, **Create Table and Apply** in Database mode, **Cancel**, **Clear entries**),
- database configuration cards when **Database** is selected.

This section is separated in the following paragraphs:

- [Introducing the cache feature](#introducing-the-cache-feature)
- [Configuring the cache](#configuring-the-cache)
- [Clearing cache entries](#clearing-cache-entries)

#### Introducing the cache feature

The cache feature stores Transaction/Sequence responses to avoid unnecessary backend calls.

Two cache persistence modes are available:

- **File** mode (default)
- **Database** mode

{{site.data.alerts.tip}}
For more information about configuring Transaction or Sequence objects for cache, see "Response lifetime property" in the Reference Manual
{{site.data.alerts.end}}


#### Configuring the cache

##### To configure the cache to file

**1**. Select **File** in the Cache Type section.

**2**. Click **Apply**.

##### To configure the cache to database

**1**. Select **Database** in the Cache Type section.

**2**. In the database configuration area, select the database engine and fill the required connection, authentication, and table fields:

**3**. Click **Create Table and Apply** for the first initialization, or click **Apply** if the cache table already exists.

#### Clearing cache entries

##### To clear all stored cache entries

**1**. Click **Clear entries**.

**2**. Confirm the action if prompted.

## Scheduler

The left menu contains a link to the **Scheduler** page. This page lets you schedule automatic executions by combining:

- a **Job** (what to execute: transaction, sequence, or jobs group),
- a **Schedule** (when to execute: CRON or Run Now),
- a **Scheduled job** (the association between a Job and a Schedule).

This section introduces the Scheduler page and its main tables:

- [Scheduler page](#scheduler-page)
- [Jobs table](#jobs-table)
- [Schedules table](#schedules-table)
- [Scheduled jobs table](#scheduled-jobs-table)

### Scheduler page

The Scheduler page contains three tables:

- **Jobs**
- **Schedules**
- **Scheduled jobs**

{% include image.html file="guide_img/admin-console-28-administration-console-scheduler-page.png" caption="Figure: Administration Console Scheduler page" %}

### Jobs table

The **Jobs** table defines what will be executed.

Use this table to:

- create a **New Job Sequence**, **New Job Transaction**, or **New Jobs Group**,
- enable/disable a job,
- edit or delete an existing job.

### Schedules table

The **Schedules** table defines when a job should run.

Use this table to:

- create a **New Cron** schedule,
- create a **New Run Now** schedule,
- enable/disable, edit, or delete existing schedules.

The table also displays the next execution time (for CRON schedules) and schedule details.

### Scheduled jobs table

The **Scheduled jobs** table links a Job with a Schedule.

Use this table to:

- create a **New Scheduled Job** association,
- enable/disable, edit, or delete existing scheduled jobs,
- check the **Info** status to see whether the scheduled job is ready to run.

### Typical workflow

To schedule an automatic execution:

**1**. Create the target execution in **Jobs**.

**2**. Create the trigger in **Schedules**.

**3**. Create the association in **Scheduled jobs**.

{{site.data.alerts.note}}
Scheduled jobs that use an enabled **Run Now** schedule start immediately (or when re-enabled), then auto-disable after execution.
{{site.data.alerts.end}}

## Roles

The left menu contains a link to the **Roles** page. This page lets you manage Administration Console users and grant per-feature permissions.

This section introduces the Roles page and its main actions:

- [Roles page](#roles-page)
- [Roles table](#roles-table)

### Roles page

The page displays existing users, assigned roles, and user management actions.

{% include image.html file="guide_img/admin-console-29-administration-console-roles-page.png" caption="Figure: Administration Console Roles page" %}

### Roles table

The Roles table lists all Administration Console users.

For each row, the table provides:

- **User** name
- assigned **Roles** as tags
- row **Actions** (edit and delete user)

At the top of the page, available actions are:

- **Add User**
- **Import**
- **Export**
- **Delete All**

#### Adding a user

##### To add a user

**1**. Click **Add User**.

**2**. Fill in **Username** and **Password**.

**3**. Configure permissions in the role matrix:

- **View** grants read access,
- **Config** grants update/configuration rights.

**4**. Optionally configure **Test Platform** mode (**No**, **View**, **Hidden**, **Private**).

**5**. Click **Add**.

{% include image.html file="guide_img/admin-console-30-add-user-dialog.png" caption="Figure: Add user dialog" %}

#### Editing a user

##### To edit an existing user

**1**. In the target row, click **Edit user**.

**2**. Update password and/or permissions.

**3**. Click **Edit**.

{% include image.html file="guide_img/admin-console-31-edit-user-dialog.png" caption="Figure: Edit user dialog" %}

#### Deleting a user

##### To delete an existing user

**1**. In the target row, click **Delete user**.

**2**. Confirm the deletion.

{% include image.html file="guide_img/admin-console-32-user-deletion-confirmation.png" caption="Figure: User deletion confirmation" %}

#### Importing users

##### To import roles/users from a file

**1**. Click **Import**.

**2**. Select a `.json` export file.

**3**. Choose the import policy and name conflict priority.

**4**. Click **Import**.

{% include image.html file="guide_img/admin-console-33-import-users-dialog.png" caption="Figure: Import users dialog" %}

#### Exporting users

##### To export roles/users

Click **Export** to download the current users/roles definition as a `.json` file.

#### Deleting all users

##### To delete all users

**1**. Click **Delete All**.

**2**. Confirm the operation.

{% include image.html file="guide_img/admin-console-34-delete-all-users-confirmation.png" caption="Figure: Delete all users confirmation" %}

## Keys

The left menu contains a link to the **Keys** page. This page lets you review installed license keys and add new ones.

This section introduces the Keys page and its main actions:

- [Keys page](#keys-page)
- [Keys table](#keys-table)

### Keys page

The Keys page displays all keys grouped by category.

{% include image.html file="guide_img/admin-console-35-administration-console-keys-page.png" caption="Figure: Administration Console Keys page" %}

### Keys table

The Keys table is grouped by key category (for example: **Standard Edition**, **Mobile Builder**, **Full Sync**, **SAP JCO**, ...).

#### Description of the Keys table

For each category, the page displays:

- the category name,
- usage counters (`used`, maximum, and `left`),
- one or more key rows with:
  - the key identifier,
  - current usage (`session(s)` or `connection(s)`),
  - expiration (`Until ...` or `Unlimited`),
  - a delete action.

{% include image.html file="guide_img/admin-console-36-keys-category-details.png" caption="Figure: Keys category details" %}

#### Adding a key

##### To add a key

**1**. In the top-right area of the page, enter the new key in **Enter a new key**.

**2**. Click **Add**.

**3**. The server validates the key and displays a notification. If valid, the key is added to its category and counters are updated.

#### Deleting a key

##### To delete an existing key

**1**. In the target key row, click the delete action.

**2**. Confirm the deletion:
{% include image.html file="guide_img/admin-console-37-key-deletion-confirmation.png" caption="Figure: Key deletion confirmation" %}

**3**. Click **Yes** to delete the key or **No** to abort.

## Global Symbols

The left menu contains a link to the **Symbols** page. This page lets you manage server-level symbols used by Convertigo projects.

This section introduces the Symbols page and its main actions:

- [Global symbols page](#global-symbols-page)
- [Global symbols table](#global-symbols-table)

### Global symbols page

The page displays symbols, environment variables, and management actions.

{% include image.html file="guide_img/admin-console-38-administration-console-symbols-page.png" caption="Figure: Administration Console Symbols page" %}

### Global symbols table

A global symbol is a server-level variable that can be reused in Convertigo object properties.

Use these syntaxes in object values:

- `${symbol_name}`
- `${symbol_name=default_value}`

#### Description of the Global symbols table

The Global Symbols table lists all defined symbols.

For each symbol, the table provides:

- **Name**
- **Value**
- **Actions** (edit / delete)

At the top of the page, available actions are:

- **Add**
- **Add Secret**
- **Import**
- **Export**
- **Delete All**

#### Description of Environment variables table

The lower table lists system environment variables available for symbol values.

{% include image.html file="guide_img/admin-console-39-environment-variables-table.png" caption="Figure: Environment variables table" %}

Use an environment variable in a symbol value with:

- `%env_variable_name%`
- `%env_variable_name[=default_value]%`

#### Adding a symbol

##### To add a new symbol

**1**. Click **Add** (or **Add Secret** for a masked value).

**2**. Fill in symbol name and value in the dialog, then click **Add**.
{% include image.html file="guide_img/admin-console-40-add-symbol-dialog.png" caption="Figure: Add Symbol dialog" %}
{% include image.html file="guide_img/admin-console-41-add-secret-symbol-dialog.png" caption="Figure: Add Secret Symbol dialog" %}

**3**. The new symbol appears in the table.

#### Editing a symbol

##### To edit an existing symbol

**1**. In the symbol row, click the edit action.

**2**. Update the value, then click **Save**.
{% include image.html file="guide_img/admin-console-42-edit-symbol-dialog.png" caption="Figure: Edit Symbol dialog" %}

#### Deleting a symbol

##### To delete an existing symbol

**1**. In the symbol row, click the delete action.

**2**. Confirm the deletion:
{% include image.html file="guide_img/admin-console-43-symbol-deletion-confirmation.png" caption="Figure: Symbol deletion confirmation" %}

**3**. Click **Yes** to delete the symbol or **No** to abort.

##### To delete all existing symbols

**1**. Click **Delete All** at the top of the page.

**2**. Confirm the deletion:
{% include image.html file="guide_img/admin-console-44-delete-all-symbols-confirmation.png" caption="Figure: Delete all symbols confirmation" %}

**3**. Click **Yes** to delete all symbols or **No** to abort.

#### Importing symbols

{{site.data.alerts.tip}}
Before import, a backup file of the current symbols configuration is created automatically.
{{site.data.alerts.end}}

##### To import symbols from a configuration file

**1**. Click **Import**.

**2**. In the import dialog, choose the import policy and conflict priority.

**3**. Select a `.properties` file, then click **Import**.
{% include image.html file="guide_img/admin-console-45-symbols-import-dialog.png" caption="Figure: Symbols import dialog" %}

#### Exporting symbols

##### To export symbols to a configuration file

**1**. Click **Export** to enter selection mode.

**2**. Select symbols individually or use **Select All**.
{% include image.html file="guide_img/admin-console-46-symbols-selected-for-export.png" caption="Figure: Symbols selected for export" %}

**3**. Click **Export [n]** to download `global_symbols.properties`, or click **Cancel** to leave export mode.
