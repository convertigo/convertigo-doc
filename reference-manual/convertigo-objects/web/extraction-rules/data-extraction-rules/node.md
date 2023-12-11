---
layout: page
title: Node
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/extraction-rules/data-extraction-rules/node/
metadesc: Extracts an XML node from a web page.   The  Node  extraction rule extracts an XML node from a web page. It is applied if the result of the Xpath expr
ObjGroup: Web
ObjCatName: data-extraction-rules
ObjName: Node
ObjClass: com.twinsoft.convertigo.beans.common.XMLNode
ObjIcon: /images/beans/common/images/xmlnode_color_32x32.png
topnav: topnavobj
---
##### Extracts an XML node from a web page. 

The <i>Node</i> extraction rule extracts an XML node from a web page. It is applied if the result of the Xpath expression evaluation exists into the HTML page DOM. <br/>The first node matching the Xpath expression is extracted: the element is copied then appended to the HTML transaction DOM.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
XPath | String | selection | Defines the Xpath expression of nodes on which the extraction rule applies.<br/>Depending on the extraction rule, the execution of this <b>Xpath</b> on the web page DOM can result in a single <span class="computer">Node</span> or a <span class="computer">NodeList</span>.
