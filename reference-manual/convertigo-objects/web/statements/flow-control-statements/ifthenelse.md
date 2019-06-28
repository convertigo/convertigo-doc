---
layout: page
title: IfThenElse
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/flow-control-statements/ifthenelse/
metadesc: Defines an <span class="computer">IF...THEN...ELSE...  conditional statement based on a JavaScript condition.   The  IfThenElse  statement is one of t
ObjGroup: Web
ObjCatName: flow-control-statements
ObjName: IfThenElse
ObjClass: com.twinsoft.convertigo.beans.statements.IfThenElseStatement
ObjIcon: /images/beans/statements/images/if_32x32.png
topnav: topnavobj
---
##### Defines an <span class="computer">IF...THEN...ELSE...</span> conditional statement based on a JavaScript condition. 

The <i>IfThenElse</i> statement is one of the <i>HTML transaction</i> conditional statements. It contains two child steps (<i>Then</i> and <i>Else</i>) which are executed depending on the condition fulfillment: <br/><br/>• <span class="computer">Then</span> step and child steps are executed when the condition is verified, <br/>• <span class="computer">Else</span> step and child steps are executed when the condition is not verified.<br/><br/>The condition, defined in the <b>Condition</b> property, is a JavaScript expression that is evaluated during the transaction execution as <span class="computer">true</span> or <span class="computer">false</span>. <br/><span class="orangetwinsoft">Note:</span> In Convertigo Studio, when an <i>IfThenElse</i> statement is created in a handler, it can be easily replaced by an <i>If</i>, using the right-click menu on the statement and choosing the option <b>Change to</b> &gt; <b>If</b>. The <b>Condition</b> property remains the same and the statements present in the sub-statements are:<br/><br/>• statements present in the <i>Then</i> statement are moved to the <i>If</i>, <br/>• statements present in the <i>Else</i> statement are deleted.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Condition | JS expression | standard | Defines the block condition expression.<br/>This property is a JavaScript expression that will be evaluated as condition (<span class="computer">true</span> or <span class="computer">false</span>) in order to decide whether to execute or not the child statements.
Is active | boolean | standard | Defines whether the statement is active.
