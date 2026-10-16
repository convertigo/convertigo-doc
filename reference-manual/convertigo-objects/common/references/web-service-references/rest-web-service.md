---
layout: page
title: REST web service
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/references/web-service-references/rest-web-service/
metadesc: References a REST web service by creating the  HTTP connector  with all transactions matching the web service methods, referencing its WSDL file and i
ObjGroup: Common
ObjCatName: web-service-references
ObjName: REST web service
ObjClass: com.twinsoft.convertigo.beans.references.RestServiceReference
ObjIcon: /images/beans/references/images/RestServiceReference_32x32.png
topnav: topnavobj
---
##### References a REST web service by creating the <i>HTTP connector</i> with all transactions matching the web service methods, referencing its WSDL file and importing its schemas in this project. 

The <i>REST web service</i> reference creates an <i>HTTP connector</i> configured to target the web service. It automatically creates <i>HTTP transactions</i> for each method described by the web service, including their variables. <br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
YAML/JSON URL | String | standard | Defines the URL of the YAML/JSON file to import.<br/>
YAML/JSON local path | String | standard | Defines the Convertigo local path of the imported YAML/JSON file.<br/>
Auth password | String | expert | Defines the password to use for authentication.<br/>
Auth user | String | expert | Defines the username to use for authentication.<br/>
Authentication needed ? | boolean | expert | Defines if the reference resources need an authentication.<br/>
