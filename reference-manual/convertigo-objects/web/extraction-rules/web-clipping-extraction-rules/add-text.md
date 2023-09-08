---
layout: page
title: Add text
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/extraction-rules/web-clipping-extraction-rules/add-text/
metadesc: Adds HTML text under a node.   The  Add text  extraction rule adds an HTML text element (<span class="computer">P  tag with text content) in the XHTML
ObjGroup: Web
ObjCatName: web-clipping-extraction-rules
ObjName: Add text
ObjClass: com.twinsoft.convertigo.beans.html.XMLAddText
ObjIcon: /images/beans/html/images/xml_add_text_color_32x32.png
topnav: topnavobj
---
##### Adds HTML text under a node. 

The <i>Add text</i> extraction rule adds an HTML text element (<span class="computer">P</span> tag with text content) in the XHTML content clipped by a <i>Web Clipper</i> extraction rule. <br/>It is part of the set of <b>Web Clipping</b> extraction rules adding content into the XHTML content of a previously executed <i>Web Clipper</i> extraction rule, such as:<br/><br/>• <i>Add link</i>, <br/>• <i>Add Image</i>, <br/>• <i>Add button</i>. <br/><br/>Such extraction rules change the XHTML content resulting from the execution of a <i>Web Clipper</i> extraction rule, by adding specific XHTML content based on defined parameters.<br/><span class="orangetwinsoft">Notes:</span> <br/><br/>• The <b>XPath</b> property set for such extraction rules must be valid in the XHTML output resulting from the <i>Web Clipper</i> extraction rule and possibly modified by previous rules.<br/>• If a list of nodes are matching the defined Xpath, the <i>Add text</i> extraction rule will only add one text under the first matching node.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Text | String | configuration | Defines the text content to add.<br/>Depending on the extraction rule, it is:<br/><br/>• the added text, for <i>Add text</i> rule, <br/>• the link displayed text, for <i>Add link rule</i>, <br/>• the added image label and alternative text, for <i>Add image</i> and <i>Add button</i> rules.<br/>
XPath | String | selection | Defines the Xpath expression of nodes on which the extraction rule applies.<br/>Depending on the extraction rule, the execution of this <b>Xpath</b> on the web page DOM can result in a single <span class="computer">Node</span> or a <span class="computer">NodeList</span>.
