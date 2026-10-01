---
layout: page
title: BasicAuthentication
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/url-mapper/rest-api/authentications/basicauthentication/
metadesc: Defines a Basic Authentication associated with the mapper.    
ObjGroup: URL Mapper
ObjCatName: authentications
ObjName: BasicAuthentication
ObjClass: com.twinsoft.convertigo.beans.rest.BasicAuthentication
ObjIcon: /images/beans/rest/images/basicauthentication_color_32x32.png
topnav: topnavobj
---
##### Defines a Basic Authentication associated with the mapper. 



Property | Type | Category | Description
--- | --- | --- | ---
Auth requestable | String | standard | Defines the target sequence or transaction for authentication.<br/>The requestable to be executed should declare a <b>user</b> and a <b>password</b> single-valued variable.<br/>For an authentication to be considered as successful, it must make the session as authenticated upon execution with given user/password variable values.<br/>This can be done using the <i>Set authenticated user</i> step in a <i>Sequence</i>, using the given user value.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
