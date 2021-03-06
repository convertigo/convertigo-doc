---
layout: page
title: While
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/flow-control-statements/while/
metadesc: Defines a <span class="computer">WHILE  loop statement based on a JavaScript condition.   This statement executes a group of child statements until th
ObjGroup: Web
ObjCatName: flow-control-statements
ObjName: While
ObjClass: com.twinsoft.convertigo.beans.statements.WhileStatement
ObjIcon: /images/beans/statements/images/while_32x32.png
topnav: topnavobj
---
##### Defines a <span class="computer">WHILE</span> loop statement based on a JavaScript condition. 

This statement executes a group of child statements until the condition expression set in the <b>Condition</b> property is found to be false. <br/><span class="orangetwinsoft">Note:</span> You can add other statements to this statement: these are the statements executed in the loop.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Condition | JS expression | standard | Defines the block condition expression.<br/>This property is a JavaScript expression that will be evaluated as condition (<span class="computer">true</span> or <span class="computer">false</span>) in order to decide whether to execute or not the child statements.
Is active | boolean | standard | Defines whether the statement is active.
