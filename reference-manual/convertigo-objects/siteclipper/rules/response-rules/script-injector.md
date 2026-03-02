---
layout: page
title: Script injector
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/response-rules/script-injector/
metadesc: Injects script code into a Site Clipper response.    The  Script injector  extraction rule inserts a  &lt;script&gt;&lt;/script&gt;  element into the 
ObjGroup: SiteClipper
ObjCatName: response-rules
ObjName: Script injector
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.ScriptInjector
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_script_color_32x32.png
topnav: topnavobj
---
##### Injects script code into a Site Clipper response.

The *Script injector* extraction rule inserts a `<script></script>` element into the received response.

The location where to insert the element is defined by the **Injection location** property which may be customized using the **Custom regexp** property.

The script's source code is contained in an external file which path is defined in the **File path** property.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
File path | String | configuration | Defines the external file path used for the source attribute of the inserted HTML tag.<br/>This property allows specifying the path to an external file which contains the source code.<br/><br/>The path value must be relative to the current project folder.
Injection location | HtmlLocation | configuration | Defines the location where to insert the element.<br/>This property allows choosing where the new HTML element has to be inserted into the received response.<br/><br/>Predefined values are:<br/><br/>- `head_top`: inserts after the opening <HEAD> tag,<br/>- `head_bottom`: inserts before the closing </HEAD> tag,<br/>- `body_top`: inserts after the opening <BODY> tag,<br/>- `body_bottom`: inserts before the closing </BODY> tag,<br/>- `custom`: inserts at a custom location defined by the **Custom regexp** property.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Custom regexp | String | selection | Defines the regular expression to use for a custom injection location.<br/>When **Injection location** property value is set to `custom`, the **Custom regexp** property allows defining a regular expression to specify the custom location where to insert the HTML element, rather than using the predefined values.<br/><br/>**Note:**<br/><br/>- This expression must contains () to specify where to insert the code.<br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
