---
layout: page
title: FullSync connector
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/fullsync/fullsync-connector/
metadesc: Establishes connections to the NoSQL CouchDB database for FullSync.   FullSync Connector enables reading and writing from the CouchDB database server 
ObjGroup: FullSync
ObjCatName: 
ObjName: FullSync connector
ObjClass: com.twinsoft.convertigo.beans.connectors.FullSyncConnector
ObjIcon: /images/beans/connectors/images/fullsyncconnector_color_32x32.png
topnav: topnavobj
---
##### Establishes connections to the NoSQL CouchDB database for FullSync. 

FullSync Connector enables reading and writing from the CouchDB database server configured for this Server. The CouchDB server access has to be configured in the engine settings. The FullSync connector supports several types of FullSync transactions to interact with the database. A standard process for using FullSync would be :<br /><br /> •  Having a Sequence to call some back end data source and read data <br /> •  Use the FullSync Connector to write data to the CouchDB server by using a PostBulkDocuments or a PostDocument transaction <br /> •  Having this data to be replicated to the mobile Device thanks to the replication protocol <br /> •  On the mobile device the user can modify and update local data <br /> •  Data is replicated back to the CouchDB server <br /> •  A FullSync listener will call an Update sequence with all the updated data <br /> •  This sequence is responsible to update data in the back end system. <br /> <br /><br />

Property | Type | Category | Description
--- | --- | --- | ---
Anonymous Replication | FullSyncAnonymousReplication | standard | Allow or deny pull synchronization for a non authenticated session.<br/>This property can be <span class="computer">allow</span> and anonymous user (no authenticated user) can pull replicate the FullSync database. The property can be <span class="computer">deny</span> and an authenticated user session is mandatory for pull synchronization.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
JSON use type attributes  | boolean | standard | Defines if the XML to JSON converter handle <b>type</b> attribute to build JSON type.<br/>With this property true, the <b>type</b> attribute of the complex element is used to build jSON content to match that type. Types can be:<br/><br/>• object<br/>• array<br/>• string<br/>• boolean<br/>• null<br/>• integer<br/>• long<br/>• double<br/>• float<br/><br/>Without this 'type' attribute, the element is converted in the same way as the <b>false</b> value.You may use this setting to be sure that Complex jSON structures a preserved when you post them to the FullSync Connector.
Secure Database | boolean | standard | Defines if the Database need authentication for direct CouchDB access.<br/>If true, Convertigo will automatically configure the CouchDB Database with a _security document to deny anonymous direct access to CouchDB.
Billing Java class | String | expert | Defines the Java class name executed for billing pruposes.<br/>Convertigo supports a plugin architecture offering billing functionalities. Set the name of the billing class to be called by Convertigo for billing purposes.
Carioca authentication | boolean | expert | Defines whether the connector requires a Carioca authentication.<br/>Set to <span class="computer">true</span> if you require that only Carioca-authenticated users be able to use this connector.
End transaction | String | expert | Defines the transaction to execute before removing the context.<br/>When a Convertigo context is removed, the specified "End transaction" is executed. Place in this transaction any clean up code, for example a Logout transaction.
