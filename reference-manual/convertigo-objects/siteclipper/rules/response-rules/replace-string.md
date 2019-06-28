---
layout: page
title: Replace string
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/response-rules/replace-string/
metadesc: Makes string replacements in a Site Clipper response.   The  Replace string  extraction rule replaces, in a Site Clipper response, string occurrences 
ObjGroup: SiteClipper
ObjCatName: response-rules
ObjName: Replace string
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.ReplaceString
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_string_color_32x32.png
topnav: topnavobj
---
##### Makes string replacements in a Site Clipper response. 

The <i>Replace string</i> extraction rule replaces, in a Site Clipper response, string occurrences matching the regular expression defined in <b>Regular expression</b> property. <br/>The corresponding strings from the response are replaced by the value defined in the <b>Replacement</b> property.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Regular expression | String | configuration | Defines the regular expression defining text to be replaced.<br/>This property allows defining a regular expression as a string pattern to find in the Site Clipper response. <br/><span class="orangetwinsoft">Notes:</span><br/><br/>• For more information about regular expression patterns, see the following page: <span class="computer">http://www.regular-expressions.info/reference.html</span>. <br/>• To test regular expressions, you can use the regular expression tester at the following URL: <span class="computer">http://www.regular-expressions.info/javascriptexample.html</span>.<br/>
Replacement | String | configuration | Defines the replacement string to apply.<br/>This property defines the string that will be set in the place of each string occurrence matching the regular expression in the Site Clipper response. <br/><span class="orangetwinsoft">Note:</span><br/><br/>• This property can refer to <b>groups</b>, which is a standard notion of regular expressions. For more information about regular expressions groups and symbols to use in replacement strings, see the following pages: <span class="computer">http://www.regular-expressions.info/refadv.html</span> and <span class="computer">http://www.regular-expressions.info/refreplace.html</span>. <br/>• This property can use available variables automatically containing Convertigo server paths. For more information about Convertigo paths variables, see Appendix "<i>Convertigo paths variables - Usable symbols</i>".<br/>
