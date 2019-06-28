---
layout: page
title: Context Add text node
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/others/context-add-text-node/
metadesc: Adds a text node to transaction XML output.   This statement adds a node under the document root of the transaction XML output, containing a text.  <s
ObjGroup: Web
ObjCatName: others
ObjName: Context Add text node
ObjClass: com.twinsoft.convertigo.beans.statements.ContextAddTextNodeStatement
ObjIcon: /images/beans/statements/images/contextaddtextnode_32x32.png
topnav: topnavobj
---
##### Adds a text node to transaction XML output. 

This statement adds a node under the document root of the transaction XML output, containing a text. <br/><span class="orangetwinsoft">Note:</span> The action is similar to that of a <i>Simple statement</i> with: <br/><span class="computer">context.addTextNodeUnderRoot(expression)</span>.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Expression | JS expression | standard | Defines the expression evaluated to give the text to output.<br/>This property is a JavaScript expression that is evaluated during the transaction execution and gives the text string to output in the generated element.
Is active | boolean | standard | Defines whether the statement is active.
Tag name | String | standard | Defines the tag name of the generated XML element.<br/>This property can contain any name, no words are reserved, and must follow the rules on XML naming:<br/><br/>• it can contain letters, numbers, and other characters, <br/>• it cannot start with a number, <br/>• it cannot contain spaces nor punctuation character.<br/>
