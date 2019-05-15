---
layout: page
title: Range Slider
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/form-components/range-slider/
metadesc: ion-range  Defines a  Range Slider  component. The Range slider lets users select from a range of values by moving the slider knob. It can accept dual
ObjGroup: Forms
ObjCatName: form-components
ObjName: Range
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/range_32x32.png
topnav: topnavobj
---
ion-range
##### Defines a <i>Range Slider</i> component.
The Range slider lets users select from a range of values by moving the slider knob.
It can accept dual knobs, but by default one knob controls the value of the range.
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a <i>CustomValidator</i>.
For more information: <a href='https://ionicframework.com/docs/v3/components/#range' target='_blank'>Range</a>.

<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Control name | The associated declared form's control name.
Debounce | How long, in milliseconds, to wait to trigger the ionChange event after each change in the range value. Default 0.
Default value | The default range value.
Dual Knobs | Setting the dualKnobs property to true on the range component will enable two knobs on the range. If the range has two knobs, the value will be an object containing two properties: lower and upper.
Maximum | Minimum and maximum values can be passed to the range through the min and max properties, respectively. By default, the range sets the min to 0 and the max to 100.
Minimum | Minimum and maximum values can be passed to the range through the min and max properties, respectively. By default, the range sets the min to 0 and the max to 100.
Pin | If true, a pin with integer value is shown when the knob is pressed. Defaults to false.
Snaps | The step property specifies the value granularity of the range's value. It can be useful to set the step when the value isn't in increments of 1. Setting the step property will show tick marks on the range for each step. The snaps property can be set to automatically move the knob to the nearest tick mark based on the step property value.
Step | The step property specifies the value granularity of the range's value. It can be useful to set the step when the value isn't in increments of 1. Setting the step property will show tick marks on the range for each step. The snaps property can be set to automatically move the knob to the nearest tick mark based on the step property value.
color | Specifies ionic color.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

