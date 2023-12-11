---
layout: page
title: Cookies Get
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/browser-control-statements/cookies-get/
metadesc: Gets cookies from the Convertigo context.   This statement gets cookies from the Convertigo context and sets the value in a variable.  The value can b
ObjGroup: Web
ObjCatName: browser-control-statements
ObjName: Cookies Get
ObjClass: com.twinsoft.convertigo.beans.statements.CookiesGetStatement
ObjIcon: /images/beans/statements/images/cookiesget_32x32.png
topnav: topnavobj
---
##### Gets cookies from the Convertigo context. 

This statement gets cookies from the Convertigo context and sets the value in a variable. <br/>The value can be a string or an array of strings, depending on <b>Separator</b> property value. 

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
Separator | String | standard | Defines the separator between cookies (empty for an array).<br/>This property allows to get a string concatenating all cookies with a separator. When no character is defined, the cookies are retrieved as an array of strings.
Variable | String | standard | Defines the variable in which the cookies will be retrieved.<br/>This variable can be a string or an array of strings, depending on <b>Separator</b> property value.
