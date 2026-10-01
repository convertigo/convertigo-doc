---
layout: page
title: Test multi-valued variable
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/variables/test-case-variables/test-multi-valued-variable/
metadesc: Defines a multi-valued variable for a  Test Case .   A  Test multi-valued variable  is used as a multi-valued <span class="computer">input  variable f
ObjGroup: Common
ObjCatName: test-case-variables
ObjName: Test multi-valued variable
ObjClass: com.twinsoft.convertigo.beans.variables.TestCaseMultiValuedVariable
ObjIcon: /images/beans/variables/images/testcasemultivaluedvariable_color_32x32.png
topnav: topnavobj
---
##### Defines a multi-valued variable for a <i>Test Case</i>. 

A <i>Test multi-valued variable</i> is used as a multi-valued <span class="computer">input</span> variable for the transaction or sequence targeted by the <i>Test Case</i>. <br/>The variable values to use when executing the <i>Test Case</i> are specified in the <b>Default value</b> property. <br/><span class="orangetwinsoft">Note:</span> In Convertigo Studio, when a <i>Test multi-valued variable</i> is created in a <i>Test Case</i>, it can be easily replaced by a <i>Test single-valued variable</i>, using the right-click menu on the variable and choosing the option <b>Change to</b> &gt; <b>SingleValued variable</b>.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Default value | Object | standard | Defines the variable's default value(s).<br/>This property allows defining a default value or default list of values to use when no variable value is provided to the parent transaction (or sequence). <br/>A variable is always created with a default value set to <span class="computer">null</span>, which means that the variable is only declared and has no default value. <br/>At run time, Convertigo looks for the variable among the query parameters, the JavaScript scope or the objects in the context to retrieve its value. If the variable is found, its value is used, if not found, the default value specified by this property is used. <br/>In this last case, and if the default value of the variable is not set (<b>Default value</b> property set to <span class="computer">null</span>), an exception can be thrown by any object or JavaScript code trying to use the undefined variable. <br/>It is up to the Convertigo developer to unset the variable's <span class="computer">null</span> value, i.e. to set a default value to the variable. He should prefer using a <i>Test Case</i> to test specific values for the variable or pass a variable value directly when invoking the transaction (or sequence). <br/><span class="orangetwinsoft">Note:</span> To unset the <span class="computer">null</span> value of the property, click on the cross-shaped button in the field. Then, the default value is an empty string. You can use it as is or add a value.
Description | String | standard | Describes the variable.<br/>This property is used to describe the variable in the widget generated from its parent transaction (or sequence) in Convertigo Mashup Composer.
Soap array | boolean | standard | Defines if the multi-valued variable should be seen as a Soap Array of a occurrence of variables.<br/>In the case of transaction or sequence defined as a public SOAP method, this property allows to specify of the current multi-valued variable has to be seen in SOAP envelope as a Soap Array with multiple values inside it or as an occurrence of identical variables.
Visibility | int | standard | Defines the variable's visibility.<br/>This property allows defining whether the variable's value is masked or not in:<br/><br/>• <span class="computer">log files</span>: selecting this option will mask the variable's value that may be printed in all loggers,<br/>• <span class="computer">studio user interface</span>: selecting this option will mask the variable's value in the <b>Properties</b> view from the Studio, as well as in the tree of the <b>Projects</b> view,<br/>• <span class="computer">platform user interface</span>: selecting this option will mask the variable's value in the test platform of the project and when editing the project in Convertigo web administration,<br/>• <span class="computer">project's XML files</span>: selecting this option will mask the variable's value in the project's XML files generated on the file system when saving the objects from the project. <br/><br/>Any combination of these options can be chosen, it allows to customize precisely the variable's value display. A last option is available: <span class="computer">Mask value in all</span>. Selecting this option will mask the variable's value in all previously described cases.
isRequired | Boolean | standard | Defines whether the variable is required.<br/>
