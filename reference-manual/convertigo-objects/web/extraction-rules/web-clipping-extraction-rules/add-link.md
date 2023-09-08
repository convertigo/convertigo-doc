---
layout: page
title: Add link
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/extraction-rules/web-clipping-extraction-rules/add-link/
metadesc: Adds an HTML link under a node.   The  Add link  extraction rule adds an HTML link (<span class="computer">A  tag with attributes and content) in the 
ObjGroup: Web
ObjCatName: web-clipping-extraction-rules
ObjName: Add link
ObjClass: com.twinsoft.convertigo.beans.html.XMLAddLink
ObjIcon: /images/beans/html/images/xml_add_link_color_32x32.png
topnav: topnavobj
---
##### Adds an HTML link under a node. 

The <i>Add link</i> extraction rule adds an HTML link (<span class="computer">A</span> tag with attributes and content) in the XHTML content clipped by a <i>Web Clipper</i> extraction rule. <br/>It is part of the set of <b>Web Clipping</b> extraction rules adding content into the XHTML content of a previously executed <i>Web Clipper</i> extraction rule, such as:<br/><br/>• <i>Add image</i>, <br/>• <i>Add text</i>, <br/>• <i>Add button</i>. <br/><br/>Such extraction rules change the XHTML content resulting from the execution of a <i>Web Clipper</i> extraction rule, by adding specific XHTML content based on defined parameters.<br/><span class="orangetwinsoft">Notes:</span> <br/><br/>• The <b>XPath</b> property set for such extraction rules must be valid in the XHTML output resulting from the <i>Web Clipper</i> extraction rule and possibly modified by previous rules.<br/>• If a list of nodes are matching the defined Xpath, the <i>Add link</i> extraction rule will only add one link under the first matching node.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Href | JS expression | configuration | Defines the content of the <span class="computer">href</span> attribute.<br/>The <span class="computer">href</span> attribute allows to define the link destination, i.e. which web page this link will reach.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Target new window | boolean | configuration | Defines whether the link should open in a new window.<br/>If set to <span class="computer">true</span>, sets the tag <span class="computer">target</span> attribute to <span class="computer">target="_blank"</span>.
Text | String | configuration | Defines the text content to add.<br/>Depending on the extraction rule, it is:<br/><br/>• the added text, for <i>Add text</i> rule, <br/>• the link displayed text, for <i>Add link rule</i>, <br/>• the added image label and alternative text, for <i>Add image</i> and <i>Add button</i> rules.<br/>
XPath | String | selection | Defines the Xpath expression of nodes on which the extraction rule applies.<br/>Depending on the extraction rule, the execution of this <b>Xpath</b> on the web page DOM can result in a single <span class="computer">Node</span> or a <span class="computer">NodeList</span>.
