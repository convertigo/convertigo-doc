---
layout: page
title: Remove response cache headers
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/response-rules/remove-response-cache-headers/
metadesc: Removes HTTP cache-related headers from a Site Clipper response.    The  Remove request cache headers  extraction rule removes existing cache-related 
ObjGroup: SiteClipper
ObjCatName: response-rules
ObjName: Remove response cache headers
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.RemoveCacheHeadersFromResponse
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_removeCacheheadersResponse_color_32x32.png
topnav: topnavobj
---
##### Removes HTTP cache-related headers from a Site Clipper response.

The *Remove request cache headers* extraction rule removes existing cache-related headers from a response. The following headers are removed:

- `Last-Modified`,
- `Cache-Control`,
- `ETag`.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
