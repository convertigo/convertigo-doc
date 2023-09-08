---
layout: page
title: Wait synchronization
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/others/wait-synchronization/
metadesc: Checks the defined synchronization and waits for it.   A synchronization is defined thanks to the  Synchronization  property. This statement does no a
ObjGroup: Web
ObjCatName: others
ObjName: Wait synchronization
ObjClass: com.twinsoft.convertigo.beans.statements.WaitTriggerStatement
ObjIcon: /images/beans/statements/images/waittrigger_32x32.png
topnav: topnavobj
---
##### Checks the defined synchronization and waits for it. 

A synchronization is defined thanks to the <b>Synchronization</b> property. This statement does no action but waits for the synchronizer to return.<br/>There are four types of synchronizers, see their definitions in <b>Synchronization</b> property description.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
Synchronization | TriggerXMLizer | standard | Defines how to synchronize the statement.<br/>A synchronizer states how and when accessed pages are considered fully loaded. Only then are data extracted and new pages re-detected. <br/>There are several types of synchronizers, that are described hereafter:<br/><br/>• <span class="computer">Document completed</span>: The synchronizer waits for a number of documents to be completed. Specify here how many "document completed" events Convertigo has to wait for before assuming that the page is complete. In many cases, when the target application uses HTTP META redirects or JavaScript redirects, the document is loaded several times. You can monitor <br/><span class="computer">==== start parse ======</span><br/>and<br/><span class="computer">==== Parse end ==(XXXms )====================</span><br/>traces in the Engine console (debug mode) to count the number of "document completed" events needed for the synchronizer. The <span class="computer">Document completed</span> synchronizer can be configured to also stop on alert messages that could pop up. Alert messages do not trigger a "document completed" event and are not detected by this synchronizer. To activate this option, check the <b>Stop on alert</b> checkbox. <br/>• <span class="computer">XPath</span>: The synchronizer waits until a specified XPath is found. Convertigo tries to evaluate the specified XPath while receiving a web page or executing JavaScript in it. Once the XPath matches at least one node of the page, the synchronizer returns. <br/>• <span class="computer">Wait time</span>: The synchronizer waits until a specified time is reached (in ms, set via the <b>Timeout</b> property). <br/>• <span class="computer">Screen Class</span>: The synchronizer waits for one of the selected screen classes to be detected. Several screen classes can be selected to be waited for. The synchronizer returns when one of them is reached. <br/>• <span class="computer">Download started</span>: The synchronizer waits for a download request. This is the perfect synchronizer to use before a <b>Get attachment</b> statement. <br/>• <span class="computer">No wait</span>: The synchronizer doesn't wait and execution proceeds directly. <br/><br/>For all synchronizer types, the maximum waiting time is set using the <b>Timeout</b> property.
