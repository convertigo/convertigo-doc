---
layout: page
title: Recorder for Site Clipper
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/others/recorder-for-site-clipper/
metadesc: Starts recording HTML connector HTTP responses to reuse them with  Continue with Site Clipper  statement.    Recorder for Site Clipper  statement enab
ObjGroup: Web
ObjCatName: others
ObjName: Recorder for Site Clipper
ObjClass: com.twinsoft.convertigo.beans.statements.RecordForSiteClipperStatement
ObjIcon: /images/beans/statements/images/RecordForSiteClipperStatement_color_32x32.png
topnav: topnavobj
---
##### Starts recording HTML connector HTTP responses to reuse them with <i>Continue with Site Clipper</i> statement. 

<i>Recorder for Site Clipper</i> statement enables the recording of all HTTP responses that match the <i>URL RegEx filter</i> made by the <i>HTML connector</i> and disable cache for those responses. <br/>The recording stop when a <i>Continue with Site Clipper</i> is executed or if a stateless <i>HTML transaction</i> starts. Those recorded HTTP responses are reuse when the <i>Site Clipper connector</i> response the same resources and prevent to ask the resources again to the remote website. <br/>This can be important on some page where a browser refresh doesn't provide the same content, like a POST form result or query that modify server side data (such a shopping cart). <br/>Record response consume memory, so use it with caution and try to set a <i>URL RegEx filter</i> if possible. A recorded response is destroyed after the <i>Site Clipper connector</i> use it or when its <i>response lifetime (sec)</i> is expired.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
Response lifetime | int | standard | Define the time-to-live (in seconds) of recorded responses.<br/>Recorded responses are kept in memory a maximum of time corresponding to the <b>Response lifetime</b> property value. <br/>If a recorded response is not used by a <i>Site Clipper connector</i> during its lifetime, it is automatically destroyed when its time-to-live expires.
URL regexp filter | String | standard | Defines a regular expression for response URL filtering.<br/>All HTTP responses should not be recorded by this statement. The <b>URL regexp filter</b> property allows defining a regular expression as a string pattern to find in the URL of HTTP responses. <br/><span class="orangetwinsoft">Notes:</span><br/><br/>• For more information about regular expression patterns, see the following page: <span class="computer">http://www.regular-expressions.info/reference.html</span>. <br/>• To test regular expressions, you can use the regular expression tester at the following URL: <span class="computer">http://www.regular-expressions.info/javascriptexample.html</span>.<br/>
