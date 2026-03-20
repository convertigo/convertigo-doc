---
layout: page
title: BodyParameter
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/url-mapper/rest-api/parameters/bodyparameter/
metadesc: Defines a body parameter associated with the operation.   Extracts the variable value from the HTTP POST or  PUT body's payload.  Bodies can be encode
ObjGroup: URL Mapper
ObjCatName: parameters
ObjName: BodyParameter
ObjClass: com.twinsoft.convertigo.beans.rest.BodyParameter
ObjIcon: /images/beans/rest/images/bodyparameter_color_32x32.png
topnav: topnavobj
---
##### Defines a body parameter associated with the operation. 

Extracts the variable value from the HTTP POST or  PUT body's payload.<br/><br/>Bodies can be encoded in several input type such as JSON, XML, Binary or "Do not Convert". Convertigo will try to decode the body according to this setting to provide a "Sourceable" InpuVars object in your Sequence. If you choose "Do not convert" the payload will passed to your sequence just as a raw String.<br/><br/>Payloads can be described by a model name. You must give the model name in the "Model reference" property. All models are defined in the "Models" property of the UrlMapper object as JSON schema syntax.  

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Default value | Object | standard | Defines the parameter's default value(s).<br/>
Input content | DataContent | standard | Defines the data input content type.<br/>For Body Parameters only. Bodies can be encoded in several input type such as JSON, XML, Binary or "Do not Convert". Convertigo will try to decode the body according to this setting to provide a "Sourceable" InpuVars object in your Sequence. If you choose "Do not convert" the payload will passed to your sequence just as a raw String.
Input type | String | standard | Defines the data input type.<br/>For Body Parameters only. Defines if the payload is described by a model name. If yes you must give the model name in the "Model reference" property. All models are defined in the "Models" property of the UrlMapper object as JSON schema syntax.
Mapped variable name | String | standard | Defines the requestable variable's name to map with.<br/>By default parameters are automatically mapped to the same variable name of the target requestable. You can define an other specific mapping by using this property.
Model reference | String | standard | Defines a model's reference to use as body input.<br/>Give here the name of a JSON model defined in the the "Models" property of the UrlMapper object as JSON schema syntax.
isArray | Boolean | standard | Defines whether the parameter is an array.<br/>
isExposed | Boolean | standard | Defines whether the parameter is exposed to the api.<br/>
isRequired | Boolean | standard | Defines whether the parameter is required.<br/>The service will fail if the parameter is not supplied when invoked. Also the SWAGGER console will prevent invocation if the field is empty.
