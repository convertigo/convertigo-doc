---
layout: page
title: Context Get
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/others/context-get/
metadesc: Gets the object bound with the specified key in the context.   This statement gets an object from the context identified by a key and sets it in a Jav
ObjGroup: Web
ObjCatName: others
ObjName: Context Get
ObjClass: com.twinsoft.convertigo.beans.statements.ContextGetStatement
ObjIcon: /images/beans/statements/images/contextget_32x32.png
topnav: topnavobj
---
##### Gets the object bound with the specified key in the context. 

This statement gets an object from the context identified by a key and sets it in a JavaScript variable. <br/>This object was previously set in the context, bound with its key, thanks to <i>Context Set</i> statement. <br/>If no object is bound with this key in the context, the JavaScript variable is set to <span class="computer">null</span>. <br/><span class="orangetwinsoft">Note:</span> The action is similar to a <i>Simple statement</i> with the following line of code: <br/><span class="computer">myVar = context.get("key")</span>. 

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
Key | String | standard | Defines the key identifying the object to retrieve.<br/><b>Key</b> property is similar to the parameter of <span class="computer">context.get</span> JavaScript method.
Variable | String | standard | Defines the JavaScript variable into which the object will be retrieved.<br/><b>Variable</b> property is similar to the name of the result variable of <span class="computer">context.get</span> JavaScript method.
