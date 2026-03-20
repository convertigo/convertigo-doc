---
layout: page
title: CouchDB connector
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/databases/couchdb/couchdb-connector/
metadesc: Establishes connections to a database of a CouchDB server.
ObjGroup: Databases
ObjCatName: 
ObjName: CouchDB connector
ObjClass: com.twinsoft.convertigo.beans.connectors.CouchDbConnector
ObjIcon: /images/beans/connectors/images/couchdbconnector_color_32x32.png
topnav: topnavobj
---
##### Establishes connections to a database of a CouchDB server.



Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Couch Password | String | standard | Defines the password of user for CouchDB.<br/>This property can be override with a <span class="computer">GetSessionTransaction</span>.
Couch Username | String | standard | Defines the name of user for CouchDB.<br/>This property can be override with a <span class="computer">GetSessionTransaction</span>.
Database name | String | standard | Defines the name of the default database to use, if one.
Is HTTPS | boolean | standard | Defines whether the connection is secured (HTTPS).<br/>If set to <span class="computer">true</span>, the connection is SSL-based. Make sure the target SSL port (usually 443) is correctly set.
JSON use type attributes  | boolean | standard | Defines if the XML to JSON converter handle <b>type</b> attribute to build JSON type.<br/>With this property true, the <b>type</b> attribute of the complex element is used to build jSON content to match that type. Types can be:<br/><br/>• object<br/>• array<br/>• string<br/>• boolean<br/>• null<br/>• integer<br/>• long<br/>• double<br/>• float<br/><br/>Without this 'type' attribute, the element is converted in the same way as the <b>false</b> value.You may use this setting to be sure that Complex jSON structures a preserved when you post them to the FullSync Connector.
Port | int | standard | Defines the server port.
Secure Database | boolean | standard | Defines if the Database need authentication for direct CouchDB access.<br/>If true, Convertigo will automatically configure the CouchDB Database with a _security document to deny anonymous direct access to CouchDB.
Server | String | standard | Defines the server name (or its IP address).<br/>This property defines the DNS name or IP address of the target application server.
Billing Java class | String | expert | Defines the Java class name executed for billing pruposes.<br/>Convertigo supports a plugin architecture offering billing functionalities. Set the name of the billing class to be called by Convertigo for billing purposes.
Carioca authentication | boolean | expert | Defines whether the connector requires a Carioca authentication.<br/>Set to <span class="computer">true</span> if you require that only Carioca-authenticated users be able to use this connector.
End transaction | String | expert | Defines the transaction to execute before removing the context.<br/>When a Convertigo context is removed, the specified "End transaction" is executed. Place in this transaction any clean up code, for example a Logout transaction.
