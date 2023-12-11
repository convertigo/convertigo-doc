---
layout: page
title: Web Clipper
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/extraction-rules/web-clipping-extraction-rules/web-clipper/
metadesc: Clips fragments of a web page.   The  Web Clipper  extraction rule extracts entire parts of an HTML page. It is applied if the result of the Xpath exp
ObjGroup: Web
ObjCatName: web-clipping-extraction-rules
ObjName: Web Clipper
ObjClass: com.twinsoft.convertigo.beans.common.WebClipper
ObjIcon: /images/beans/common/images/webclipper_color_32x32.png
topnav: topnavobj
---
##### Clips fragments of a web page. 

The <i>Web Clipper</i> extraction rule extracts entire parts of an HTML page. It is applied if the result of the Xpath expression evaluation exists into the HTML page DOM. <br/>The fragment resulting from the Xpath expression evaluation on the HTML page DOM is appended to the HTML transaction output document, with its presentation (images, style sheets, etc.) and behavior (scripts, links, etc.). The URI paths present in the elements of this fragment are changed by Convertigo in order not to point directly towards these URIs.

Property | Type | Category | Description
--- | --- | --- | ---
Attributes | XMLVector | configuration | Lists the names of attributes that have to be processed by the rewriting of URI paths.<br/>By default, a list of usual attributes is already set: <span class="computer">src</span>, <span class="computer">href</span>, <span class="computer">background</span>, <span class="computer">action</span>, <span class="computer">cite</span>, <span class="computer">classid</span>, <span class="computer">codebase</span>, <span class="computer">data</span>, <span class="computer">longdesc</span>, <span class="computer">usemap</span>.<br/><span class="orangetwinsoft">Note:</span> A new attribute can be added to the list using the blue keyboard icon. The attributes defined in the list can be ordered using the arrow up and arrow down buttons, or deleted using the red cross icon.
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Enable HTTP tunnel | HttpTunnel | configuration | Defines whether resources and links are retrieved through Convertigo HTTP tunnel or not ; and if so, whether the Convertigo HTTP tunnel uses cache or not.<br/>It can take three values:<br/><br/>• <span class="computer">disable</span>: the resources are not got through Convertigo HTTP tunnel, but directly,<br/>• <span class="computer">cache</span>: the resources are got through COnvertigo HTTP tunnel and the tunnel uses cache,<br/>• <span class="computer">no cache</span>: the resources are got through COnvertigo HTTP tunnel and the tunnel doesn't use cache.<br/>
Enable parent extraction | boolean | configuration | Extracts all parents and ancestors of clipped elements for styles inheritance.
Is active | boolean | configuration | Defines whether the extraction rule is active.
XPath | String | selection | Defines the Xpath expression of nodes on which the extraction rule applies.<br/>Depending on the extraction rule, the execution of this <b>Xpath</b> on the web page DOM can result in a single <span class="computer">Node</span> or a <span class="computer">NodeList</span>.
