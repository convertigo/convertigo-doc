---
layout: page
title: PutOperation
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/url-mapper/rest-api/operations/putoperation/
metadesc: Defines an HTTP PUT operation associated with the mapping.    For a given operation on a given mapping you define here what should be the Sequence or 
ObjGroup: URL Mapper
ObjCatName: operations
ObjName: PutOperation
ObjClass: com.twinsoft.convertigo.beans.rest.PutOperation
ObjIcon: /images/beans/rest/images/putoperation_color_32x32.png
topnav: topnavobj
---
##### Defines an HTTP PUT operation associated with the mapping.

For a given operation on a given mapping you define here what should be the Sequence or Transaction (Requestable) to be executed, and how will the variables for this requestable will be mapped:

- To assign a requestable to this operation drag and drop a Sequence or a Transaction to this operation or edit the **Target requestable** property.
- To define a variable mapping, right click-> new and choose parameter type.
- To define a HTTP response code mapping, right click-> new and choose response.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Output content | DataContent | standard | Defines the data output content for the operation.
Target requestable | String | standard | Defines the target sequence or transaction to request for the operation.
Terminate session | boolean | expert | Defines if the session should be terminate if no other context exists in the session.<br/>If true and without named context for this session, the session ending is requested. If false, the session is not altered.
