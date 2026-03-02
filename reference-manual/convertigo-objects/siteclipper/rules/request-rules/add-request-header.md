---
layout: page
title: Add request header
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/request-rules/add-request-header/
metadesc: Adds an HTTP header to a Site Clipper request.    The  Add request header  extraction rule adds the header defined in  Header name  property to the re
ObjGroup: SiteClipper
ObjCatName: request-rules
ObjName: Add request header
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.AddHeaderToRequest
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_addheaderRequest_color_32x32.png
topnav: topnavobj
---
##### Adds an HTTP header to a Site Clipper request.

The *Add request header* extraction rule adds the header defined in **Header name** property to the request's headers.

The value set in this header is defined by the **Header value** property.

If the header defined in the **Header name** property exists in the request, the *Add request header* extraction rule has no effect.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Header name | String | configuration | Defines the header name.<br/>This property allows to define the name of the header to add to/modify in/remove from the request or the response which headers are manipulated.
Header value | String | configuration | Defines the header value.<br/>This property allows to define the value to set in the header defined by `Header name` property.
Is active | boolean | configuration | Defines whether the extraction rule is active.
