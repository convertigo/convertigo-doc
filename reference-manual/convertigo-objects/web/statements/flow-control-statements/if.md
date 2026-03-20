---
layout: page
title: If
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/flow-control-statements/if/
metadesc: Defines an <span class="computer">IF  conditional statement based on a JavaScript condition.   The  If  statement is one of the  HTML transaction  con
ObjGroup: Web
ObjCatName: flow-control-statements
ObjName: If
ObjClass: com.twinsoft.convertigo.beans.statements.IfStatement
ObjIcon: /images/beans/statements/images/if_32x32.png
topnav: topnavobj
---
##### Defines an <span class="computer">IF</span> conditional statement based on a JavaScript condition. 

The <i>If</i> statement is one of the <i>HTML transaction</i> conditional statements. It conditionally executes a block of statements, depending on the fulfillment of a condition expression. In other words, if the condition is fulfilled, child statements are executed. <br/>The condition, set in the <b>Condition</b> property, is a JavaScript expression that is evaluated during the transaction execution as <span class="computer">true</span> or <span class="computer">false</span>. <br/><span class="orangetwinsoft">Note:</span> In Convertigo Studio, when an <i>If</i> statement is created in a handler, it can be easily replaced by an <i>IfThenElse</i>, using the right-click menu on the statement and choosing the option <b>Change to</b> &gt; <b>IfThenElse</b>. The <b>Condition</b> property remains the same and the statements present in the <i>If</i> are moved to the <i>Then</i> sub-statement.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Condition | JS expression | standard | Defines the block condition expression.<br/>This property is a JavaScript expression that will be evaluated as condition (<span class="computer">true</span> or <span class="computer">false</span>) in order to decide whether to execute or not the child statements.
Is active | boolean | standard | Defines whether the statement is active.
