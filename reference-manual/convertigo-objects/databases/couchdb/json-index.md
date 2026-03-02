---
layout: page
title: Json Index
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/databases/couchdb/json-index/
metadesc: Defines a Json Index.    The index object is a  JSON array  of field names following the sort syntax. Nested fields are also allowed, e.g. “person.nam
ObjGroup: Databases
ObjCatName: 
ObjName: Json Index
ObjClass: com.twinsoft.convertigo.beans.couchdb.JsonIndex
ObjIcon: /images/beans/couchdb/images/jsonindex_color_32x32.png
topnav: topnavobj
---
##### Defines a Json Index.

The index object is a **JSON array** of field names following the sort syntax. Nested fields are also allowed, e.g. “person.name”.


Property | Type | Category | Description
--- | --- | --- | ---
Ascending | boolean | standard | Defines if the Index is sorted ascending (asc) or descending (desc).
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Fields | XMLVector | standard | Fields of the index (JSON array).
