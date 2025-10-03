---
layout: page
title: Toggle Button
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/toggle-button/
metadesc: ion-toggle  Defines a  Toggle Button  component. This component is technically the same thing as an HTML checkbox input, except it looks different and
ObjGroup: Forms
ObjCatName: form-components
ObjName: Toggle
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/toggle_32x32.png
topnav: topnavobj
---
ion-toggle<br/>

##### Defines a <i>Toggle Button</i> component.<br/>
This component is technically the same thing as an HTML checkbox input, except it looks different and is easier to use on a touch device. Toggles can also have colors assigned to them, by adding any color attribute.<br/>
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a custom validation function.<br/>
 For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/toggle'>Toggle</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Alignment | How to control the alignment of the toggle and label on the cross axisstart: The label and control will appear on the left of the cross axis in LTR, and on the right side in RTL.center: The label and control will appear at the center of the cross axis in both LTR and RTL.
Binding | The object or variable to bind with the control.
Color | Specifies ionic color.
Control checked | If true the toggle will be selected.
Control name | The associated declared control name.
Disabled | If true the component will be disabled, preventing the the user from changing the value.
Enable OnOff Labels | Enables the on/off accessibility switch labels within the toggle.
Justify | How to pack the label and toggle within a line.start: The label and toggle will appear on the left in LTR and on the right in RTL.end: The label and toggle will appear on the right in LTR and on the left in RTL.space-between: The label and toggle will appear on opposite ends of the line with space between the two elements.
LabelPlacement | Where to place the label relative to the toggle.start: The label will appear to the left of the toggle in LTR and to the right in RTL.end: The label will appear to the right of the toggle in LTR and to the left in RTL.fixed: The label has the same behavior as start except it also has a fixed width. Long text will be truncated with ellipses (...).stacked: The label will appear above the toggle regardless of the direction. The alignment of the label can be controlled with the alignment property.
Legacy | Set the legacy property to true to forcibly use the legacy form control markup.Ionic will only opt components in to the modern form markup when they are using either the aria-label attribute or have text in the default slot.As a result, the legacy property should only be used as an escape hatch when you want to avoid this automatic opt-in behavior.<u>Note</u>: this property will be removed in an upcoming major release of Ionic, and all form components will be opted-in to using the modern form markup.
Mode | Specifies ionic mode.
Position | Specifies the position.
Value | The value of the toggle does not mean if it's checked or not, use the Checked property for that.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Identifier | Defines the component identifier.
Is active | Defines whether the component is active.

