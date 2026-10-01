---
layout: page
title: SOAP web service
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/references/web-service-references/soap-web-service/
metadesc: References a SOAP web service by creating the  HTTP connector  with all transactions matching the web service methods, referencing its WSDL file and i
ObjGroup: Common
ObjCatName: web-service-references
ObjName: SOAP web service
ObjClass: com.twinsoft.convertigo.beans.references.WebServiceReference
ObjIcon: /images/beans/references/images/WebServiceReference_32x32.png
topnav: topnavobj
---
##### References a SOAP web service by creating the <i>HTTP connector</i> with all transactions matching the web service methods, referencing its WSDL file and importing its schemas in this project. 

The <i>SOAP web service</i> reference creates an <i>HTTP connector</i> configured to target the web service. It automatically creates <i>XML HTTP transactions</i> for each method described by the web service, including their variables. <br/>The <i>SOAP web service</i> reference also enhances the current project's schema by importing the referenced WSDL file's schemas (such as an <i>Import WSDL schema</i> reference). <br/>The imported XSD objects (types, elements, groups, ...) are automatically used to define the transactions output schemas. They can also be used anywhere in current project sequences, using the <b>Assigned XSD Complex type QName</b> and <b>Assigned XSD Element ref QName</b> properties. <br/><span class="orangetwinsoft">Notes:</span> <br/><br/>• The referenced WSDL file is copied locally in current project's resources, in <span class="computer">wsdl</span> folder. <br/>• The imported WSDL file should declare a target namespace different from the target namespace of the current project. It is mandatory for an XSD to be imported in another.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
WSDL URL | String | standard | Defines the URL of the WSDL file to import.<br/>If the WSDL file to import is outside of the current project (either a remote file or a file on the developer's computer but external to the project), this <b>WSDL URL</b> property is used to define the file's original URL. <br/><span class="orangetwinsoft">Notes:</span> <br/><br/>• If the file to import is located in the file system (local or network drives), use the "Browse" button of the wizard: it will automatically create the correct file URL depending on your operating system (<span class="computer">file://[host]/path</span> or <span class="computer">file:[//host]/path</span>). <br/>• Once imported, the WSDL file will be copied locally in the current project's resources. This will then fill the <b>WSDL local path</b> property. If both are filled, only <b>WSDL local path</b> property is used.<br/>
WSDL local path | String | standard | Defines the Convertigo local path of the imported WSDL file.<br/>If the WSDL file to import is a local file in the current project or in the current workspace, this <b>WSDL local path</b> property is used to define the local file path. <br/>This path is relative to Convertigo environment. Relative paths starting with:<br/><br/>• <span class="computer">./</span> are relative to Convertigo workspace,<br/>• <span class="computer">.//</span> are relative to current project folder. <br/><br/><span class="orangetwinsoft">Note:</span> Only one of both <b>WSDL local path</b> or <b>WSDL URL</b> properties can be used. If both are filled, only <b>WSDL local path</b> property is used.
Auth password | String | expert | Defines the password to use for authentication.<br/>
Auth user | String | expert | Defines the username to use for authentication.<br/>
Authentication needed ? | boolean | expert | Defines if the reference resources need an authentication.<br/>
