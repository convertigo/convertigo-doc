---
layout: page
title: Site Clipper transaction
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/site-clipper-transaction/
metadesc: Defines a transaction for a  Site Clipper connector .    A  Site Clipper transaction  allows Convertigo to connect to a remote web server hosted at th
ObjGroup: SiteClipper
ObjCatName: 
ObjName: Site Clipper transaction
ObjClass: com.twinsoft.convertigo.beans.transactions.SiteClipperTransaction
ObjIcon: /images/beans/transactions/images/siteclippertransaction_color_32x32.png
topnav: topnavobj
---
##### Defines a transaction for a *Site Clipper connector*.

A *Site Clipper transaction* allows Convertigo to connect to a remote web server hosted at the URL defined in **Target URL** property.

Its execution does not return data from the target server, but specifies a redirection URL to its parent connector. This rewritten URL is an absolute URL pointing to the current Convertigo project, with a particular syntax:

- it starts with the usual project's path,
- it then specifies the Convertigo context and the *Site Clipper connector* to use,
- it ends with the `.siteclipper` extension,
- after the extension, the target resource URL is concatenated, replacing the '`://`' symbols after the target resource protocol, `http://` for example, by a '`/`' character.

This gives the following URL form:

`http://<convertigo_server_host>:<convertigo_server_port>/convertigo/projects/<project_name>/context=<context_name>,connector=<connector_name>.siteclipper/<target_resource_protocol>/<target_resource_host>/<target_resource_URI>`.The *Site Clipper connector* accessed thanks to this URL then relays all HTTP messages between the client and the target server.

To sum up, the *Site Clipper transaction* is used to initiate a site clipping process on a website, including the initialization of a context in the Convertigo server.

**Note:** See *Site Clipper connector* and all related objects (*Screen class*, criteria, extraction rules,etc.) documentation for more information on how to manipulate the relayed HTTP data for site clipping purpose.


Property | Type | Category | Description
--- | --- | --- | ---
Accessibility | Accessibility | standard | Defines the transaction/sequence accessibility.<br/>This property can take the following values:<br/><br/>- `Public`: The transaction/sequence is runnable from everyone and everywhere, visible in the Test Platform and is also exposed in the SOAP WSDL as a web service method.<br/>- `Hidden`: The transaction/sequence is runnable but only from people who know the execution URL, not visible in the Test Platform nor exposed in the SOAP WSDL.<br/>- `Private`: The transaction/sequence is only runnable from within the Convertigo engine (*Call Transaction*/(*Call Sequence* steps), is not visible in the Test Platform and cannot be requested as SOAP web service method. This value is used for tests, unfinished transactions/sequences or functionalities not to be exposed. Private transactions/sequences remain runnable in the Studio, for the developer to be able to test its developments.<br/><br/>**Note:** In the Test Platform:<br/><br/>- The administrator user (authenticated in Administration Console or Test Platform) can see and run all transactions / sequences, no matter what their **accessibility** is.<br/>- The test user (authenticated in the Test Platform or in case of anonymous access) can see and run public transactions/sequences and run hidden ones if he knows their execution URL.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Response timeout | long | standard | Defines the response maximum waiting time (in seconds).<br/>Maximum time (in seconds) for a transaction/sequence to run. When specified time is reached, the transaction/sequence ends and returns a timeout error. If requested through the SOAP interface, the error is returned as a SOAP exception.
Target URL | String | standard | Defines the URL of a remote website to be clipped by Convertigo.<br/>This property defines the URL to which connect when starting the site clipping process thanks to this transaction.
Add statistics to response | boolean | expert | Defines whether some statistics of execution of the transaction/sequence should be added as data in the transaction/sequence's response.<br/>If this property is set to `true`, the transaction/sequence response will be enhanced with the statistics data of its execution (total time for the request, time spent waiting for the mainframe, etc.).<br/><br/>**Note:** This property has nothing to do with the general property of the Convertigo engine **Insert statistics in the generated document** that can be edited in the *Configuration* page of the *Administration Console*.
Authenticated context required | boolean | expert | Defines whether an authenticated context is required to execute the transaction/sequence.<br/>If this property is set to `true`, the context of execution of the transaction/sequence must have been authenticated. Otherwise, the transaction/sequence is not executed. Default value is `false` for a standard access to transactions/sequences.<br/><br/>**Note:**<br/><br/>- When a context is authenticated, all the contexts in the same HTTP session are also authenticated. For more information about context and HTTP session, see *Context general presentation* paragraph in *JavaScript Objects APIs* chapter.<br/>- When executing a transaction/sequence from stub (`__stub` variable passed to `true` in entry), this property is ignored. Indeed, executing from stub is for testing purposes and should not require any authentication: the context would never be authenticated as the transaction/sequence setting the context as authenticated could also be executed from stub.
Authenticated user as cache key | boolean | expert | Defines whether the authenticated user should be used as cache key.<br/>When the cache is enabled (**Response lifetime** setting filled with a time-to-live), the **Authenticated user as cache key** property allows to specify to use the authenticated user ID from context/session as an additional key to the cache.<br/><br/>It would have as effect that two different identified users cannot retrieve the cached response of the other for the same request. Default value is `false`: the authenticated user is not used as cache key.
Call the biller | boolean | expert | Defines whether the billing management module should be called for each generated XML document.<br/>If this property is set to `true`, the applicable billing management module, defined thanks to the connector's billing class name property, is invoqued. **This parameter should never be changed** (Convertigo private use only).
Character set | String | expert | Defines the character set used for operations on the generated XML document (default: `UTF-8`).
Include certificate group | boolean | expert | Includes the certificate group into the cache key.<br/>If set to `true`, the certificate group is added to the cache key which is used to determine whether the transaction's response should be pulled from the cache or not.<br/><br/>A transaction's cached response is pulled from the cache when all cache key values are corresponding to a stored cache entry.
Secure connection required | boolean | expert | Defines whether the transaction/sequence should be called through a secured connection (e.g. HTTPS).<br/>Depending on the requester, if this property is set to `true`, the transaction/sequence must be accessed through a secure connection (e.g. HTTPS in case of HTTP access). Default value is `false` for a standard access to transactions/sequences.
