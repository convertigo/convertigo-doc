---
layout: page
title: Function
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/handler-statements/function/
metadesc: Defines a function that can be invoked.   A  Function  statement declares a new function for a transaction. It contains other statements defining acti
ObjGroup: Web
ObjCatName: handler-statements
ObjName: Function
ObjClass: com.twinsoft.convertigo.beans.statements.FunctionStatement
ObjIcon: /images/beans/statements/images/function_32x32.png
topnav: topnavobj
---
##### Defines a function that can be invoked. 

A <i>Function</i> statement declares a new function for a transaction. It contains other statements defining actions to be performed by the function. It can only be added under a transaction.<br/>The <i>Functions</i> defined for a transaction can then be called from one or several handlers using <i>Call Function</i> statements (to perform the same actions on several screen classes for example). <br/><br/><span class="orangetwinsoft">Notes:</span> <br/>• A <i>Function</i> statement has its own JavaScript scope, inherited from the transaction's one.<br/>• The JavaScript variables declared by children statements such as <i>Get nodes</i> or <i>Get text</i> are local in the function's scope. They exist while the <i>Function</i> is executing.<br/>• The children statements can access the global variables of the transaction's scope as the local variables of the function's scope.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
