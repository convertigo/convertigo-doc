---
layout: page
title: Project
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/project/
metadesc: Defines a Convertigo project.    The  Project  is the basic entity of a Convertigo project. It contains all Convertigo objects needed for a Convertigo
ObjGroup: Common
ObjCatName: 
ObjName: Project
ObjClass: com.twinsoft.convertigo.beans.core.Project
ObjIcon: /images/beans/core/images/project_color_32x32.png
topnav: topnavobj
---
##### Defines a Convertigo project.

The *Project* is the basic entity of a Convertigo project. It contains all Convertigo objects needed for a Convertigo project to run properly:

- connectors,
- screen classes (with criteria, extraction rules and style sheets),
- transactions (with handlers, style sheets, variables and test cases),
- pools,
- sequences  (with steps, style sheets, variables and test cases).


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Context timeout | int | standard | Defines the inactivity time (in seconds) of the Convertigo context.<br/>If no requests are sent from the same user on the context for the set lifetime, Convertigo automatically removes it and frees memory.<br/><br/>When the context is freed, the **End Transaction** defined for the connector is automatically executed. You can set in this transaction any clean up code as a `logout` transaction to logout from the target application.
HTTP session timeout | int | standard | Defines the inactivity time (in seconds) of incoming HTTP sessions.<br/>This property allows to override the default HTTP session timeout for the current project.<br/><br/>The timeout value is set at the very first HTTP request. Thus considering the current project as the **front** project, timeout values set for projects referenced/used by front are ignored.
Version | String | standard | Defines the project's version.<br/>This property is an editable field that allows the project's developer to set a project's version. The project version syntax is free, the developer can use it the way he wants.<br/><br/>When exporting the project as an archive (`.car`) or deploying the project (on a server for example), the Convertigo Studio user interface proposes to the developer to update this project's version number field. It helps the developer to not forget editing it before a project's delivery.
Browsers | XMLVector | expert | Defines available browser types.<br/>This property is a table describing browser clients able to connect to Convertigo. It is used by Convertigo to choose the proper XSL style sheet for rendering HTML pages (for example for Mobile devices).<br/><br/>For each browser signature, the **Browsers definition** table contains two columns:<br/><br/>- **Keyword**: Each keyword is evaluated in turn by Convertigo. If any keyword set here is found in the browser signature by Convertigo, it is considered used by the client.<br/>- **Label**: Name of the browser used by the client.<br/><br/>**Note:** A new browser definition can be added to the list using the blue keyboard icon. The browser definitions defined in the list can be ordered using the arrow up and arrow down buttons, or deleted using the red cross icon.
CORS Origin | String | expert | Defines the client **Origin** authorized by the **Cross-Origin Resource Sharing**. (=Global; =Origin; empty; *; url1#url2)<br/>If not empty and the request contains the **Origin** header, this property add the response headers **Access-Control-Allow-Origin** and **Access-Control-Allow-Credentials**.<br/><br/>- **=Global**: use the value of the administration Main property **CORS Policy**.<br/>- **=Origin**: use the request **Origin** header.<br/>- **url1#url2#url3**: use one of the url if equals the request **Origin** header.<br/>- *****: allow all origins.<br/><br/>This header is used by AJAX requesters to allow the response handling.
JSON object output | JsonRoot | expert | Specifies how to build the JSON output object from the generated XML document node.<br/>This property can take the following values:<br/><br/>- **document node**: outputs the document XML node itself as a single JSON property.<br/>- **document child nodes**: outputs the document XML child nodes as JSON properties (default).<br/>- **document attributes and child nodes**: outputs the document XML attributes and child nodes as JSON properties.
JSON requester output | JsonOutput | expert | Specifies how the .json and .jsonp requesters convert XML to JSON.<br/>This property can take the following values:<br/><br/>- **verbose**: The JSON describes the XML: "attr", "text", "value" with sub objects.<br/>- **use type attributes**: The JSON interpret "type" XML attribute to convert the content into the right JSON type. Compatible with the JSON HTTP transaction output.
Namespace URI | String | expert | Defines the project's namespace URI to use in XSD and WSDL files.<br/>If this property is left empty, the default Convertigo project's namespace URI is used: `http://www.convertigo.com/convertigo/projects/<project_name>` with `<project_name>` the name of the current project.
Strict mode | boolean | expert | Specifies whether the project uses strict mode for **source** XPath.<br/>Strict mode is the default mode for 7.3 projects.<br/><br/>In **strict mode** , when a sequence calls a transaction or an other sequence, a sourced element is sent itself as a root object instead of sending the child elments. This behavior changes the way you should source elements containing text nodes. In **strict mode** , if you want to send the string value of an element you must point the source picker on the **text** node of this element and not on the element itself. This will result by generating an **/element/text()** xpath expression for the source.<br/><br/>Strict mode is very useful to send complex data to structured back ends such as the FullSync connector. Previous version projects will be automatically migrated as **Strict Mode** to **false** making sure that your projects will run safely in 7.3 without having to change your sources.
WSDL inline schemas | boolean | expert | Specifies whether the project's WSDL should be generated by including schemas or not.<br/>The WSDL describing the services can import the schemas defined in a separate file or can describe inline these schemas.<br/><br/>This property allows to specify the way the Convertigo developer wants schemas for the project's WSDL.
WSDL style | WsdlStyle | expert | Defines the project's WSDL style to use for the project (`DOC/LITERAL`, `RPC`, `ALL`).
XPath Engine | XPathEngine | expert | Specifies the XPath Engine to use.<br/>JXPath is the fastest but Xalan was use for Convertigo < 7.4.0<br/><br/>This affects all XPath evaluations of the projet (Sequence steps, HTML extraction rules, etc...)<br/><br/>In some cases, the project should be reloaded to take this parameter change.
