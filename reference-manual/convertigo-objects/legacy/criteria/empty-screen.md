---
layout: page
title: Empty screen
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/criteria/empty-screen/
metadesc: Defines a legacy screen criterion searching for an empty screen.   The  Empty screen  criterion applies to legacy applications, which are usually laun
ObjGroup: Legacy
ObjCatName: 
ObjName: Empty screen
ObjClass: com.twinsoft.convertigo.beans.common.EmptyScreen
ObjIcon: /images/beans/common/images/emptyscreen_color_32x32.png
topnav: topnavobj
---
##### Defines a legacy screen criterion searching for an empty screen. 

The <i>Empty screen</i> criterion applies to legacy applications, which are usually launched from empty screens. It can be useful to define a screen class in order to detect when Convertigo doesn't manage to connect to the application. <br/>In this case, it is recommended to use this criterion instead of a <i>Regular expression</i> criterion for optimizing response time.<br/>Matching condition: This criterion matches the screen class when all screen map lines are empty.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Reverse result | boolean | expert | Defines if the criteria's result should be reversed.<br/>When a criteria is evaluated, it can sometimes be useful to get the opposite of the standard result (i.e. when the criteria matches, its result is false, and when it doesn't match, its result is true). Use this property to reverse the standard result.<br/>For example, you may define a screen class that does not contain the text "Hello" in white on black background. For that, you define a criterion matching on the text "Hello" in white on black background, and you reverse it thanks to this property.
