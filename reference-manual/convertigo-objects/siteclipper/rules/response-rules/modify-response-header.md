---
layout: page
title: Modify response header
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/response-rules/modify-response-header/
metadesc: Modifies an HTTP header in a Site Clipper response.   The  Modify response header  extraction rule modifies an existing header from a response. The na
ObjGroup: SiteClipper
ObjCatName: response-rules
ObjName: Modify response header
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.ModifyHeaderOfResponse
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_modifyheaderResponse_color_32x32.png
topnav: topnavobj
---
##### Modifies an HTTP header in a Site Clipper response. 

The <i>Modify response header</i> extraction rule modifies an existing header from a response. The name of the header to modify is defined by the <b>Header name</b> property.<br/>The new value to set in this header is defined by the <b>Header value</b> property.<br/>If the header defined in the <b>Header name</b> property doesn't exist in the response, the <i>Modify response header</i> extraction rule has no effect.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Header name | String | configuration | Defines the header name.<br/>This property allows to define the name of the header to add to/modify in/remove from the request or the response which headers are manipulated.
Header value | String | configuration | Defines the header value.<br/>This property allows to define the value to set in the header defined by <span class="computer">Header name</span> property.
Is active | boolean | configuration | Defines whether the extraction rule is active.
