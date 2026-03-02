---
layout: page
title: Emulator technology
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/criteria/emulator-technology/
metadesc: Defines the emulator technology used as a criterion for detecting screen classes.    A legacy project declares a unique  Emulator technology  criterio
ObjGroup: Legacy
ObjCatName: 
ObjName: Emulator technology
ObjClass: com.twinsoft.convertigo.beans.common.EmulatorTechnology
ObjIcon: /images/beans/common/images/emulatortechnology_color_32x32.png
topnav: topnavobj
---
##### Defines the emulator technology used as a criterion for detecting screen classes.

A legacy project declares a unique *Emulator technology* criterion. It is always associated with the project's root screen class and cannot be changed or deleted. It is inherited and should match for all screen classes of a given project.

Available legacy technologies are:

- Bull DKU 7107
- IBM 3270
- IBM 5250
- Minitel
- Unix VT220

Matching condition: This criterion always matches as the emulator technology is defined by the legacy connector which connects to the legacy application.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Reverse result | boolean | expert | Defines if the criteria's result should be reversed.<br/>When a criteria is evaluated, it can sometimes be useful to get the opposite of the standard result (i.e. when the criteria matches, its result is false, and when it doesn't match, its result is true). Use this property to reverse the standard result.<br/><br/>For example, you may define a screen class that does not contain the text "Hello" in white on black background. For that, you define a criterion matching on the text "Hello" in white on black background, and you reverse it thanks to this property.
