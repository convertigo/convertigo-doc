---
layout: page
title: IfXpathExists
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/flow-control-statements/ifxpathexists/
metadesc: Defines an <span class="computer">IF  conditional statement looking for node(s) on a web page.   The  IfXpathExists  statement is one of the  HTML tra
ObjGroup: Web
ObjCatName: flow-control-statements
ObjName: IfXpathExists
ObjClass: com.twinsoft.convertigo.beans.statements.IfXpathExistsStatement
ObjIcon: /images/beans/statements/images/ifxpathexists_32x32.png
topnav: topnavobj
---
##### Defines an <span class="computer">IF</span> conditional statement looking for node(s) on a web page. 

The <i>IfXpathExists</i> statement is one of the <i>HTML transaction</i> conditional statements. It conditionally executes a block of statements, depending on the fulfillment of a condition expression. In other words, if the condition is fulfilled, child statements are executed. <br/>The condition is the existence in the current web page of nodes matching the XPath defined through the <b>XPath</b> property. <br/><span class="orangetwinsoft">Note:</span> In Convertigo Studio, when an <i>IfXpathExists</i> statement is created in a handler, it can be easily replaced by an <i>IfXpathExistsThenElse</i>, using the right-click menu on the statement and choosing the option <b>Change to</b> &gt; <b>IfXpathExistsThenElse</b>. The <b>XPath</b> property remains the same and the statements present in the <i>IfXpathExists</i> are moved to the <i>Then</i> sub-statement.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
XPath | JS expression | standard | Defines the XPath expression to test.<br/>This property is a JavaScript expression that is evaluated during the transaction execution as an XPath. <br/>The execution of this <b>XPath</b> on the web page DOM is used as a condition in order to decide whether to execute or not the child statements: <br/><br/>• <span class="computer">true</span> if one or several nodes are matching the XPath, <br/>• <span class="computer">false</span> if no node matches.<br/>
