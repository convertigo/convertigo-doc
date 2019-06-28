---
layout: page
title: Input HTML set value
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/user-input-control-statement/input-html-set-value/
metadesc: Fills an HTML input field.   This statement enables Convertigo to set a value in a <span class="computer">text  type <span class="computer">input  HTM
ObjGroup: Web
ObjCatName: user-input-control-statement
ObjName: Input HTML set value
ObjClass: com.twinsoft.convertigo.beans.statements.InputHtmlSetValueStatement
ObjIcon: /images/beans/statements/images/inputhtmlsetvalue_32x32.png
topnav: topnavobj
---
##### Fills an HTML input field. 

This statement enables Convertigo to set a value in a <span class="computer">text</span> type <span class="computer">input</span> HTML element.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Delay if XPath not found | long | standard | Defines the maximum delay the statement waits if the XPath doesn't currently exists.<br/>When no node in the page DOM matches the XPath defined in <b>XPath</b> property, the statement waits for it to match up to this delay, set in milliseconds. <br/>Convertigo tries to evaluate the specified XPath while receiving a web page or executing JavaScript in it. Once the XPath matches at least one node of the page, the statement continues its action. <br/>Note: It is equivalent to defining a statement <i>Wait synchronization</i> with an <span class="computer">XPath</span> synchronizer before this statement, waiting for the same XPath.
Expression | JS expression | standard | Defines the expression evaluated to give the text to input.<br/>This property is a JavaScript expression that is evaluated during the transaction execution and gives the data to be set as input.
Is active | boolean | standard | Defines whether the statement is active.
UI event | boolean | standard | Defines whether UI events must be used to change the item value.<br/>Setting this property to <span class="computer">false</span> is saving CPU time, but sometimes the target website does not have the full behavior it has with a real user. In this case, setting this property to <span class="computer">true</span> will help having a behavior closer to the original site.
XPath | JS expression | standard | Defines the XPath expression of elements on which the statement applies.<br/>Depending on the statement, the execution of this <b>XPath</b> on the web page DOM can result in a single <span class="computer">Node</span> or a <span class="computer">NodeList</span>.
Synchronization | TriggerXMLizer | expert | Defines how to synchronize the statement.<br/>A synchronizer states how and when accessed pages are considered fully loaded. Only then are data extracted and new pages re-detected.<br/>There are several types of synchronizers, that are described hereafter:<br/><br/>• <span class="computer">Document completed</span>: The synchronizer waits for a number of documents to be completed. Specify here how many "document completed" events Convertigo has to wait for before assuming that the page is complete. In many cases, when the target application uses HTTP META redirects or JavaScript redirects, the document is loaded several times. You can monitor <br/><span class="computer">==== start parse ======</span><br/>and<br/><span class="computer">==== Parse end ==(XXXms )====================</span><br/>traces in the Engine console (debug mode) to count the number of "document completed" events needed for the synchronizer. The <span class="computer">Document completed</span> synchronizer can be configured to also stop on alert messages that could pop up. Alert messages do not trigger a "document completed" event and are not detected by this synchronizer. To activate this option, check the <b>Stop on alert</b> checkbox. <br/>• <span class="computer">XPath</span>: The synchronizer waits until a specified XPath is found. Convertigo tries to evaluate the specified XPath while receiving a web page or executing JavaScript in it. Once the XPath matches at least one node of the page, the synchronizer returns. <br/>• <span class="computer">Wait time</span>: The synchronizer waits until a specified time is reached (in ms, set via the <b>Timeout</b> property). <br/>• <span class="computer">Screen Class</span>: The synchronizer waits for one of the selected screen classes to be detected. Several screen classes can be selected to be waited for. The synchronizer returns when one of them is reached. <br/>• <span class="computer">Download started</span>: The synchronizer waits for a download request. This is the perfect synchronizer to use before a <b>Get attachment</b> statement. <br/>• <span class="computer">No wait</span>: The synchronizer doesn't wait and execution proceeds directly. <br/><br/>For all synchronizer types, the maximum waiting time is set using the <b>Timeout</b> property.
