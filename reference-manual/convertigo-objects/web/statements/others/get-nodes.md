---
layout: page
title: Get nodes
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/others/get-nodes/
metadesc: Extracts nodes from current HTML into a variable in JavaScript scope.   The  Get nodes  statement extracts a list of nodes from the web page DOM and s
ObjGroup: Web
ObjCatName: others
ObjName: Get nodes
ObjClass: com.twinsoft.convertigo.beans.statements.GetNodesStatement
ObjIcon: /images/beans/statements/images/getNodes_32x32.png
topnav: topnavobj
---
##### Extracts nodes from current HTML into a variable in JavaScript scope. 

The <i>Get nodes</i> statement extracts a list of nodes from the web page DOM and sets a local JavaScript variable in the JavaScript scope of its parent statement. This variable contains a <span class="computer">Java NodeList</span> object, i.e. a list of XML nodes, extracted from the HTML page thanks to the execution of an XPath on the page DOM. This XPath is defined in <b>XPath</b> property.<br/>The variable is named after the <b>Variable name</b> property value. It exists while its parent <i>Handler</i> or <i>Function</i> is executing.<br/>If only one node matches, the variable is also a <span class="computer">NodeList</span> containing only one <span class="computer">Node</span> (index is 0). If no node matches, the variable is finally an empty <span class="computer">NodeList</span>, containing no <span class="computer">Node</span> (<span class="computer">var_name.getLength() = 0</span>). <br/><span class="orangetwinsoft">Notes:</span> <br/><br/>• The variable contains a list of node elements of the DOM. To access one (<span class="computer">Node</span>) of the list, use the following syntax in a statement: <span class="computer">var_name.item(index)</span>.<br/>• To access one element's text content (<span class="computer">String</span>), use the <span class="computer">element.getTextContent()</span> method, to retrieve the text of the element, or the <span class="computer">element.getNodeValue()</span> method, which result depends on the node type (will extract a text only if the <span class="computer">Node</span> is of <span class="computer">Text</span> or <span class="computer">Attribute</span> type).<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Delay if XPath not found | long | standard | Defines the maximum delay the statement waits if the XPath doesn't currently exists.<br/>When no node in the page DOM matches the XPath defined in <b>XPath</b> property, the statement waits for it to match up to this delay, set in milliseconds. <br/>Convertigo tries to evaluate the specified XPath while receiving a web page or executing JavaScript in it. Once the XPath matches at least one node of the page, the statement continues its action. <br/>Note: It is equivalent to defining a statement <i>Wait synchronization</i> with an <span class="computer">XPath</span> synchronizer before this statement, waiting for the same XPath.
Is active | boolean | standard | Defines whether the statement is active.
Variable name | String | standard | Defines the name of the JavaScript variable.<br/>If this variable exists in scope, its value is overridden. If the variable doesn't exist in scope, it is created.
XPath | JS expression | standard | Defines the XPath expression of elements on which the statement applies.<br/>Depending on the statement, the execution of this <b>XPath</b> on the web page DOM can result in a single <span class="computer">Node</span> or a <span class="computer">NodeList</span>.
