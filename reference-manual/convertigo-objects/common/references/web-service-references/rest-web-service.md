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
##### References a REST web service by creating the *HTTP connector* with all transactions matching the web service methods, referencing its WSDL file and importing its schemas in this project.

The *REST web service* reference creates an *HTTP connector* configured to target the web service. It automatically creates *HTTP transactions* for each method described by the web service, including their variables.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
YAML/JSON URL | String | standard | Defines the URL of the YAML/JSON file to import.
YAML/JSON local path | String | standard | Defines the Convertigo local path of the imported YAML/JSON file.
Auth password | String | expert | Defines the password to use for authentication.
Auth user | String | expert | Defines the username to use for authentication.
Authentication needed ? | boolean | expert | Defines if the reference resources need an authentication.
