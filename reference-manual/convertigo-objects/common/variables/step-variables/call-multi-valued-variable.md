---
layout: page
title: Call multi-valued variable
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/variables/step-variables/call-multi-valued-variable/
metadesc: Defines a multi-valued variable for a step.    A  Call multi-valued variable  is used to send a multi-valued  input  variable to a transaction/sequenc
ObjGroup: Common
ObjCatName: step-variables
ObjName: Call multi-valued variable
ObjClass: com.twinsoft.convertigo.beans.variables.StepMultiValuedVariable
ObjIcon: /images/beans/variables/images/stepmultivaluedvariable_color_32x32.png
topnav: topnavobj
---
##### Defines a multi-valued variable for a step.

A *Call multi-valued variable* is used to send a multi-valued `input` variable to a transaction/sequence targeted by a *Call Transaction*/*Call Sequence* step.

It can define a list of default values, specified in the **Default value** property, that is used as parameter value if no value is found for this variable.

At runtime, the variable value is calculated by Convertigo through the following steps:

- if the **Source** property is set, the variable value is the source result (see **Source** property documentation),
- if no source is set, the JavaScript value of the variable is chosen, if a variable of the same name exists in the JavaScript scope of current context (this JavaScript variable should be an array of values),
- if no JavaScript variable is defined, the context value of the variable is chosen, if a variable of the same name is stored in current context,
- if none of the previous methods gives a value, the default list of values set in the **Default value** property is used,
- if no default value is specified, the variable is not sent to the target transaction/sequence.

**Note:** In Convertigo Studio, when a *Call multi-valued variable* is created in a *Call Transaction*/*Call Sequence* step, it can be easily replaced by a *Call single-valued variable*, using the right-click menu on the variable and choosing the option **Change to** > **SingleValued variable**.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Default value | Object | standard | Defines the variable's default value(s).<br/>This property allows defining a default value or default list of values to use when no variable value is provided to the parent transaction (or sequence).<br/><br/>A variable is always created with a default value set to `null`, which means that the variable is only declared and has no default value.<br/><br/>At run time, Convertigo looks for the variable among the query parameters, the JavaScript scope or the objects in the context to retrieve its value. If the variable is found, its value is used, if not found, the default value specified by this property is used.<br/><br/>In this last case, and if the default value of the variable is not set (**Default value** property set to `null`), an exception can be thrown by any object or JavaScript code trying to use the undefined variable.<br/><br/>It is up to the Convertigo developer to unset the variable's `null` value, i.e. to set a default value to the variable. He should prefer using a *Test Case* to test specific values for the variable or pass a variable value directly when invoking the transaction (or sequence).<br/><br/>**Note:** To unset the `null` value of the property, click on the cross-shaped button in the field. Then, the default value is an empty string. You can use it as is or add a value.
Description | String | standard | Describes the variable.<br/>This property is used to describe the variable in the widget generated from its parent transaction (or sequence) in Convertigo Mashup Composer.
Soap array | boolean | standard | Defines if the multi-valued variable should be seen as a Soap Array of a occurrence of variables.<br/>In the case of transaction or sequence defined as a public SOAP method, this property allows to specify of the current multi-valued variable has to be seen in SOAP envelope as a Soap Array with multiple values inside it or as an occurrence of identical variables.
Visibility | int | standard | Defines the variable's visibility.<br/>This property allows defining whether the variable's value is masked or not in:<br/><br/>- `log files`: selecting this option will mask the variable's value that may be printed in all loggers,<br/>- `studio user interface`: selecting this option will mask the variable's value in the **Properties** view from the Studio, as well as in the tree of the **Projects** view,<br/>- `platform user interface`: selecting this option will mask the variable's value in the test platform of the project and when editing the project in Convertigo web administration,<br/>- `project's XML files`: selecting this option will mask the variable's value in the project's XML files generated on the file system when saving the objects from the project.<br/><br/>Any combination of these options can be chosen, it allows to customize precisely the variable's value display. A last option is available: `Mask value in all`. Selecting this option will mask the variable's value in all previously described cases.
isRequired | Boolean | standard | Defines whether the variable is required.
Source | XMLVector | expert | Defines the source to use as variable value.<br/>This property allows defining the variable value as a source from a previous step.<br/><br/>A **source** is defined as a reference on a step previously existing in the parent sequence, associated with an XPath applied on the step's result DOM. At runtime, the XPath is applied on the step's current execution result XML and the variable takes for value the XML NodeList resulting from this execution.<br/><br/>The variable value will be an array of the text contents. In the target sequence/transaction, it is the standard Convertigo `Array of Strings` variable.<br/><br/>If the XPath doesn't match or if the source is left blank, the variable value is calculated as explained in the main description of this object.
Sub XPath | String | expert | Defines a XPath to select the content of the each value. Blank ignore the property. Only for Internal Invoke.<br/>The XPath is used after the source evaluation on each nodes.<br/><br/>For example, "*" selects all children of each elements, or "node1&#124;node4&#124;tag2" selects only some children.
