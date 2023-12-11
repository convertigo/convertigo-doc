---
layout: page
title: Navigation bar
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/browser-control-statements/navigation-bar/
metadesc: Simulates a navigation bar action in the browser.   This statement allows Convertigo to navigate in the target web application using the usual navigat
ObjGroup: Web
ObjCatName: browser-control-statements
ObjName: Navigation bar
ObjClass: com.twinsoft.convertigo.beans.statements.NavigationBarStatement
ObjIcon: /images/beans/statements/images/navigationbar_32x32.png
topnav: topnavobj
---
##### Simulates a navigation bar action in the browser. 

This statement allows Convertigo to navigate in the target web application using the usual navigation bar tools of its internal browser. The action to perform is defined thanks to the <b>Action</b> property.

Property | Type | Category | Description
--- | --- | --- | ---
Action | String | standard | Navigation bar action to perform in browser.<br/>This property defines the navigation bar tool to use. Following actions are available: <br/><br/>• <span class="computer">backward</span>: goes back to the last visited page, <br/>• <span class="computer">forward</span>: goes forward to the last visited page, <br/>• <span class="computer">goTo</span>: accesses the web page which URL is defined in the <b>JavaScript URL</b> property, <br/>• <span class="computer">refresh</span>: reloads the currently displayed page, <br/>• <span class="computer">stop</span>.<br/><br/><span class="orangetwinsoft">Note:</span> The <span class="computer">goTo</span> action requires the <b>JavaScript URL</b> property to be set.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
JavaScript URL | JS expression | standard | Defines the URL of the page to access when <span class="computer">goTo</span> action is set in <b>Action</b> property.<br/>This property is a JavaScript expression evaluated during the transaction execution.
Synchronizer | TriggerXMLizer | expert | Defines how to synchronize the statement.<br/>A synchronizer states how and when accessed pages are considered fully loaded. Only then are data extracted and new pages re-detected.<br/>There are several types of synchronizers, that are described hereafter:<br/><br/>• <span class="computer">Document completed</span>: The synchronizer waits for a number of documents to be completed. Specify here how many "document completed" events Convertigo has to wait for before assuming that the page is complete. In many cases, when the target application uses HTTP META redirects or JavaScript redirects, the document is loaded several times. You can monitor <br/><span class="computer">==== start parse ======</span><br/>and<br/><span class="computer">==== Parse end ==(XXXms )====================</span><br/>traces in the Engine console (debug mode) to count the number of "document completed" events needed for the synchronizer. The <span class="computer">Document completed</span> synchronizer can be configured to also stop on alert messages that could pop up. Alert messages do not trigger a "document completed" event and are not detected by this synchronizer. To activate this option, check the <b>Stop on alert</b> checkbox. <br/>• <span class="computer">XPath</span>: The synchronizer waits until a specified XPath is found. Convertigo tries to evaluate the specified XPath while receiving a web page or executing JavaScript in it. Once the XPath matches at least one node of the page, the synchronizer returns. <br/>• <span class="computer">Wait time</span>: The synchronizer waits until a specified time is reached (in ms, set via the <b>Timeout</b> property). <br/>• <span class="computer">Screen Class</span>: The synchronizer waits for one of the selected screen classes to be detected. Several screen classes can be selected to be waited for. The synchronizer returns when one of them is reached. <br/>• <span class="computer">Download started</span>: The synchronizer waits for a download request. This is the perfect synchronizer to use before a <b>Get attachment</b> statement. <br/>• <span class="computer">No wait</span>: The synchronizer doesn't wait and execution proceeds directly. <br/><br/>For all synchronizer types, the maximum waiting time is set using the <b>Timeout</b> property.
