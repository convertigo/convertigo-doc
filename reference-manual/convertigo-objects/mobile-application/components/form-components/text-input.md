---
layout: page
title: Text Input
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/form-components/text-input/
metadesc: ion-input  Defines a  Text Input  component.  Text Input  is meant for text type inputs only, such as text, password, email, number, search, tel, and 
ObjGroup: Forms
ObjCatName: form-components
ObjName: Input
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/input_color_32x32.png
topnav: topnavobj
---
ion-input<br/>

##### Defines a <i>Text Input</i> component.<br/>
<i>Text Input</i> is meant for text type inputs only, such as text, password, email, number, search, tel, and url.<br/>
Use the <i>Value</i> property to set its value, and the <i>Disabled</i> property to prevent the user from changing the value.<br/>
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a <i>CustomValidator</i>.<br/>
 For more information: <a href='https://ionicframework.com/docs/v3/components/#inputs' target='_blank'>Inputs</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
ClearInput | If true, a clear icon will appear in the input when there is a value. Clicking it clears the input.
ClearOnEdit | If true, the value will be cleared after focus upon edit. Defaults to true when type is 'password', false for all other types.
Control name | The associated declared form's control name.
Disabled | If true the component will be disabled, preventing the the user from changing the value.
Maximum | The maximum value, which must not be less than its minimum (min attribute) value.
Minimum | The minimum value, which must not be greater than its maximum (max attribute) value.
Mode | The mode determines which platform styles to use. Possible values are: 'ios', 'md' (Material Design) , or 'wp' (Windows). For more information, see Platform Styles.
Placeholder | Instructional text that shows before the input has a value.
Readonly | If true, the user cannot modify the value.
Step | Works with the min and max attributes to limit the increments at which a value can be set.
Text Align | Aligns text left or right.
Type | The type of control to display. The default type is text. Possible values are: 'text', 'password', 'email', 'number', 'search', 'tel', or 'url'.
Value | The text value of the input.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

