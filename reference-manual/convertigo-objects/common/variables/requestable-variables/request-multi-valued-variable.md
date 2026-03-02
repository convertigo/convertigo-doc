---
layout: page
title: Request multi-valued variable
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/variables/requestable-variables/request-multi-valued-variable/
metadesc: Defines a multi-valued variable for a transaction/sequence.    A  Request multi-valued variable  declares a variable which accepts one or more values 
ObjGroup: Common
ObjCatName: requestable-variables
ObjName: Request multi-valued variable
ObjClass: com.twinsoft.convertigo.beans.variables.RequestableMultiValuedVariable
ObjIcon: /images/beans/variables/images/multivaluedvariable_color_32x32.png
topnav: topnavobj
---
##### Defines a multi-valued variable for a transaction/sequence.

A *Request multi-valued variable* declares a variable which accepts one or more values to a transaction/sequence.

This variable is dedicated to the following transaction/sequence objects, except for HTTP-based transactions which use more specific variables:

- *Generic Sequence*,
- *Javelin transaction*,
- *SQL transaction*,
- *Site Clipper transaction*.

This variable object can define a default list of value(s), specified in the **Default value** property, that is used if no value is is found for this variable.

At runtime, the variable values are calculated by Convertigo through the following steps:

- the values are received in the request to the transaction/sequence,
- if no value is received for this variable, the JavaScript value of the variable is chosen, if a variable of the same name exists in the JavaScript scope of current context (this JavaScript variable should be an array of values),
- if no JavaScript value is defined, the context value of the variable is chosen, if a variable of the same name is stored in current context,
- if none of the previous methods gives values, the default list of values is used,
- if no default value is specified, the variable is not defined and an Exception can be thrown when trying to access its values in the core of the transaction/sequence.

**Note:** In Convertigo Studio, when a *Request multi-valued variable* is created in a transaction/sequence, it can be easily replaced by a *Request single-valued variable*, using the right-click menu on the variable and choosing the option **Change to** > **SingleValued variable**.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Default value | Object | standard | Defines the variable's default value(s).<br/>This property allows defining a default value or default list of values to use when no variable value is provided to the parent transaction (or sequence).<br/><br/>A variable is always created with a default value set to `null`, which means that the variable is only declared and has no default value.<br/><br/>At run time, Convertigo looks for the variable among the query parameters, the JavaScript scope or the objects in the context to retrieve its value. If the variable is found, its value is used, if not found, the default value specified by this property is used.<br/><br/>In this last case, and if the default value of the variable is not set (**Default value** property set to `null`), an exception can be thrown by any object or JavaScript code trying to use the undefined variable.<br/><br/>It is up to the Convertigo developer to unset the variable's `null` value, i.e. to set a default value to the variable. He should prefer using a *Test Case* to test specific values for the variable or pass a variable value directly when invoking the transaction (or sequence).<br/><br/>**Note:** To unset the `null` value of the property, click on the cross-shaped button in the field. Then, the default value is an empty string. You can use it as is or add a value.
Description | String | standard | Describes the variable.<br/>This property is used to describe the variable in the widget generated from its parent transaction (or sequence) in Convertigo Mashup Composer.
Soap array | boolean | standard | Defines if the multi-valued variable should be seen as a Soap Array of a occurrence of variables.<br/>In the case of transaction or sequence defined as a public SOAP method, this property allows to specify of the current multi-valued variable has to be seen in SOAP envelope as a Soap Array with multiple values inside it or as an occurrence of identical variables.
Visibility | int | standard | Defines the variable's visibility.<br/>This property allows defining whether the variable's value is masked or not in:<br/><br/>- `log files`: selecting this option will mask the variable's value that may be printed in all loggers,<br/>- `studio user interface`: selecting this option will mask the variable's value in the **Properties** view from the Studio, as well as in the tree of the **Projects** view,<br/>- `platform user interface`: selecting this option will mask the variable's value in the test platform of the project and when editing the project in Convertigo web administration,<br/>- `project's XML files`: selecting this option will mask the variable's value in the project's XML files generated on the file system when saving the objects from the project.<br/><br/>Any combination of these options can be chosen, it allows to customize precisely the variable's value display. A last option is available: `Mask value in all`. Selecting this option will mask the variable's value in all previously described cases.
isRequired | Boolean | standard | Defines whether the variable is required.
Cache key | boolean | expert | Defines whether the variable should be part of the cache key.<br/>If set to `true`, the variable and its value are added to the cache key which is used to determine whether the transaction's response (or sequence's response) should be pulled from the cache or not.<br/><br/>A transaction's cached response (or sequence's cached response) is pulled from the cache when all cache key values are corresponding to a stored cache entry (may contain other data that variables, for example the certificate group defined by some transactions).
Customizable | boolean | expert | Defines whether the variable is customizable.<br/>If set to `true`, the variable is used as a customizable preference field in the widget generated from the parent transaction (or sequence) in Convertigo Mashup Composer or any other portal.<br/><br/>**Note:** This property is used when applicable, i.e. when the widget is declared in a portal including customizable preference fields feature.
Is a file upload | boolean | expert | Defines whether the variable is an uploaded file.<br/>When set to `true`, this property indicates that the transaction/sequence should receive an uploaded file in this variable.<br/><br/>When received, the uploaded file is stored in a temporary folder and deleted at the end of the transaction/sequence. In the transaction/sequence execution context, the variable contains the path of the temporary file.<br/><br/>**Note:** This property value is used only by the *Test Platform* to allow the developer testing the transaction/sequence. When receiving a multi-part request, Convertigo can set any variable as an uploaded file.
Schema type QName | XmlQName | expert | Assigned schema type qualified name
WSDL exposed | boolean | expert | Defines whether the variable is exposed in web service.<br/>If set to `true`, variable definition is inserted in the project's WSDL as a method parameter.<br/><br/>**Note:** The **Accessibility** property of the parent transaction (or sequence) defines how the method itself is exposed in the web service.
