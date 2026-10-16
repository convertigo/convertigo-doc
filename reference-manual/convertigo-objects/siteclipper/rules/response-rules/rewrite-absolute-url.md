---
layout: page
title: Rewrite absolute URL
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/response-rules/rewrite-absolute-url/
metadesc: Rewrites absolute URLs found in a Site Clipper response.   The  Rewrite absolute URL  extraction rule rewrites absolute URLs found in Site Clipper HTT
ObjGroup: SiteClipper
ObjCatName: response-rules
ObjName: Rewrite absolute URL
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.RewriteAbsoluteUrl
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_url_color_32x32.png
topnav: topnavobj
---
##### Rewrites absolute URLs found in a Site Clipper response. 

The <i>Rewrite absolute URL</i> extraction rule rewrites absolute URLs found in Site Clipper HTTP responses, for the links or resources accessed by these URLs to be accessed through Convertigo Site Clipper. <br/>This extraction rule will be executed only on HTTP responses that match certain MIME types:<br/><br/>• If <b>Rewrite HTML code</b> property value is set to <span class="computer">true</span>, URLs found in HTML code are rewritten. That means the extraction rule is searching for URLs to rewrite in HTTP responses of <span class="computer">text/html</span> or <span class="computer">application/xhtml+xml</span> MIME types. <br/>• If <b>Rewrite CSS code</b> property value is set to <span class="computer">true</span>, URLs found in CSS code are rewritten. That means the extraction rule is searching for URLs to rewrite in HTTP responses of <span class="computer">text/css</span>, <span class="computer">text/html</span> or <span class="computer">application/xhtml+xml</span> MIME types.<br/><br/><span class="orangetwinsoft">Notes:</span><br/><br/>• Absolute URLs are rewritten only if they don't match a black listed domain defined in the <b>Domains listing</b> property of the associated <i>Site Clipper connector</i>.<br/>• If applicable, relative URLs are rewritten to absolute ones. <br/>• URLs found in JavaScript code will not be rewritten by this rule. To do so, use a <i>Replace string</i> extraction rule parametered for your specific case.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Rewrite CSS code | boolean | configuration | Automatically rewrite absolute URLs in CSS code.<br/>This property allows to specify whether absolute URLs found in the CSS code of a Site Clipper response should be rewritten or not. Specifically to this rule, CSS code of a Site Clipper response is defined by an HTTP response of the following MIME types: <br/><br/>• <span class="computer">text/css</span>: Cascading Style Sheet text resource, <br/>• <span class="computer">text/html</span>: HTML text resource, <br/>• <span class="computer">application/xhtml+xml</span>: XHTML file resource. <br/><br/>If this property is set to <span class="computer">true</span>, URLs specified in following CSS keyword are rewritten: <br/><br/>• <span class="computer">url</span> keyword.<br/>
Rewrite HTML code | boolean | configuration | Automatically rewrite absolute URLs in HTML code.<br/>This property allows to specify whether absolute URLs found in the HTML code of a Site Clipper response should be rewritten or not. Specifically to this rule, HTML code of a Site Clipper response is defined by an HTTP response of the following MIME types: <br/><br/>• <span class="computer">text/html</span>: HTML text resource, <br/>• <span class="computer">application/xhtml+xml</span>: XHTML file resource. <br/><br/>If this property is set to <span class="computer">true</span>, URLs specified in following HTML attributes are rewritten: <br/><br/>• <span class="computer">action</span> attribute, <br/>• <span class="computer">background</span> attribute, <br/>• <span class="computer">cite</span> attribute, <br/>• <span class="computer">classid</span> attribute, <br/>• <span class="computer">codebase</span> attribute, <br/>• <span class="computer">data</span> attribute, <br/>• <span class="computer">href</span> attribute, <br/>• <span class="computer">longdesc</span> attribute, <br/>• <span class="computer">profile</span> attribute, <br/>• <span class="computer">src</span> attribute, <br/>• <span class="computer">usemap</span> attribute.<br/>
