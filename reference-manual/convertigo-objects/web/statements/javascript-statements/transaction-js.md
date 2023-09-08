---
layout: page
title: Transaction JS
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/javascript-statements/transaction-js/
metadesc: Defines a scripting statement.   This helpful statement allows to handle JavaScript code that will be executed in the transaction scope. This JavaScri
ObjGroup: Web
ObjCatName: javascript-statements
ObjName: Transaction JS
ObjClass: com.twinsoft.convertigo.beans.statements.SimpleStatement
ObjIcon: /images/beans/statements/images/simple_32x32.png
topnav: topnavobj
---
##### Defines a scripting statement. 

This helpful statement allows to handle JavaScript code that will be executed in the transaction scope. This JavaScript code is able to:<br/><br/>• initialize variables,<br/>• perform complex calculations,<br/>• access the context object to get useful properties such as <span class="computer">contextID</span>, <span class="computer">httpSession</span>, <span class="computer">isCacheEnabled</span>,  <span class="computer">lockPooledContext</span>, etc., <br/>• use some context methods to manipulate the result XML DOM (only in the transaction <span class="computer">XML Generated handler</span>), encode and decode data, abort transaction, etc.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Expression | JS expression | standard | Defines the expression evaluated to give the statement value.<br/>This property is a JavaScript expression that is evaluated during the transaction execution and gives the statement's result.
Is active | boolean | standard | Defines whether the statement is active.
