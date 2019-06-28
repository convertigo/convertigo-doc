---
layout: page
title: Include XSD schema
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/references/schema-references/include-xsd-schema/
metadesc: References an XSD file and includes its schemas in this project.   The  Include XSD schema  reference enhances the current project's schema by includi
ObjGroup: Common
ObjCatName: schema-references
ObjName: Include XSD schema
ObjClass: com.twinsoft.convertigo.beans.references.IncludeXsdSchemaReference
ObjIcon: /images/beans/references/images/XsdSchemaReference_32x32.png
topnav: topnavobj
---
##### References an XSD file and includes its schemas in this project. 

The <i>Include XSD schema</i> reference enhances the current project's schema by including the referenced XSD file. <br/>The included XSD objects (types, elements, groups, ...) can be used anywhere in current project sequences, using the <b>Assigned XSD Complex type QName</b> and <b>Assigned XSD Element ref QName</b> properties. <br/><span class="orangetwinsoft">Note:</span> The included XSD file should declare the same target namespace as the current project. It is mandatory for an XSD to be included in another.  

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
XSD URL | String | standard | Defines the URL of the XSD file to import.<br/>If the XSD file to import is outside of the current project (either a remote file or a file on the developer's computer but external to the project), this <b>XSD URL</b> property is used to define the file's URL. <br/><span class="orangetwinsoft">Notes:</span> <br/><br/>• If the file to import is located in the file system (local or network drives), use the "Browse" button of the wizard: it will automatically create the correct file URL depending on your operating system (<span class="computer">file://[host]/path</span> or <span class="computer">file:[//host]/path</span>). <br/>• Only one of both <b>XSD local path</b> or <b>XSD URL</b> properties can be used. If both are filled, only <b>XSD local path</b> property is used.<br/>
XSD local path | String | standard | Defines the Convertigo local path of the imported XSD file.<br/>If the XSD file to import is a local file in the current project or in the current workspace, this <b>XSD local path</b> property is used to define the local file path. <br/>This path is relative to Convertigo environment. Relative paths starting with:<br/><br/>• <span class="computer">./</span> are relative to Convertigo workspace,<br/>• <span class="computer">.//</span> are relative to current project folder. <br/><br/><span class="orangetwinsoft">Note:</span> Only one of both <b>XSD local path</b> or <b>XSD URL</b> properties can be used. If both are filled, only <b>XSD local path</b> property is used.
Auth password | String | expert | Defines the password to use for authentication.<br/>
Auth user | String | expert | Defines the username to use for authentication.<br/>
Authentication needed ? | boolean | expert | Defines if the reference resources need an authentication.<br/>
