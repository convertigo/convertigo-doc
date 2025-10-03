---
layout: page
title: MIME type
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/criteria/response-criteria/mime-type/
metadesc: Defines a response criterion based on MIME type for Site Clipper screen classes.    The  MIME type  criterion allows defining a regular expression tha
ObjGroup: SiteClipper
ObjCatName: response-criteria
ObjName: MIME type
ObjClass: com.twinsoft.convertigo.beans.criteria.siteclipper.MatchMimeType
ObjIcon: /images/beans/criteria/siteclipper/images/match_mimetype_color_32x32.png
topnav: topnavobj
---
##### Defines a response criterion based on MIME type for Site Clipper screen classes.

The *MIME type* criterion allows defining a regular expression that is applied on response MIME type. MIME type is a part of `content-type` HTTP header.

Matching condition: The *MIME type* criterion matches when the regular expression defined in **Regular expression** property matches response MIME type, i.e. if the string pattern described by the regular expression is found in the `MIME type` substring of the `content-type` header value.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Regular expression  | String | standard | Defines the regular expression to match.<br/>This property allows defining a regular expression as a string pattern.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
Reverse result | boolean | expert | Defines if the criteria's result should be reversed.<br/>When a criteria is evaluated, it can sometimes be useful to get the opposite of the standard result (i.e. when the criteria matches, its result is false, and when it doesn't match, its result is true). Use this property to reverse the standard result.<br/><br/>For example, you may define a screen class that does not contain the text "Hello" in white on black background. For that, you define a criterion matching on the text "Hello" in white on black background, and you reverse it thanks to this property.
