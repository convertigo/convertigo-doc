---
layout: page
title: Regular expression
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/criteria/response-criteria/regular-expression/
metadesc: Defines a response criterion based on a regular expression on data content for Site Clipper screen classes.   The  Regular expression  criterion allow
ObjGroup: SiteClipper
ObjCatName: response-criteria
ObjName: Regular expression
ObjClass: com.twinsoft.convertigo.beans.criteria.siteclipper.MatchRegExp
ObjIcon: /images/beans/criteria/siteclipper/images/match_regexp_color_32x32.png
topnav: topnavobj
---
##### Defines a response criterion based on a regular expression on data content for Site Clipper screen classes. 

The <i>Regular expression</i> criterion allows defining a regular expression that is applied on response data content. <br/>Matching condition: The <i>Regular expression</i> criterion matches when the regular expression defined in <b>Regular expression</b> property matches response data content, i.e. if the string pattern described by the regular expression is found in the response data.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Regular expression  | String | standard | Defines the regular expression to match.<br/>This property allows defining a regular expression as a string pattern. <br/><span class="orangetwinsoft">Notes:</span><br/><br/>• For more information about regular expression patterns, see the following page: <span class="computer">http://www.regular-expressions.info/reference.html</span>. <br/>• To test regular expressions, you can use the regular expression tester at the following URL: <span class="computer">http://www.regular-expressions.info/javascriptexample.html</span>.<br/>
Reverse result | boolean | expert | Defines if the criteria's result should be reversed.<br/>When a criteria is evaluated, it can sometimes be useful to get the opposite of the standard result (i.e. when the criteria matches, its result is false, and when it doesn't match, its result is true). Use this property to reverse the standard result.<br/>For example, you may define a screen class that does not contain the text "Hello" in white on black background. For that, you define a criterion matching on the text "Hello" in white on black background, and you reverse it thanks to this property.
