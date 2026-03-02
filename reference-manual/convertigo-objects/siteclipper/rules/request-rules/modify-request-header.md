---
layout: page
title: Modify request header
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/request-rules/modify-request-header/
metadesc: Modifies an HTTP header in a Site Clipper request.    The  Modify request header  extraction rule modifies an existing header from a request. The name
ObjGroup: SiteClipper
ObjCatName: request-rules
ObjName: Modify request header
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.ModifyHeaderOfRequest
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_modifyheaderRequest_color_32x32.png
topnav: topnavobj
---
##### Modifies an HTTP header in a Site Clipper request.

The *Modify request header* extraction rule modifies an existing header from a request. The name of the header to modify is defined by the **Header name** property.

The new value to set in this header is defined by the **Header value** property.

If the header defined in the **Header name** property doesn't exist in the request, the *Modify request header* extraction rule has no effect.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Header name | String | configuration | Defines the header name.<br/>This property allows to define the name of the header to add to/modify in/remove from the request or the response which headers are manipulated.
Header value | String | configuration | Defines the header value.<br/>This property allows to define the value to set in the header defined by `Header name` property.
Is active | boolean | configuration | Defines whether the extraction rule is active.
