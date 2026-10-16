---
layout: page
title: Range Slider
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/range-slider/
metadesc: ion-range  Defines a  Range Slider  component. The Range slider lets users select from a range of values by moving the slider knob. It can accept dual
ObjGroup: Forms
ObjCatName: form-components
ObjName: Range
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/range_32x32.png
topnav: topnavobj
---
ion-range<br/>

##### Defines a <i>Range Slider</i> component.<br/>
The Range slider lets users select from a range of values by moving the slider knob.<br/>
It can accept dual knobs, but by default one knob controls the value of the range.<br/>
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a custom validation function.<br/>
For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/range'>Range</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
ActiveBar start | The start position of the range active bar. This feature is only available with a single knob (dualKnobs=false). Valid values are greater than or equal to the min value and less than or equal to the max value.
Binding | The object or variable to bind with the control.
Color | Specifies ionic color.
Control name | The associated declared control name.
Debounce | How long, in milliseconds, to wait to trigger the ionChange event after each change in the range value. Default 0.
Default value | The default range value.
Disabled | If true the component will be disabled, preventing the the user from changing the value.
Dual Knobs | Setting the dualKnobs property to true on the range component will enable two knobs on the range. If the range has two knobs, the value will be an object containing two properties: lower and upper.
Label | The text to display as the control's label. Use this over the label slot if you only need plain text. The label property will take priority over the label slot if both are used.
LabelPlacement | Where to place the label relative to the range.start: The label will appear to the left of the range in LTR and to the right in RTL.end: The label will appear to the right of the range in LTR and to the left in RTL.fixed: The label has the same behavior as start except it also has a fixed width. Long text will be truncated with ellipses (...).stacked: The label will appear above the range regardless of the direction.
Legacy | Set the legacy property to true to forcibly use the legacy form control markup.Ionic will only opt components in to the modern form markup when they are using either the aria-label attribute or have text in the default slot.As a result, the legacy property should only be used as an escape hatch when you want to avoid this automatic opt-in behavior.<u>Note</u>: this property will be removed in an upcoming major release of Ionic, and all form components will be opted-in to using the modern form markup.
Maximum | Minimum and maximum values can be passed to the range through the min and max properties, respectively. By default, the range sets the min to 0 and the max to 100.
Minimum | Minimum and maximum values can be passed to the range through the min and max properties, respectively. By default, the range sets the min to 0 and the max to 100.
Mode | Specifies ionic mode.
Pin | If true, a pin with integer value is shown when the knob is pressed. Defaults to false.
Pin formatter | A callback used to format the pin text. By default the pin text is set to Math.round(value).<br/>See https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/troubleshooting/runtime#accessing-this if you need to access this from within the callback.
Snaps | The step property specifies the value granularity of the range's value. It can be useful to set the step when the value isn't in increments of 1. Setting the step property will show tick marks on the range for each step. The snaps property can be set to automatically move the knob to the nearest tick mark based on the step property value.
Step | The step property specifies the value granularity of the range's value. It can be useful to set the step when the value isn't in increments of 1. Setting the step property will show tick marks on the range for each step. The snaps property can be set to automatically move the knob to the nearest tick mark based on the step property value.
Ticks | If true, tick marks are displayed based on the step value. Only applies when snaps is true.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

