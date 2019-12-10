---
layout: page
title: Import Project schema
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/references/schema-references/import-project-schema/
metadesc: References a Convertigo project and imports its schema in this project.   The  Import Project schema  reference enhances the current project's schema 
ObjGroup: Common
ObjCatName: schema-references
ObjName: Import Project schema
ObjClass: com.twinsoft.convertigo.beans.references.ProjectSchemaReference
ObjIcon: /images/beans/references/images/ProjectSchemaReference_32x32.png
topnav: topnavobj
---
##### References a Convertigo project and imports its schema in this project. 

The <i>Import Project schema</i> reference enhances the current project's schema by importing the referenced project's XSD. <br/>The imported XSD objects are used when <i>Call Sequence</i>/<i>Call Transaction</i> steps are used in current project's sequences. In this case, when creating a <i>Call Sequence</i>/<i>Call Transaction</i> step, the <i>Import Project schema</i> reference is automatically created. <br/>The imported XSD objects can also be used anywhere else in current project sequences, using the <b>Assigned XSD Complex type QName</b> and <b>Assigned XSD Element ref QName</b> properties. <br/><span class="orangetwinsoft">Note:</span> The referenced project must be present in the same Convertigo as current project. 

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Project name | String | standard | The name of the Convertigo project which XSD is referenced in this project.<br/>This property allows to choose the project name to reference from all projects existing in the Convertigo.
Auth password | String | expert | Defines the password to use for authentication.<br/>
Auth user | String | expert | Defines the username to use for authentication.<br/>
Authentication needed ? | boolean | expert | Defines if the reference resources need an authentication.<br/>
