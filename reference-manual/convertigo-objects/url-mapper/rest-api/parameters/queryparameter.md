---
layout: page
title: QueryParameter
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/url-mapper/rest-api/parameters/queryparameter/
metadesc: Defines a query parameter associated with the operation.    QueryParameter extracts the variable value from the query string , ex  /accounts? verbose=
ObjGroup: URL Mapper
ObjCatName: parameters
ObjName: QueryParameter
ObjClass: com.twinsoft.convertigo.beans.rest.QueryParameter
ObjIcon: /images/beans/rest/images/queryparameter_color_32x32.png
topnav: topnavobj
---
##### Defines a query parameter associated with the operation.

QueryParameter extracts the variable value from the query string , ex: /accounts?**verbose=1**


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Default value | Object | standard | Defines the parameter's default value(s).
Input type | String | standard | Defines the data input type.<br/>For Body Parameters only. Defines if the payload is described by a model name. If yes you must give the model name in the "Model reference" property. All models are defined in the "Models" property of the UrlMapper object as JSON schema syntax.
Mapped variable name | String | standard | Defines the requestable variable's name to map with.<br/>By default parameters are automatically mapped to the same variable name of the target requestable. You can define an other specific mapping by using this property.
isArray | Boolean | standard | Defines whether the parameter is an array.
isExposed | Boolean | standard | Defines whether the parameter is exposed to the api.
isMultivalued | Boolean | standard | Defines whether the parameter is multivalued.<br/>If true the parameter is an Array. It will displayed as a set of fields in the swagger Console.
isRequired | Boolean | standard | Defines whether the parameter is required.<br/>The service will fail if the parameter is not supplied when invoked. Also the SWAGGER console will prevent invocation if the field is empty.
