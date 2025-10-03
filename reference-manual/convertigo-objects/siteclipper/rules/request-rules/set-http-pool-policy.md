---
layout: page
title: Set HTTP Pool Policy
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/request-rules/set-http-pool-policy/
metadesc: Change the HTTP Pool Policy for the request.    Force the current request to use a specified HTTP pool or no pool at all. 
ObjGroup: SiteClipper
ObjCatName: request-rules
ObjName: Set HTTP Pool Policy
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.SetHttpPoolPolicy
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_sethttppoolpolicy_color_32x32.png
topnav: topnavobj
---
##### Change the HTTP Pool Policy for the request.

Force the current request to use a specified HTTP pool or no pool at all.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
HTTP Pool | HttpPool | configuration | Defines the HTTP pool policy for connection reuse.<br/>Possible values:<br/><br/>- **no**: create a new connection for each request<br/>- **context**: pool connection for the current `convertigo context`<br/>- **session**: pool connection for the current `http session`<br/>- **global**: pool connection for the whole server<br/><br/>Default value is `global`.
Is active | boolean | configuration | Defines whether the extraction rule is active.
