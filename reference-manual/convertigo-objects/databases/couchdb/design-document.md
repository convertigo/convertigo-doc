---
layout: page
title: Design document
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/databases/couchdb/design-document/
metadesc: Defines a CouchDB design document.    A  Design document  is a special CouchDB document which helps querying a CouchDB database.  You will be able to 
ObjGroup: Databases
ObjCatName: 
ObjName: Design document
ObjClass: com.twinsoft.convertigo.beans.couchdb.DesignDocument
ObjIcon: /images/beans/couchdb/images/designdocument_color_32x32.png
topnav: topnavobj
---
##### Defines a CouchDB design document.

A **Design document** is a special CouchDB document which helps querying a CouchDB database.

You will be able to define views, updates and filters in the design document. As design documents are replicated on the mobile devices as any other document, defining a view on the server side will enable to query the same view on the mobile device.

Views can also be queried on the server side by using  the **GetView** transaction.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
_id | String | standard | The document's identifier in the CouchDB database.
_rev | String | standard | The document's revision in the CouchDB database.
