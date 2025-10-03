---
layout: page
title: Error structure
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sequencer/steps/xml-steps/error-structure/
metadesc: Creates an XML structure describing an applicative error.    The  Error structure  step generates an output XML structure corresponding to an applicat
ObjGroup: Sequencer
ObjCatName: xml-steps
ObjName: Error structure
ObjClass: com.twinsoft.convertigo.beans.steps.XMLErrorStep
ObjIcon: /images/beans/steps/images/xmlErrorStructure_32x32.png
topnav: topnavobj
---
##### Creates an XML structure describing an applicative error.

The *Error structure* step generates an output XML structure corresponding to an applicative error. This structure is created on a standard basis (error code, message, details) that is automatically managed by client applications developed with Convertigo Mobilizer and/or using the Convertigo Templating Framework.

The basic error structure elements are filled using the step's corresponding properties: **Code**, **Message** and **Details**. The structure can be enhanced with user-defined elements: to do so, simply add child steps under this *Error structure* step (the same way as for a *Complex* step).

This error structure contains a `type` attribute, which value is automatically set to `project`. It allows to differentiate a project/applicative error from an irrecoverable Server error (`type` attribute value is then `c8o`).

The error structure can be output in the response XML of the sequence if the **Output** property is set to `true`, or used as a source by any other following step.

An *Error structure* step does not break the sequence execution flow (contrary to *jException* step for example). Use the *Break* or *Return* steps when you need to stop the sequence execution flow after an *Error structure* step.


Property | Type | Category | Description
--- | --- | --- | ---
Code | SmartType | standard | A numeric error code to fill in error structure, identifying the error.<br/>This property is a "smart type" property, that allows to specify the error code.<br/><br/>A "smart type" property can be of one of the following types:<br/><br/>- a **text**: the value is therefore a hard-coded text value,<br/>- a **JavaScript expression**: the value is therefore a JavaScript expression that is evaluated at sequence execution,<br/>- a **source**: the value is a source and can be picked using the source picker. A **source** is defined as a reference on a step previously existing in the parent sequence, associated with an XPath applied on the step's result DOM. At runtime, the XPath is applied on the step's current execution result XML and extracts a list of XML nodes resulting from this execution.<br/><br/>**Note:**<br/><br/>- If you use the **source** type for this property, the XPath application on target XML should give a text result. Otherwise, the first node's text content is taken.<br/>- If no error message text is defined by the **Message** property, the client project error dictionary can be used, if using the Internationalization framework, to retrieve the error message corresponding to this error code.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Details | SmartType | standard | Some technical information details about the error, to fill in error structure, mainly for debugging purposes.<br/>This property is a "smart type" property, that allows to specify the error details.<br/><br/>A "smart type" property can be of one of the following types:<br/><br/>- a **text**: the value is therefore a hard-coded text value,<br/>- a **JavaScript expression**: the value is therefore a JavaScript expression that is evaluated at sequence execution,<br/>- a **source**: the value is a source and can be picked using the source picker. A **source** is defined as a reference on a step previously existing in the parent sequence, associated with an XPath applied on the step's result DOM. At runtime, the XPath is applied on the step's current execution result XML and extracts a list of XML nodes resulting from this execution.<br/><br/>**Note:** If you use the **source** type for this property, the XPath application on target XML should give a text result. Otherwise, the first node's text content is taken.
Is active | boolean | standard | Defines whether the step is active.
Message | SmartType | standard | An optional text message to fill in error structure, explaining the error.<br/>This property is a "smart type" property, that allows to specify the error message.<br/><br/>A "smart type" property can be of one of the following types:<br/><br/>- a **text**: the value is therefore a hard-coded text value,<br/>- a **JavaScript expression**: the value is therefore a JavaScript expression that is evaluated at sequence execution,<br/>- a **source**: the value is a source and can be picked using the source picker. A **source** is defined as a reference on a step previously existing in the parent sequence, associated with an XPath applied on the step's result DOM. At runtime, the XPath is applied on the step's current execution result XML and extracts a list of XML nodes resulting from this execution.<br/><br/>**Note:**<br/><br/>- If you use the **source** type for this property, the XPath application on target XML should give a text result. Otherwise, the first node's text content is taken.<br/>- If this error message text is not present in output, the client project error dictionary can be used, if using the Internationalization framework, to retrieve the error message corresponding to the error code defined by the **Code** property.
Output | boolean | expert | Defines whether the XML generated by this step should be appended to the resulting XML.<br/>Set this property to `true` to add the step's resulting XML to the sequence's output XML (default value for steps generating XML). Set this property to `false` to prevent the steps's XML result to appear in the sequence's output XML.<br/><br/>Setting this property to `false` does not prevent the step's generated XML from being used as a source by other steps.
