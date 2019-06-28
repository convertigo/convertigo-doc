---
layout: page
title: Return
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/flow-control-statements/return/
metadesc: Defines a <span class="computer">RETURN  statement.   A  Return  statement exits from the current function or handler and returns a value from it. The
ObjGroup: Web
ObjCatName: flow-control-statements
ObjName: Return
ObjClass: com.twinsoft.convertigo.beans.statements.ReturnStatement
ObjIcon: /images/beans/statements/images/return_32x32.png
topnav: topnavobj
---
##### Defines a <span class="computer">RETURN</span> statement. 

A <i>Return</i> statement exits from the current function or handler and returns a value from it. The returned value is specified in the <b>Expression</b> property as a JavaScript expression evaluated during the transaction execution. 

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Expression | JS expression | standard | Defines the expression evaluated to give the statement value.<br/>This property is a JavaScript expression that is evaluated during the transaction execution and gives the statement's result.
Is active | boolean | standard | Defines whether the statement is active.
