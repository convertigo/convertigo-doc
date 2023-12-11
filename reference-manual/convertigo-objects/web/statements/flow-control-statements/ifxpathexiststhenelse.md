---
layout: page
title: IfXpathExistsThenElse
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/flow-control-statements/ifxpathexiststhenelse/
metadesc: Defines an <span class="computer">IF...THEN...ELSE...  conditional statement looking for node(s) on a web page.   The  IfXpathExistsThenElse  statemen
ObjGroup: Web
ObjCatName: flow-control-statements
ObjName: IfXpathExistsThenElse
ObjClass: com.twinsoft.convertigo.beans.statements.IfXpathExistsThenElseStatement
ObjIcon: /images/beans/statements/images/ifxpathexists_32x32.png
topnav: topnavobj
---
##### Defines an <span class="computer">IF...THEN...ELSE...</span> conditional statement looking for node(s) on a web page. 

The <i>IfXpathExistsThenElse</i> statement is one of the <i>HTML transaction</i> conditional statements. It contains two child steps (<i>Then</i> and <i>Else</i>) which are executed depending on the condition fulfillment: <br/><br/>• <span class="computer">Then</span> step and child steps are executed when the condition is verified, <br/>• <span class="computer">Else</span> step and child steps are executed when the condition is not verified.<br/><br/>The condition is the existence in the current web page of nodes matching the XPath defined through the <b>XPath</b> property. <br/><span class="orangetwinsoft">Note:</span> In Convertigo Studio, when an <i>IfXpathExistsThenElse</i> statement is created in a handler, it can be easily replaced by an <i>IfXpathExists</i>, using the right-click menu on the statement and choosing the option <b>Change to</b> &gt; <b>IfXpathExists</b>. The <b>XPath</b> property remains the same and the statements present in the sub-statements are:<br/><br/>• statements present in the <i>Then</i> statement are moved to the <i>IfXpathExists</i>, <br/>• statements present in the <i>Else</i> statement are deleted.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
XPath | JS expression | standard | Defines the XPath expression to test.<br/>This property is a JavaScript expression that is evaluated during the transaction execution as an XPath. <br/>The execution of this <b>XPath</b> on the web page DOM is used as a condition in order to decide whether to execute or not the child statements: <br/><br/>• <span class="computer">true</span> if one or several nodes are matching the XPath, <br/>• <span class="computer">false</span> if no node matches.<br/>
