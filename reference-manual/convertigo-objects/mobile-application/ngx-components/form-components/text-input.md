---
layout: page
title: Text Input
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/text-input/
metadesc: ion-input  Defines a  Text Input  component.  Text Input  is meant for text type inputs (such as text, password, email, number, search, tel, and url) 
ObjGroup: Forms
ObjCatName: form-components
ObjName: Input
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/input_32x32.png
topnav: topnavobj
---
ion-input<br/>

##### Defines a <i>Text Input</i> component.<br/>
<i>Text Input</i> is meant for text type inputs (such as text, password, email, number, search, tel, and url) or file.<br/>
When using <b>file</b>, the <i>Accept</i> property can restrict the file types accepted by the input.<br/>
Use the <i>Value</i> property to set its value, and the <i>Disabled</i> property to prevent the user from changing the value.<br/>
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a custom validation function.<br/>
 For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/input'>Input</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Accept | If the value of the type attribute is 'file', then this attribute will indicate the types of files that the server accepts, otherwise it will be ignored. The value must be a comma-separated list of unique content type specifiers.
Autocapitalize | Specifies whether and how the text value should be automatically capitalized as it is entered/edited by the user.
Autocomplete | Specifies whether the value of the control can be automatically completed by the browser.
Autocorrect | Specifies whether auto correction should be enabled when the user is entering/editing the text value.
Autofocus | This Boolean attribute lets you specify that a form control should have input focus when the page loads.
Binding | The object or variable to bind with the control.
Browser enter key hint | A hint to the browser for which enter key to display.
Browser input mode hint | A hint to the browser for which keyboard to display.
ClearInput | If true, a clear icon will appear in the input when there is a value. Clicking it clears the input.
ClearOnEdit | If true, the value will be cleared after focus upon edit. Defaults to true when type is 'password', false for all other types.
Color | Specifies ionic color.
Control default value | The default text value of the input.
Control name | The associated declared control name.
Counter | If true, a character counter will display the ratio of characters used and the total character limit.Developers must also set the maxlength property for the counter to be calculated correctly.
Counter formatter | A callback used to format the counter text. By default the counter text is set to 'itemLength / maxLength'.See https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/troubleshooting/runtime#accessing-this if you need to access <b>this</b> from within the callback.
Debounce | Set the amount of time, in milliseconds, to wait to trigger the ionChange event after each keystroke.
Disabled | If true the component will be disabled, preventing the the user from changing the value.
Error text | Text that is placed under the input and displayed when an error is detected.
Fill | The fill for the item. If 'solid' the item will have a background. If 'outline' the item will be transparent with a border. Only available in md mode.
Helper text | Text that is placed under the input and displayed when no error is detected.
Label | The visible label associated with the input. Use this if you need to render a plaintext label. The label property will take priority over the label slot if both are used.
LabelPlacement | Where to place the label relative to the input.start: The label will appear to the left of the input in LTR and to the right in RTL.end: The label will appear to the right of the input in LTR and to the left in RTL.fixed: The label has the same behavior as start except it also has a fixed width. Long text will be truncated with ellipses (...).floating: The label will appear smaller and above the input when the input is focused or it has a value. Otherwise it will appear on top of the input.stacked: The label will appear smaller and above the input regardless even when the input is blurred or has no value.
Legacy | Set the legacy property to true to forcibly use the legacy form control markup.Ionic will only opt components in to the modern form markup when they are using either the aria-label attribute or the label property.As a result, the legacy property should only be used as an escape hatch when you want to avoid this automatic opt-in behavior.<u>Note</u>: this property will be removed in an upcoming major release of Ionic, and all form components will be opted-in to using the modern form markup.
Maximum | The maximum value, which must not be less than its minimum (min attribute) value.
Maxlength | If the value of the type attribute is text, email, search, password, tel, or url, this attribute specifies the maximum number of characters that the user can enter.
Minimum | The minimum value, which must not be greater than its maximum (max attribute) value.
Minlength | If the value of the type attribute is text, email, search, password, tel, or url, this attribute specifies the minimum number of characters that the user can enter.
Mode | Specifies ionic mode.
Multiple | If true, the user can enter more than one value. This attribute applies when the type attribute is set to 'email' or 'file', otherwise it is ignored.
Pattern | A regular expression that the value is checked against. The pattern must match the entire value, not just some subset. Use the title attribute to describe the pattern to help the user. This attribute applies when the value of the type attribute is 'text', 'search', 'tel', 'url', 'email', 'date', or 'password', otherwise it is ignored. When the type attribute is 'date', pattern will only be used in browsers that do not support the 'date' input type natively. See https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/date for more information.
Placeholder | Instructional text that shows before the input has a value.
Readonly | If true, the user cannot modify the value.
Required | If true, the user must fill in a value before submitting a form.
Shape | The shape of the input. If 'round' it will have an increased border radius.
Size | The initial size of the control. This value is in pixels unless the value of the type attribute is 'text' or 'password', in which case it is an integer number of characters. This attribute applies only when the type attribute is set to 'text', 'search', 'tel', 'url', 'email', or 'password', otherwise it is ignored.
Spellcheck | If true, the element will have its spelling and grammar checked.
Step | Works with the min and max attributes to limit the increments at which a value can be set.Possible values are: 'any' or a positive floating point number.
Type | The type of control to display. The default type is text.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Identifier | Defines the component identifier.
Is active | Defines whether the component is active.

