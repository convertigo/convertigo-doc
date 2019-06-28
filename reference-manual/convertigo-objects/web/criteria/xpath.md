---
layout: page
title: XPath
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/criteria/xpath/
metadesc: Defines a criterion based on an XPath for HTML screen classes.    The  XPath  criterion allows defining an XPath expression leading to one or several 
ObjGroup: Web
ObjCatName: 
ObjName: XPath
ObjClass: com.twinsoft.convertigo.beans.common.XPath
ObjIcon: /images/beans/common/images/xpath_color_32x32.png
topnav: topnavobj
---
##### Defines a criterion based on an XPath for HTML screen classes. 

The <i>XPath</i> criterion allows defining an XPath expression leading to one or several elements of a web page that uniquely identify a given screen class (logo, image, link, field, etc.). <br/>Matching condition: The <i>XPath</i> criterion matches when the evaluation of the Xpath expression, defined in <b>XPath</b> property, on the HTML page's DOM gives a non-empty result. <br/><span class="orangetwinsoft">Note:</span> The <i>XPath</i> criterion, together with the <i>URL</i> criterion, are the two only possible criteria for detecting a screen class in CWC and CWI projects.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
XPath | String | standard | Defines the XPath expression of searched nodes.<br/>The execution of this <b>XPath</b> on the web page DOM can result in a single <span class="computer">Node</span> or a <span class="computer">NodeList</span>. In these cases, the criterion matches. <br/>The execution of the <b>XPath</b> on the web page DOM can result in an empty result. In this case, the criterion doesn't match.
Reverse result | boolean | expert | Defines if the criteria's result should be reversed.<br/>When a criteria is evaluated, it can sometimes be useful to get the opposite of the standard result (i.e. when the criteria matches, its result is false, and when it doesn't match, its result is true). Use this property to reverse the standard result.<br/>For example, you may define a screen class that does not contain the text "Hello" in white on black background. For that, you define a criterion matching on the text "Hello" in white on black background, and you reverse it thanks to this property.
