---
layout: page
title: CSS injector
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/response-rules/css-injector/
metadesc: Injects style sheet code into a Site Clipper response.   The  CSS injector  extraction rule inserts a <span class="computer">&lt;link /&gt;  element i
ObjGroup: SiteClipper
ObjCatName: response-rules
ObjName: CSS injector
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.CssInjector
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_css_color_32x32.png
topnav: topnavobj
---
##### Injects style sheet code into a Site Clipper response. 

The <i>CSS injector</i> extraction rule inserts a <span class="computer">&lt;link /&gt;</span> element into the received response. <br/>The location where to insert the element is defined by the <b>Injection location</b> property which may be customized using the <b>Custom regexp</b> property.<br/>The style sheet's source code is contained in an external file which path is defined in the <b>File path</b> property. 

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
File path | String | configuration | Defines the external file path used for the source attribute of the inserted HTML tag.<br/>This property allows specifying the path to an external file which contains the source code. <br/>The path value must be relative to the current project folder.
Injection location | HtmlLocation | configuration | Defines the location where to insert the element.<br/>This property allows choosing where the new HTML element has to be inserted into the received response. <br/>Predefined values are:<br/><br/>• <span class="computer">head_top</span>: inserts after the opening &lt;HEAD&gt; tag, <br/>• <span class="computer">head_bottom</span>: inserts before the closing &lt;/HEAD&gt; tag, <br/>• <span class="computer">body_top</span>: inserts after the opening &lt;BODY&gt; tag, <br/>• <span class="computer">body_bottom</span>: inserts before the closing &lt;/BODY&gt; tag, <br/>• <span class="computer">custom</span>: inserts at a custom location defined by the <b>Custom regexp</b> property.<br/>
Is active | boolean | configuration | Defines whether the extraction rule is active.
Custom regexp | String | selection | Defines the regular expression to use for a custom injection location.<br/>When <b>Injection location</b> property value is set to <span class="computer">custom</span>, the <b>Custom regexp</b> property allows defining a regular expression to specify the custom location where to insert the HTML element, rather than using the predefined values.<br/><span class="orangetwinsoft">Notes:</span><br/><br/>• This expression must contains () to specify where to insert the code. <br/>• For more information about regular expression patterns, see the following page: <span class="computer">http://www.regular-expressions.info/reference.html</span>. <br/>• To test regular expressions, you can use the regular expression tester at the following URL: <span class="computer">http://www.regular-expressions.info/javascriptexample.html</span>.<br/>
