---
layout: page
title: HTTP headers
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/extraction-rules/data-extraction-rules/http-headers/
metadesc: Extracts the HTTP headers of the response to the request Convertigo did to get the current web page.   The  HTTP headers  extraction rule always extra
ObjGroup: Web
ObjCatName: data-extraction-rules
ObjName: HTTP headers
ObjClass: com.twinsoft.convertigo.beans.common.XMLHttpHeaders
ObjIcon: /images/beans/common/images/xmlhttpheaders_color_32x32.png
topnav: topnavobj
---
##### Extracts the HTTP headers of the response to the request Convertigo did to get the current web page. 

The <i>HTTP headers</i> extraction rule always extracts HTTP headers of responses. They are appended to the HTML transaction output DOM as follows:<br/><span class="computer">&lt;HttpHeaders&gt;</span><br/><span class="computer">  &lt;header headerName="header1" headerValue="value1"/&gt;</span><br/><span class="computer">  &lt;header headerName="header2" headerValue="value2"/&gt;</span><br/><span class="computer">&lt;/HttpHeaders&gt;</span>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
