---
layout: page
title: URL
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/criteria/request-criteria/url/
metadesc: Defines a request criterion based on URL for Site Clipper screen classes.   The  URL  criterion allows defining a regular expression that is applied o
ObjGroup: SiteClipper
ObjCatName: request-criteria
ObjName: URL
ObjClass: com.twinsoft.convertigo.beans.criteria.siteclipper.MatchUrl
ObjIcon: /images/beans/criteria/siteclipper/images/match_url_color_32x32.png
topnav: topnavobj
---
##### Defines a request criterion based on URL for Site Clipper screen classes. 

The <i>URL</i> criterion allows defining a regular expression that is applied on request URL. <br/>By default, the regular expression is tested on base URL. The query string can be added to the tested URL thanks to the <b>Include query string</b> property. <br/>Matching condition: The <i>URL</i> criterion matches when the regular expression defined in <b>Regular expression</b> property matches request URL, i.e. if the string pattern described by the regular expression is found in the request URL.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Include query string | boolean | standard | Defines whether the query string should be concatenated to the base URL for detection.<br/>If this property is set to <span class="computer">true</span>, the query string, if existing, is concatenated to the base URL before the <b>Regular expression</b> is applied.
Regular expression  | String | standard | Defines the regular expression to match.<br/>This property allows defining a regular expression as a string pattern. <br/><span class="orangetwinsoft">Notes:</span><br/><br/>• For more information about regular expression patterns, see the following page: <span class="computer">http://www.regular-expressions.info/reference.html</span>. <br/>• To test regular expressions, you can use the regular expression tester at the following URL: <span class="computer">http://www.regular-expressions.info/javascriptexample.html</span>.<br/>
Reverse result | boolean | expert | Defines if the criteria's result should be reversed.<br/>When a criteria is evaluated, it can sometimes be useful to get the opposite of the standard result (i.e. when the criteria matches, its result is false, and when it doesn't match, its result is true). Use this property to reverse the standard result.<br/>For example, you may define a screen class that does not contain the text "Hello" in white on black background. For that, you define a criterion matching on the text "Hello" in white on black background, and you reverse it thanks to this property.
