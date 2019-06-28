---
layout: page
title: Find string
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/criteria/find-string/
metadesc: Defines a legacy screen criterion searching for a string into the screen using possibly given presentation attributes.   Matching conditions  The  Fin
ObjGroup: Legacy
ObjCatName: 
ObjName: Find string
ObjClass: com.twinsoft.convertigo.beans.common.FindString
ObjIcon: /images/beans/common/images/findstring_color_32x32.png
topnav: topnavobj
---
##### Defines a legacy screen criterion searching for a string into the screen using possibly given presentation attributes. 

Matching conditions: The <i>Find string</i> criterion matches on a screen when: <br/><br/>• the text starting at a given position (line, column) in the screen corresponds to the searched string, <br/>• this text has defined presentation attributes. <br/>

Property | Type | Category | Description
--- | --- | --- | ---
Column | int | standard | Defines the column from which the criterion should match.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Line | int | standard | Defines the line from which the criterion should match.
Presentation attributes | int | standard | Defines the presentation attributes to match.<br/>This property allows to configure the criterion so that it matches only to parts of screens having specific attributes, for example green text on black background.<br/>Presentation attributes to configure are :<br/><br/>• <b>Color</b>: <span class="computer">Foreground</span> color, <span class="computer">Background</span> color, to choose in a list of predefined colors or not to take into account.<br/>• <b>Decoration</b>: <span class="computer">bold</span>, <span class="computer">reverse</span>, <span class="computer">underlined</span>, <span class="computer">blink</span>, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".<br/>
String | String | standard | Defines the string to search.
Reverse result | boolean | expert | Defines if the criteria's result should be reversed.<br/>When a criteria is evaluated, it can sometimes be useful to get the opposite of the standard result (i.e. when the criteria matches, its result is false, and when it doesn't match, its result is true). Use this property to reverse the standard result.<br/>For example, you may define a screen class that does not contain the text "Hello" in white on black background. For that, you define a criterion matching on the text "Hello" in white on black background, and you reverse it thanks to this property.
