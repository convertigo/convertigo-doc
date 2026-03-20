---
layout: page
title: Remove response header
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/response-rules/remove-response-header/
metadesc: Removes an HTTP header from a Site Clipper response.   The  Remove response header  extraction rule removes an existing header from a response. The  n
ObjGroup: SiteClipper
ObjCatName: response-rules
ObjName: Remove response header
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.RemoveHeaderFromResponse
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_removeheaderResponse_color_32x32.png
topnav: topnavobj
---
##### Removes an HTTP header from a Site Clipper response. 

The <i>Remove response header</i> extraction rule removes an existing header from a response. The  name of the header to remove is defined by the <b>Header name</b> property.<br/>If the header defined in the <b>Header name</b> property doesn't exist in the response, the <i>Remove response header</i> extraction rule has no effect.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Header name | String | configuration | Defines the header name.<br/>This property allows to define the name of the header to add to/modify in/remove from the request or the response which headers are manipulated.
Is active | boolean | configuration | Defines whether the extraction rule is active.
