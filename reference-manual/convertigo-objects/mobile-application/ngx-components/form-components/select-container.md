---
layout: page
title: Select Container
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/select-container/
metadesc: ion-select  Defines a  Select Container  component. This component is similar to an HTML select tag, however, Ionic's select component makes it easier
ObjGroup: Forms
ObjCatName: form-components
ObjName: Select
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/select_color_32x32.png
topnav: topnavobj
---
ion-select<br/>

##### Defines a <i>Select Container</i> component.<br/>
This component is similar to an HTML select tag, however, Ionic's select component makes it easier for users to sort through and select the preferred option or options. When users tap the select component, a dialog will appear with all of the options in a large, easy to select list for users.<br/>
Add as many <i>Select Option</i> you want under a <i>Select Container</i> component.<br/>
Use the <i>Default value</i> property to set its default value. If an option has the same value it will be selected by default, otherwise the first option is selected.<br/>
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a custom validation function.<br/>
For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/select'>Select</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Binding | The object or variable to bind with the control.
Cancel Text | The text to display on the cancel button. Default: Cancel
Compare with | This property allows developers to specify a custom function or property name for comparing objects when determining the selected option in the ion-select. When not specified, the default behavior will use strict equality (===) for comparison.
Control default value | The value to be selected by default.
Control name | The associated declared control name.
Control selected text | The text to display instead of the selected option's value.
Disabled | If true the component will be disabled, preventing the the user from changing the value.
Expanded icon | The toggle icon to show when the select is open. If defined, the icon rotation behavior in md mode will be disabled. If undefined, toggleIcon will be used for when the select is both open and closed.
Fill | The fill for the item. If 'solid' the item will have a background. If 'outline' the item will be transparent with a border. Only available in md mode.
Interface dialog | Select choices can be displayed in alert, action sheet or popover, default is alert. Multiple options are always displayed in alert.
Interface dialog options | Any additional options that the alert, action-sheet or popover interface can take. See the ion-alert docs, the ion-action-sheet docs and the ion-popover docs for the create options for each interface. Note: Options will not override inputs or buttons with the alert interface.
Justify | How to pack the label and select within a line.start: The label and select will appear on the left in LTR and on the right in RTL.end: The label and select will appear on the right in LTR and on the left in RTL.space-between: The label and select will appear on opposite ends of the line with space between the two elements.
Label | The visible label associated with the select. Use this if you need to render a plaintext label. The label property will take priority over the label slot if both are used.
LabelPlacement | Where to place the label relative to the select.start: The label will appear to the left of the select in LTR and to the right in RTL.end: The label will appear to the right of the select in LTR and to the left in RTL.fixed: The label has the same behavior as start except it also has a fixed width. Long text will be truncated with ellipses (...).stacked: The label will appear smaller and above the select regardless even when the select is blurred or has no value.floating: The label will appear smaller and above the select when the select is focused or it has a value. Otherwise it will appear on top of the select.
Legacy | Set the legacy property to true to forcibly use the legacy form control markup.Ionic will only opt components in to the modern form markup when they are using either the aria-label attribute or have text in the default slot.As a result, the legacy property should only be used as an escape hatch when you want to avoid this automatic opt-in behavior.<u>Note</u>: this property will be removed in an upcoming major release of Ionic, and all form components will be opted-in to using the modern form markup.
Mode | Specifies ionic mode.
Multiple | If true, the element can accept multiple values.
Ok Text | The text to display on the ok button. Default: Ok
Place holder | The text to display when the select is empty.
Shape | The shape of the select. If 'round' it will have an increased border radius.
Toggle icon | The toggle icon to use. This icon will be rotated when the select is expanded or collapsed. <a href='https://ionic.io/ionicons'>Preview icons.</a>
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Identifier | Defines the component identifier.
Is active | Defines whether the component is active.

