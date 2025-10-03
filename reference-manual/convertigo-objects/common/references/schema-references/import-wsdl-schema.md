---
layout: page
title: Import WSDL schema
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/references/schema-references/import-wsdl-schema/
metadesc: References a WSDL file and imports its schemas in this project.    The  Import WSDL schema  reference enhances the current project's schema by importi
ObjGroup: Common
ObjCatName: schema-references
ObjName: Import WSDL schema
ObjClass: com.twinsoft.convertigo.beans.references.ImportWsdlSchemaReference
ObjIcon: /images/beans/references/images/WsdlSchemaReference_32x32.png
topnav: topnavobj
---
##### References a WSDL file and imports its schemas in this project.

The *Import WSDL schema* reference enhances the current project's schema by importing the referenced WSDL file's schemas.

The imported XSD objects (types, elements, groups, ...) can be used anywhere in current project sequences, using the **Assigned XSD Complex type QName** and **Assigned XSD Element ref QName** properties.

**Note:** The imported WSDL file should declare a target namespace different from the target namespace of the current project. It is mandatory for an XSD to be imported in another.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
WSDL URL | String | standard | Defines the URL of the WSDL file to import.<br/>If the WSDL file to import is outside of the current project (either a remote file or a file on the developer's computer but external to the project), this **WSDL URL** property is used to define the file's original URL.<br/><br/>**Note:**<br/><br/>- If the file to import is located in the file system (local or network drives), use the "Browse" button of the wizard: it will automatically create the correct file URL depending on your operating system (`file://[host]/path` or `file:[//host]/path`).<br/>- Once imported, the WSDL file will be copied locally in the current project's resources. This will then fill the **WSDL local path** property. If both are filled, only **WSDL local path** property is used.
WSDL local path | String | standard | Defines the Convertigo local path of the imported WSDL file.<br/>If the WSDL file to import is a local file in the current project or in the current workspace, this **WSDL local path** property is used to define the local file path.<br/><br/>This path is relative to Convertigo environment. Relative paths starting with:<br/><br/>- `./` are relative to Convertigo workspace,<br/>- `.//` are relative to current project folder.<br/><br/>**Note:** Only one of both **WSDL local path** or **WSDL URL** properties can be used. If both are filled, only **WSDL local path** property is used.
Auth password | String | expert | Defines the password to use for authentication.
Auth user | String | expert | Defines the username to use for authentication.
Authentication needed ? | boolean | expert | Defines if the reference resources need an authentication.
