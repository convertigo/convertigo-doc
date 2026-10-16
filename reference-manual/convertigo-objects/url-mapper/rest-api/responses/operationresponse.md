---
layout: page
title: OperationResponse
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/url-mapper/rest-api/responses/operationresponse/
metadesc: Defines an HTTP response associated with the operation.   When a services is invoked it responds with a HTTP status code. This mapping object will hel
ObjGroup: URL Mapper
ObjCatName: responses
ObjName: OperationResponse
ObjClass: com.twinsoft.convertigo.beans.rest.OperationResponse
ObjIcon: /images/beans/rest/images/operationresponse_color_32x32.png
topnav: topnavobj
---
##### Defines an HTTP response associated with the operation. 

When a services is invoked it responds with a HTTP status code. This mapping object will help you define status codes such as 200, 401 or any other according to XPaths resolution done on a Convertigo Sequence response.<br/><br/>The Sequence response will be scanned by all the UrlMappingResponse objects defined for a given operation. The first one having its XPath matching will generate the corresponding status code.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Model reference | String | standard | Defines a model's reference to use as response body.<br/>
Status code | String | standard | Defines the status code associated with the response.<br/>
Status text | String | standard | Defines the status text associated with the response.<br/>
XPath condition | String | standard | Defines the xpath condition for which current response apply.<br/>Write it as an Xpath Expression matching a condition in a sequence response ex: //error
