---
layout: page
title: Site Clipper screen class
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/site-clipper-screen-class/
metadesc: Defines a group of screens with common features in a Site Clipper connector.    By the term "screen" is meant a set of identifiable data which may be 
ObjGroup: SiteClipper
ObjCatName: 
ObjName: Site Clipper screen class
ObjClass: com.twinsoft.convertigo.beans.screenclasses.SiteClipperScreenClass
ObjIcon: /images/beans/screenclasses/images/screenclass_color_32x32.png
topnav: topnavobj
---
##### Defines a group of screens with common features in a Site Clipper connector.

By the term "screen" is meant a set of identifiable data which may be rendered to the user or not. It is generally used regardless of the resource accessed by Convertigo (web page, Legacy screen, HTTP stream, etc.).

Thus, in the case of *Site Clipper connector* projects, a screen may be defined by the data contained in an HTTP message, for a resource request.

A *Site Clipper screen class* is identified by a set of criteria which are dedicated to screen's data detection. When accessing a screen (i.e. a web resource), Convertigo looks for detection criteria defined for screen classes.

Convertigo considers that the accessed screen belongs to the *Site Clipper screen class* which all criteria match and which have the greatest number of criteria matching. For screen classes that would have the same number of matching criteria, Convertigo considers that the screen belongs to the screen class that has the greatest depth. And if screen classes also have the same depth, Convertigo considers that the screen belongs to the first screen class in alphabetical order.

For Site Clipper projects (web applications and HTTP streams in *Site Clipper connector*), detection criteria are *MIME type*, *Regular expression*, *Request header*, *Response header* and *URL*.

A *Site Clipper screen class* can also be associated with extraction rules executed on its detection by Convertigo. Extraction rules define which data are to be modified from a screen and turned into an HTTP request or response.

*Site Clipper screen classes* are pivotal in the execution of transactions, since their detection triggers the execution of screen class handlers (including actions to be performed on detected screens) and extraction rules (modifying HTTP data).

**Note:** A *Site Clipper screen class* do not define one screen only, but all screens matching the specified criteria. It is up to the Convertigo programmer to set detection criteria.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
