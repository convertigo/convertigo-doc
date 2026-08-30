---
layout: page
title: GetOperation
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/url-mapper/rest-api/operations/getoperation/
metadesc: Defines an HTTP GET operation associated with the mapping.    For a given operation on a given mapping you define here what should be the Sequence or 
ObjGroup: URL Mapper
ObjCatName: operations
ObjName: GetOperation
ObjClass: com.twinsoft.convertigo.beans.rest.GetOperation
ObjIcon: /images/beans/rest/images/getoperation_color_32x32.png
topnav: topnavobj
---
##### Defines an HTTP GET operation associated with the mapping.

For a given operation on a given mapping you define here what should be the Sequence or Transaction (Requestable) to be executed, and how will the variables for this requestable will be mapped:

- To assign a requestable to this operation drag and drop a Sequence or a Transaction to this operation or edit the **Target requestable** property.
- To define a variable mapping, right click-> new and choose parameter type.
- To define a HTTP response code mapping, right click-> new and choose response.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Output content | OutputContent | standard | Defines the response format exposed by the operation: Json, Xml, Binary, Convertigo Xml (XSL), or automatic selection from the Accept header.
Target requestable | String | standard | Defines the target sequence or transaction to request for the operation.
Terminate session | boolean | expert | Defines whether the operation uses an ephemeral request session.<br/>If true, the operation receives an in-memory session for the duration of the request, without creating a servlet-container session, persistent record, or cookie. If false, the caller's HTTP session is inherited and left available after the operation.
