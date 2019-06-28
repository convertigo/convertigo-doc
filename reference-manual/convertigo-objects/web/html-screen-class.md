---
layout: page
title: HTML screen class
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/html-screen-class/
metadesc: Defines a group of screens with common features, in an HTML connector.   By the term "screen" is meant a set of identifiable data which may be rendere
ObjGroup: Web
ObjCatName: 
ObjName: HTML screen class
ObjClass: com.twinsoft.convertigo.beans.screenclasses.HtmlScreenClass
ObjIcon: /images/beans/screenclasses/images/screenclass_color_32x32.png
topnav: topnavobj
---
##### Defines a group of screens with common features, in an HTML connector. 

By the term "screen" is meant a set of identifiable data which may be rendered to the user or not. It is generally used regardless of the resource accessed by Convertigo (web page, Legacy screen, HTTP stream, etc.). <br/>Thus, in the case of <i>HTML connector</i> projects (Web Integrator and Web Clipper), a screen may be defined by the data displayed in an HTML browser, for a web page display. <br/>An <i>HTML Screen class</i> is identified by a set of criteria which are dedicated to screen's data detection. When accessing a screen (i.e. a web page) thanks to an <i>HTML connector</i>, Convertigo looks for detection criteria defined for screen classes in current connector. <br/>Convertigo considers that the accessed screen belongs to the <i>HTML screen class</i> which all criteria match and which have the greatest number of criteria matching. For screen classes that would have the same number of matching criteria, Convertigo considers that the screen belongs to the screen class that has the greatest depth. And if screen classes also have the same depth, Convertigo considers that the screen belongs to the first screen class in alphabetical order. <br/>For Web Integrator and Web Clipper projects (web pages in an <i>HTML connector</i>), detection criteria are <i>XPath</i> and <i>URL</i>. You can see these objects definitions and properties for more information. <br/>An <i>HTML screen class</i> can also be associated with extraction rules executed on its detection by Convertigo. Extraction rules define which data are to be extracted from a screen and turned into a proper XML document. <br/><i>HTML screen classes</i> are pivotal in the execution of transactions, since their detection triggers the execution of screen class handlers (including actions to be performed on detected screens) and extraction rules (extracting data to be turned into XML). <br/><span class="orangetwinsoft">Note:</span> An <i>HTML screen class</i> do not define one screen only, but all screens matching the specified criteria. It is up to the Convertigo programmer to set detection criteria. 

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
