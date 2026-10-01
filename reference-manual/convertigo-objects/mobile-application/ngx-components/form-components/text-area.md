---
layout: page
title: Text Area
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/text-area/
metadesc: ion-textarea  Defines a  Text Area  component. This component is meant for multiline text type inputs only, such as text, password, email, number, sea
ObjGroup: Forms
ObjCatName: form-components
ObjName: TextArea
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/textarea_32x32.png
topnav: topnavobj
---
ion-textarea<br/>

##### Defines a <i>Text Area</i> component.<br/>
This component is meant for multiline text type inputs only, such as text, password, email, number, search, tel, and url.<br/>
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a custom validation function.<br/>
 For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/textarea'>TextArea</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Area cols | The visible width of the text control, in average character widths. If it is specified, it must be a positive integer.
Area rows | The number of visible text lines for the control.
AutoGrow | If true, the element height will increase based on the value.
Autocapitalize | Specifies whether and how the text value should be automatically capitalized as it is entered/edited by the user.
Autofocus | This Boolean attribute lets you specify that a form control should have input focus when the page loads.
Binding | The object or variable to bind with the control.
Browser enter key hint | A hint to the browser for which enter key to display.
Browser input mode hint | A hint to the browser for which keyboard to display.
ClearOnEdit | If true, the value will be cleared after focus upon edit. Defaults to true when type is 'password', false for all other types.
Color | Specifies ionic color.
Control default value | The default text value of the area.
Control name | The associated declared control name.
Counter | If true, a character counter will display the ratio of characters used and the total character limit.Developers must also set the maxlength property for the counter to be calculated correctly.
Counter formatter | A callback used to format the counter text. By default the counter text is set to 'itemLength / maxLength'.See https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/troubleshooting/runtime#accessing-this if you need to access <b>this</b> from within the callback.
Debounce | Set the amount of time, in milliseconds, to wait to trigger the ionChange event after each keystroke.
Disabled | If true the component will be disabled, preventing the the user from changing the value.
Error text | Text that is placed under the textarea and displayed when an error is detected.
Fill | The fill for the item. If 'solid' the item will have a background. If 'outline' the item will be transparent with a border. Only available in md mode.
Helper text | Text that is placed under the textarea and displayed when no error is detected.
Label | The visible label associated with the textarea. Use this if you need to render a plaintext label. The label property will take priority over the label slot if both are used.
LabelPlacement | Where to place the label relative to the textarea.start: The label will appear to the left of the textarea in LTR and to the right in RTL.end: The label will appear to the right of the textarea in LTR and to the left in RTL.fixed: The label has the same behavior as start except it also has a fixed width. Long text will be truncated with ellipses (...).floating: The label will appear smaller and above the textarea when the input is focused or it has a value. Otherwise it will appear on top of the textarea.stacked: The label will appear smaller and above the textarea regardless even when the textarea is blurred or has no value.
Legacy | Set the legacy property to true to forcibly use the legacy form control markup.Ionic will only opt components in to the modern form markup when they are using either the aria-label attribute or the label property.As a result, the legacy property should only be used as an escape hatch when you want to avoid this automatic opt-in behavior.<u>Note</u>: this property will be removed in an upcoming major release of Ionic, and all form components will be opted-in to using the modern form markup.
Maxlength | If the value of the type attribute is text, email, search, password, tel, or url, this attribute specifies the maximum number of characters that the user can enter.
Minlength | If the value of the type attribute is text, email, search, password, tel, or url, this attribute specifies the minimum number of characters that the user can enter.
Mode | Specifies ionic mode.
Placeholder | Instructional text that shows before the input has a value.
Readonly | If true, the user cannot modify the value.
Required | If true, the user must fill in a value before submitting a form.
Shape | The shape of the textarea. If 'round' it will have an increased border radius.
Spellcheck | If true, the input will have its spelling and grammar checked.
Wrap | Indicates how the control wraps text.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

