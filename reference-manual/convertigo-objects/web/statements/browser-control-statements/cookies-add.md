---
layout: page
title: Cookies Add
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/browser-control-statements/cookies-add/
metadesc: Adds cookie(s) in the Convertigo context.   This statement adds cookie(s) in the Convertigo context for them to be used between Convertigo and the rem
ObjGroup: Web
ObjCatName: browser-control-statements
ObjName: Cookies Add
ObjClass: com.twinsoft.convertigo.beans.statements.CookiesAddStatement
ObjIcon: /images/beans/statements/images/cookiesadd_32x32.png
topnav: topnavobj
---
##### Adds cookie(s) in the Convertigo context. 

This statement adds cookie(s) in the Convertigo context for them to be used between Convertigo and the remote website. <br/>Several cookies can be added, each cookie must match the following format: "<span class="computer">$Domain=&lt;my.domain&gt;;$Path=&lt;/the/path/&gt;;$Secure=true|false;$Date=&lt;expiry date&gt;;myName=myValue</span>".

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Expression | JS expression | standard | Defines the JavaScript expression evaluated to give the cookie(s).<br/>This expression generates a string value (one cookie) or an array of string values (several cookies). <br/>Each cookie must match the following format: "<span class="computer">$Domain=&lt;my.domain&gt;;$Path=&lt;/the/path/&gt;;$Secure=true&#124;false;$Date=&lt;expiry date&gt;;myName=myValue</span>".
Is active | boolean | standard | Defines whether the statement is active.
