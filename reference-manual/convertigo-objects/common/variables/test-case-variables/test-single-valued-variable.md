---
layout: page
title: Test single-valued variable
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/variables/test-case-variables/test-single-valued-variable/
metadesc: Defines a single-valued variable for a  Test Case .    A  Test single-valued variable  is used as a single-valued  input  variable for the transaction
ObjGroup: Common
ObjCatName: test-case-variables
ObjName: Test single-valued variable
ObjClass: com.twinsoft.convertigo.beans.variables.TestCaseVariable
ObjIcon: /images/beans/variables/images/testcasevariable_color_32x32.png
topnav: topnavobj
---
##### Defines a single-valued variable for a *Test Case*.

A *Test single-valued variable* is used as a single-valued `input` variable for the transaction or sequence targeted by the *Test Case*.

The variable value to use when executing the *Test Case* is specified in the **Default value** property.

**Note:** In Convertigo Studio, when a *Test single-valued variable* is created in a *Test Case*, it can be easily replaced by a *Test multi-valued variable*, using the right-click menu on the variable and choosing the option **Change to** > **MultiValued variable**.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Default value | Object | standard | Defines the variable's default value(s).<br/>This property allows defining a default value or default list of values to use when no variable value is provided to the parent transaction (or sequence).<br/><br/>A variable is always created with a default value set to `null`, which means that the variable is only declared and has no default value.<br/><br/>At run time, Convertigo looks for the variable among the query parameters, the JavaScript scope or the objects in the context to retrieve its value. If the variable is found, its value is used, if not found, the default value specified by this property is used.<br/><br/>In this last case, and if the default value of the variable is not set (**Default value** property set to `null`), an exception can be thrown by any object or JavaScript code trying to use the undefined variable.<br/><br/>It is up to the Convertigo developer to unset the variable's `null` value, i.e. to set a default value to the variable. He should prefer using a *Test Case* to test specific values for the variable or pass a variable value directly when invoking the transaction (or sequence).<br/><br/>**Note:** To unset the `null` value of the property, click on the cross-shaped button in the field. Then, the default value is an empty string. You can use it as is or add a value.
Description | String | standard | Describes the variable.<br/>This property is used to describe the variable in the widget generated from its parent transaction (or sequence) in Convertigo Mashup Composer.
Visibility | int | standard | Defines the variable's visibility.<br/>This property allows defining whether the variable's value is masked or not in:<br/><br/>- `log files`: selecting this option will mask the variable's value that may be printed in all loggers,<br/>- `studio user interface`: selecting this option will mask the variable's value in the **Properties** view from the Studio, as well as in the tree of the **Projects** view,<br/>- `platform user interface`: selecting this option will mask the variable's value in the test platform of the project and when editing the project in Convertigo web administration,<br/>- `project's XML files`: selecting this option will mask the variable's value in the project's XML files generated on the file system when saving the objects from the project.<br/><br/>Any combination of these options can be chosen, it allows to customize precisely the variable's value display. A last option is available: `Mask value in all`. Selecting this option will mask the variable's value in all previously described cases.
isRequired | Boolean | standard | Defines whether the variable is required.
