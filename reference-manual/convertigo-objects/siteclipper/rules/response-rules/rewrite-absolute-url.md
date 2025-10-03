---
layout: page
title: Rewrite absolute URL
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/response-rules/rewrite-absolute-url/
metadesc: Rewrites absolute URLs found in a Site Clipper response.    The  Rewrite absolute URL  extraction rule rewrites absolute URLs found in Site Clipper HT
ObjGroup: SiteClipper
ObjCatName: response-rules
ObjName: Rewrite absolute URL
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.RewriteAbsoluteUrl
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_url_color_32x32.png
topnav: topnavobj
---
##### Rewrites absolute URLs found in a Site Clipper response.

The *Rewrite absolute URL* extraction rule rewrites absolute URLs found in Site Clipper HTTP responses, for the links or resources accessed by these URLs to be accessed through Convertigo Site Clipper.

This extraction rule will be executed only on HTTP responses that match certain MIME types:

- If **Rewrite HTML code** property value is set to `true`, URLs found in HTML code are rewritten. That means the extraction rule is searching for URLs to rewrite in HTTP responses of `text/html` or `application/xhtml+xml` MIME types.
- If **Rewrite CSS code** property value is set to `true`, URLs found in CSS code are rewritten. That means the extraction rule is searching for URLs to rewrite in HTTP responses of `text/css`, `text/html` or `application/xhtml+xml` MIME types.

**Note:**

- Absolute URLs are rewritten only if they don't match a black listed domain defined in the **Domains listing** property of the associated *Site Clipper connector*.
- If applicable, relative URLs are rewritten to absolute ones.
- URLs found in JavaScript code will not be rewritten by this rule. To do so, use a *Replace string* extraction rule parametered for your specific case.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Rewrite CSS code | boolean | configuration | Automatically rewrite absolute URLs in CSS code.<br/>This property allows to specify whether absolute URLs found in the CSS code of a Site Clipper response should be rewritten or not. Specifically to this rule, CSS code of a Site Clipper response is defined by an HTTP response of the following MIME types:<br/><br/>- `text/css`: Cascading Style Sheet text resource,<br/>- `text/html`: HTML text resource,<br/>- `application/xhtml+xml`: XHTML file resource.<br/><br/>If this property is set to `true`, URLs specified in following CSS keyword are rewritten:<br/><br/>- `url` keyword.
Rewrite HTML code | boolean | configuration | Automatically rewrite absolute URLs in HTML code.<br/>This property allows to specify whether absolute URLs found in the HTML code of a Site Clipper response should be rewritten or not. Specifically to this rule, HTML code of a Site Clipper response is defined by an HTTP response of the following MIME types:<br/><br/>- `text/html`: HTML text resource,<br/>- `application/xhtml+xml`: XHTML file resource.<br/><br/>If this property is set to `true`, URLs specified in following HTML attributes are rewritten:<br/><br/>- `action` attribute,<br/>- `background` attribute,<br/>- `cite` attribute,<br/>- `classid` attribute,<br/>- `codebase` attribute,<br/>- `data` attribute,<br/>- `href` attribute,<br/>- `longdesc` attribute,<br/>- `profile` attribute,<br/>- `src` attribute,<br/>- `usemap` attribute.
