---
layout: page
title: Remove request cache headers
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/request-rules/remove-request-cache-headers/
metadesc: Removes HTTP cache-related headers from a Site Clipper request.   The  Remove request cache headers  extraction rule removes all existing cache-relate
ObjGroup: SiteClipper
ObjCatName: request-rules
ObjName: Remove request cache headers
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.RemoveCacheHeadersFromRequest
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_removeCacheheadersRequest_color_32x32.png
topnav: topnavobj
---
##### Removes HTTP cache-related headers from a Site Clipper request. 

The <i>Remove request cache headers</i> extraction rule removes all existing cache-related headers from a request. The following headers are removed: <br/><br/>• <span class="computer">Cache-Control</span>, <br/>• <span class="computer">If-Match</span>, <br/>• <span class="computer">If-Modified-Since</span>, <br/>• <span class="computer">If-Range</span>, <br/>• <span class="computer">If-None-Match</span>, <br/>• <span class="computer">If-Unmodified-Since</span>.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
