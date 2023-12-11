---
layout: page
title: Key action
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/user-input-control-statement/key-action/
metadesc: Simulates a key action.   This statement enables Convertigo to send key events to any HTML element from the target web page. The event can be one of t
ObjGroup: Web
ObjCatName: user-input-control-statement
ObjName: Key action
ObjClass: com.twinsoft.convertigo.beans.statements.KeyStatement
ObjIcon: /images/beans/statements/images/key_32x32.png
topnav: topnavobj
---
##### Simulates a key action. 

This statement enables Convertigo to send key events to any HTML element from the target web page.<br/>The event can be one of the following types:<br/><br/>• <span class="computer">keypress</span>: simulates a <span class="computer">keypress</span> event, <br/>• <span class="computer">keydown</span>: simulates a <span class="computer">keydown</span> event, <br/>• <span class="computer">keyup</span>: simulates a <span class="computer">keyup</span> event.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Action | String | standard | Defines the JavaScript action corresponding to the event to perform.<br/>Depending of the statement, this property can take several values. These values are indicated in the object's description.
Character code | int | standard | Defines the ASCII character code for any alphanumeric key.<br/>This property allows setting the Unicode character associated with the depressed key. Otherwise, the value is zero and the key code value can be set in <b>Key code</b> property.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Delay if XPath not found | long | standard | Defines the maximum delay the statement waits if the XPath doesn't currently exists.<br/>When no node in the page DOM matches the XPath defined in <b>XPath</b> property, the statement waits for it to match up to this delay, set in milliseconds. <br/>Convertigo tries to evaluate the specified XPath while receiving a web page or executing JavaScript in it. Once the XPath matches at least one node of the page, the statement continues its action. <br/>Note: It is equivalent to defining a statement <i>Wait synchronization</i> with an <span class="computer">XPath</span> synchronizer before this statement, waiting for the same XPath.
Is active | boolean | standard | Defines whether the statement is active.
Key code | int | standard | Defines the key code.<br/>This property allows setting the virtual key code value to be sent, if the key has a key code value. Otherwise, the value is zero and the character code can be set in <b>Character code</b> property. For more information on key codes, see Appendix "<i>Keycodes table</i>".
Press alt key | boolean | standard | Defines whether the "<span class="computer">alt</span>" key is to be depressed when firing the event.<br/>On some platforms, this key may map to an alternative key name.
Press ctrl key | boolean | standard | Defines whether the "<span class="computer">ctrl</span>" key is to be depressed when firing the event.
Press meta key | boolean | standard | Defines whether the "<span class="computer">meta</span>" key is to be depressed when firing the event.<br/>On some platforms, this key may map to an alternative key name.
Press shift key | boolean | standard | Defines whether the "<span class="computer">shift</span>" key is to be depressed when firing the event.
XPath | JS expression | standard | Defines the XPath expression of elements on which the statement applies.<br/>Depending on the statement, the execution of this <b>XPath</b> on the web page DOM can result in a single <span class="computer">Node</span> or a <span class="computer">NodeList</span>.
Synchronization | TriggerXMLizer | expert | Defines how to synchronize the statement.<br/>A synchronizer states how and when accessed pages are considered fully loaded. Only then are data extracted and new pages re-detected.<br/>There are several types of synchronizers, that are described hereafter:<br/><br/>• <span class="computer">Document completed</span>: The synchronizer waits for a number of documents to be completed. Specify here how many "document completed" events Convertigo has to wait for before assuming that the page is complete. In many cases, when the target application uses HTTP META redirects or JavaScript redirects, the document is loaded several times. You can monitor <br/><span class="computer">==== start parse ======</span><br/>and<br/><span class="computer">==== Parse end ==(XXXms )====================</span><br/>traces in the Engine console (debug mode) to count the number of "document completed" events needed for the synchronizer. The <span class="computer">Document completed</span> synchronizer can be configured to also stop on alert messages that could pop up. Alert messages do not trigger a "document completed" event and are not detected by this synchronizer. To activate this option, check the <b>Stop on alert</b> checkbox. <br/>• <span class="computer">XPath</span>: The synchronizer waits until a specified XPath is found. Convertigo tries to evaluate the specified XPath while receiving a web page or executing JavaScript in it. Once the XPath matches at least one node of the page, the synchronizer returns. <br/>• <span class="computer">Wait time</span>: The synchronizer waits until a specified time is reached (in ms, set via the <b>Timeout</b> property). <br/>• <span class="computer">Screen Class</span>: The synchronizer waits for one of the selected screen classes to be detected. Several screen classes can be selected to be waited for. The synchronizer returns when one of them is reached. <br/>• <span class="computer">Download started</span>: The synchronizer waits for a download request. This is the perfect synchronizer to use before a <b>Get attachment</b> statement. <br/>• <span class="computer">No wait</span>: The synchronizer doesn't wait and execution proceeds directly. <br/><br/>For all synchronizer types, the maximum waiting time is set using the <b>Timeout</b> property.
