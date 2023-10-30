---
layout: page
title: Call function
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/flow-control-statements/call-function/
metadesc: Call any  Function  statement defined in the same transaction.   If  Function  statements have been defined for a given transaction, you can call them
ObjGroup: Web
ObjCatName: flow-control-statements
ObjName: Call function
ObjClass: com.twinsoft.convertigo.beans.statements.CallFunctionStatement
ObjIcon: /images/beans/statements/images/callfunction_32x32.png
topnav: topnavobj
---
##### Call any <i>Function</i> statement defined in the same transaction. 

If <i>Function</i> statements have been defined for a given transaction, you can call them by setting a <i>Call function</i> statement in any handler of the given transaction.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Function name | String | standard | Defines the name of the function to call.<br/>This property allows to choose the <i>Function</i> statement to call by selecting it in a list of the available ones for the current transaction.
Is active | boolean | standard | Defines whether the statement is active.
