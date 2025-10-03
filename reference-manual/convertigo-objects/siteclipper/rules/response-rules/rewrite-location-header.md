---
layout: page
title: Rewrite location header
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/response-rules/rewrite-location-header/
metadesc: Rewrites the " Location " header value of a Site Clipper response.    The  Rewrite location header  extraction rule rewrites the " Location " header v
ObjGroup: SiteClipper
ObjCatName: response-rules
ObjName: Rewrite location header
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.RewriteLocationHeader
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_location_color_32x32.png
topnav: topnavobj
---
##### Rewrites the "`Location`" header value of a Site Clipper response.

The *Rewrite location header* extraction rule rewrites the "`Location`" header value of a Site Clipper response.

This response header is mostly used to redirect the recipient to a location other than the requested one for completion of the request or identification of a new resource. The extraction rule rewrites this URL in order to access the new location through Convertigo Site Clipper.

The *Rewrite location header* extraction rule's behavior depends on the type of URL found in the header. If the URI specified by the location's value is absolute, two cases are possible:

- if the URI doesn't match a black listed domain defined in *Site Clipper connector*, the header value is automatically rewritten,
- else, the header value remains unchanged.

If the URI specified by the location's value is relative, it is automatically rewritten.

**Note:** If applicable, location's URI is rewritten to an absolute value so that next client's request for the given resource is correctly handled by Convertigo.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
