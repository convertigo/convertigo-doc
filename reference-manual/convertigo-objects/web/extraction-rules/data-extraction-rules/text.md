---
layout: page
title: Text
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/extraction-rules/data-extraction-rules/text/
metadesc: Extracts data from a web page in an XML text node.   The  Text  extraction rule helps you extract a text from an HTML page. It is applied if the resul
ObjGroup: Web
ObjCatName: data-extraction-rules
ObjName: Text
ObjClass: com.twinsoft.convertigo.beans.common.XMLText
ObjIcon: /images/beans/common/images/xmltext_color_32x32.png
topnav: topnavobj
---
##### Extracts data from a web page in an XML text node. 

The <i>Text</i> extraction rule helps you extract a text from an HTML page. It is applied if the result of the Xpath expression evaluation exists in the HTML page DOM. <br/>It creates a simple XML element containing text extracted from the first matching node. This text element is appended to the resulting HTML transaction DOM as follows: <br/><span class="computer">&lt;text_tagname referer="referer_url"&gt;extracted text from xpath&lt;/text_tagname&gt;</span>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Display referer | boolean | configuration | Defines whether the referer URL is displayed in the output XML element.<br/>If this property is set to <span class="computer">true</span>, the referer URL is added as an attribute, named <span class="computer">referer</span>, to the XML element added by the extraction rule.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Recurse | boolean | configuration | Defines whether text extraction should recurse on child elements of the matching node.
Tag name | String | configuration | Defines the tag name in the resulting XML (default tag name is <span class="computer">XMLText</span>).
XPath | String | selection | Defines the Xpath expression of nodes on which the extraction rule applies.<br/>Depending on the extraction rule, the execution of this <b>Xpath</b> on the web page DOM can result in a single <span class="computer">Node</span> or a <span class="computer">NodeList</span>.
