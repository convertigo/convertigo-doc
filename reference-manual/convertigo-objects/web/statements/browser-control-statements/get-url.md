---
layout: page
title: Get URL
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/browser-control-statements/get-url/
metadesc: Extracts the current page URL into a variable in JavaScript scope.   The  Get URL  statement extracts the web page URL and sets a JavaScript variable 
ObjGroup: Web
ObjCatName: browser-control-statements
ObjName: Get URL
ObjClass: com.twinsoft.convertigo.beans.statements.GetUrlStatement
ObjIcon: /images/beans/statements/images/getUrl_32x32.png
topnav: topnavobj
---
##### Extracts the current page URL into a variable in JavaScript scope. 

The <i>Get URL</i> statement extracts the web page URL and sets a JavaScript variable with this string. <br/><span class="orangetwinsoft">Note:</span> The JavaScript variable defined in scope thanks to this statement is a <i>String</i>. 

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
Variable name | String | standard | Defines the name of the JavaScript variable.<br/>If this variable exists in scope, its value is overridden. If the variable doesn't exist in scope, it is created.
