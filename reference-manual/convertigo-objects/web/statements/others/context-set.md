---
layout: page
title: Context Set
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/others/context-set/
metadesc: Stores an object identified by a key in the context.    Context Set  statement stores an object in the context identified by a key.  This object can b
ObjGroup: Web
ObjCatName: others
ObjName: Context Set
ObjClass: com.twinsoft.convertigo.beans.statements.ContextSetStatement
ObjIcon: /images/beans/statements/images/contextset_32x32.png
topnav: topnavobj
---
##### Stores an object identified by a key in the context. 

<i>Context Set</i> statement stores an object in the context identified by a key. <br/>This object can be retrieved later identified by its key thanks to <i>Context Get</i> statement.<br/><span class="orangetwinsoft">Note:</span> The action is similar to a <i>Simple statement</i> with the following line of code: <br/><span class="computer">context.set("key", object)</span>.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Expression | JS expression | standard | Defines the expression evaluated to give the object to set.<br/>This property is a JavaScript expression that is evaluated during the transaction execution and gives the object to set.<br/><b>Expression</b> property is similar to the second parameter of <span class="computer">context.set</span> JavaScript method.
Is active | boolean | standard | Defines whether the statement is active.
Key | String | standard | Defines the key to identify the object to be set.<br/><b>Key</b> property is similar to the first parameter of <span class="computer">context.set</span> JavaScript method.
