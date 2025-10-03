---
layout: page
title: Javelin screen class
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/javelin-screen-class/
metadesc: Defines a group of screens with common features, in a Legacy connector.    By the term "screen" is meant a set of identifiable data which may be rende
ObjGroup: Legacy
ObjCatName: 
ObjName: Javelin screen class
ObjClass: com.twinsoft.convertigo.beans.screenclasses.JavelinScreenClass
ObjIcon: /images/beans/screenclasses/images/screenclass_color_32x32.png
topnav: topnavobj
---
##### Defines a group of screens with common features, in a Legacy connector.

By the term "screen" is meant a set of identifiable data which may be rendered to the user or not. It is generally used regardless of the resource accessed by Convertigo (web page, Legacy screen, HTTP stream, etc.).

Thus, in the case of *Legacy connector* (also called *Javelin connector*) projects (Legacy Integrator and Legacy Publisher), a screen may be defined by the data sent back by a Legacy host, for a green screen display.

A *Javelin screen class* is identified by a set of criteria which are dedicated to screen's data detection. When accessing a screen (i.e. a legacy screen) thanks to a *Javelin connector*, Convertigo looks for detection criteria defined for screen classes in current connector.

Convertigo considers that the accessed screen belongs to the *Javelin screen class* which all criteria match and which have the greatest number of criteria matching. For screen classes that would have the same number of matching criteria, Convertigo considers that the screen belongs to the screen class that has the greatest depth. And if screen classes also have the same depth, Convertigo considers that the screen belongs to the first screen class in alphabetical order.

For Legacy Integrator and Legacy Publisher projects (screens in a *Javelin connector*), detection criteria are *Empty screen*, *Emulator technology*, *Find string* and *Regular expression*. You can see these objects definitions and properties for more information.

A *Javelin screen class* can also be associated with extraction rules executed on its detection by Convertigo. Extraction rules define which data are to be extracted from a screen and turned into a proper XML document.

*Javelin screen classes* are pivotal in the execution of transactions, since their detection triggers the execution of screen class handlers (including actions to be performed on detected screens) and extraction rules (extracting data to be turned into XML).

**Note:** A *Javelin screen class* do not define one screen only, but all screens matching the specified criteria. It is up to the Convertigo programmer to set detection criteria.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
