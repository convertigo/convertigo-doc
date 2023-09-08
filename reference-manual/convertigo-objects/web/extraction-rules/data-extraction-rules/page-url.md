---
layout: page
title: Page URL
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/extraction-rules/data-extraction-rules/page-url/
metadesc: Retrieves the current page URL.   The  Page URL  extraction rule always extracts the URL of current web page. It is appended to the HTML transaction o
ObjGroup: Web
ObjCatName: data-extraction-rules
ObjName: Page URL
ObjClass: com.twinsoft.convertigo.beans.common.XMLHttpUrl
ObjIcon: /images/beans/common/images/xmlhttpurl_color_32x32.png
topnav: topnavobj
---
##### Retrieves the current page URL. 

The <i>Page URL</i> extraction rule always extracts the URL of current web page. It is appended to the HTML transaction output DOM as follows:<br/><span class="computer">&lt;HttpUrl&gt;urlContent&lt;/HttpUrl&gt;</span>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Tag name | String | configuration | Defines the tag name.<br/>By default, the URL is extracted in a <span class="computer">HttpUrl</span> tag. This property allows to change this XML tag.
