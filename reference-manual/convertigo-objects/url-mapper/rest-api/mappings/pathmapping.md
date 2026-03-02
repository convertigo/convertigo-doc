---
layout: page
title: PathMapping
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/url-mapper/rest-api/mappings/pathmapping/
metadesc: Defines an Path mapping associated with the mapper.    A Mapping defines the the base URL structure an API user will have to use to acess this API Ser
ObjGroup: URL Mapper
ObjCatName: mappings
ObjName: PathMapping
ObjClass: com.twinsoft.convertigo.beans.rest.PathMapping
ObjIcon: /images/beans/rest/images/pathmapping_color_32x32.png
topnav: topnavobj
---
##### Defines an Path mapping associated with the mapper.

A Mapping defines the the base URL structure an API user will have to use to acess this API Service. For example **/accounts/{accountid}**.

Convertigo will route all requests with this pattern invoked with a given operations (PUT, GET etc ..) to the defined Sequence or Transaction.

Note that if a **Path Prefix** (such as /v1) as been defined in the **UrlMapper** object, the target url will be **/v1/accounts/{accountid}**


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Mapping path | String | standard | Defines the path of the mapping.<br/>Use URL syntax such as /accounts/{accounid}
