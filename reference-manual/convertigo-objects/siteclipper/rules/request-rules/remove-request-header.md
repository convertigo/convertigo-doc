---
layout: page
title: Remove request header
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/request-rules/remove-request-header/
metadesc: Removes an HTTP header from a Site Clipper request.    The  Remove request header  extraction rule removes an existing header from a request. The  nam
ObjGroup: SiteClipper
ObjCatName: request-rules
ObjName: Remove request header
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.RemoveHeaderFromRequest
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_removeheaderRequest_color_32x32.png
topnav: topnavobj
---
##### Removes an HTTP header from a Site Clipper request.

The *Remove request header* extraction rule removes an existing header from a request. The  name of the header to remove is defined by the **Header name** property.

If the header defined in the **Header name** property doesn't exist in the request, the *Remove request header* extraction rule has no effect.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Header name | String | configuration | Defines the header name.<br/>This property allows to define the name of the header to add to/modify in/remove from the request or the response which headers are manipulated.
Is active | boolean | configuration | Defines whether the extraction rule is active.
