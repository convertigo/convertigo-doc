---
layout: page
title: Response header
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/criteria/response-criteria/response-header/
metadesc: Defines a response criterion based on HTTP headers for Site Clipper screen classes.    The  Response header  criterion allows defining a regular expre
ObjGroup: SiteClipper
ObjCatName: response-criteria
ObjName: Response header
ObjClass: com.twinsoft.convertigo.beans.criteria.siteclipper.MatchHeaderOfResponse
ObjIcon: /images/beans/criteria/siteclipper/images/match_headerResponse_color_32x32.png
topnav: topnavobj
---
##### Defines a response criterion based on HTTP headers for Site Clipper screen classes.

The *Response header* criterion allows defining a regular expression that is applied on a response header. Response header to test is defined in **Header name** property.

Matching condition: The *Response header* criterion matches when the regular expression defined in **Regular expression** property matches defined response header, i.e. if the string pattern described by the regular expression is found in the response header value.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Header name | String | standard | Defines the name of the header which content is tested against the regular expression.
Regular expression  | String | standard | Defines the regular expression to match.<br/>This property allows defining a regular expression as a string pattern.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
Reverse result | boolean | expert | Defines if the criteria's result should be reversed.<br/>When a criteria is evaluated, it can sometimes be useful to get the opposite of the standard result (i.e. when the criteria matches, its result is false, and when it doesn't match, its result is true). Use this property to reverse the standard result.<br/><br/>For example, you may define a screen class that does not contain the text "Hello" in white on black background. For that, you define a criterion matching on the text "Hello" in white on black background, and you reverse it thanks to this property.
