---
layout: page
title: UrlMapper
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/url-mapper/urlmapper/
metadesc: Defines the URL mapper to use in the project.    The URL mapper is able to map RESTful urls to Convertigo requestables such as Sequences and Transacti
ObjGroup: URL Mapper
ObjCatName: 
ObjName: UrlMapper
ObjClass: com.twinsoft.convertigo.beans.core.UrlMapper
ObjIcon: /images/beans/core/images/urlmapper_color_32x32.png
topnav: topnavobj
---
##### Defines the URL mapper to use in the project.

The URL mapper is able to map RESTful urls to Convertigo requestables such as Sequences and Transactions.

This way Convertigo can expose RESTful APIs to the outside world. You can have only one URLMapper per project, but an URLmapper can map URLs to any other project deployed on the server.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Models | String | standard | Defines all model definitions.<br/>This property holds all the JSON models that the API has to expose. Write here as JSON Schema syntax the models (data Structures) that this API will handle (http://jsonschema.net may be helpful to generate schema from sample data). They will be used to generate sample data in the SWAGGER console.
Path prefix  | String | standard | Defines the prefix for all Path mappings.<br/>All RESTful apis starts by a prefix where you can insert a version number such as **/v1**. This way just changing the prefix will enable you to change the version number of an API.
