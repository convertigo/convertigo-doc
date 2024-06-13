---
layout: page
title: Radio Button
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/radio-button/
metadesc: ion-radio  Defines a  Radio Button  component. When radio buttons are inside a  Radio List  component, exactly one  Radio Button  in the list can be c
ObjGroup: Forms
ObjCatName: form-components
ObjName: RadioButton
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/radio_32x32.png
topnav: topnavobj
---
ion-radio<br/>

##### Defines a <i>Radio Button</i> component.<br/>
When radio buttons are inside a <i>Radio List</i> component, exactly one <i>Radio Button</i> in the list can be checked at any time.<br/>
Use the <i>Value</i> property to set its value, and the <i>Disabled</i> property to prevent the user from checking it.<br/>
 For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/radio'>Radio</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Alignment | How to control the alignment of the radio and label on the cross axisstart: The label and control will appear on the left of the cross axis in LTR, and on the right side in RTL.center: The label and control will appear at the center of the cross axis in both LTR and RTL.
Color | Specifies ionic color.
Disabled | If true the component will be disabled, preventing the the user from changing the value.
Justify | How to pack the label and radio within a line.start: The label and radio will appear on the left in LTR and on the right in RTL.end: The label and radio will appear on the right in LTR and on the left in RTL.space-between: The label and radio will appear on opposite ends of the line with space between the two elements.
LabelPlacement | Where to place the label relative to the radio.start: The label will appear to the left of the radio in LTR and to the right in RTL.end: The label will appear to the right of the radio in LTR and to the left in RTL.fixed: The label has the same behavior as start except it also has a fixed width. Long text will be truncated with ellipses (...).stacked: The label will appear above the radio regardless of the direction. The alignment of the label can be controlled with the alignment property.
Legacy | Set the legacy property to true to forcibly use the legacy form control markup.Ionic will only opt components in to the modern form markup when they are using either the aria-label attribute or have text in the default slot.As a result, the legacy property should only be used as an escape hatch when you want to avoid this automatic opt-in behavior.<u>Note</u>: this property will be removed in an upcoming major release of Ionic, and all form components will be opted-in to using the modern form markup.
Mode | Specifies ionic mode.
Slot | Specifies ionic slot mode.
Value | The value of the radio.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

