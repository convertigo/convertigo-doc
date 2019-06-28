---
layout: page
title: Checkbox
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/form-components/checkbox/
metadesc: ion-checkbox  Defines a  CheckBox  component. A  CheckBox  is a form's input component that holds a boolean value. Checkboxes are no different than HT
ObjGroup: Forms
ObjCatName: form-components
ObjName: CheckBox
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/input_checkbox_32x32.png
topnav: topnavobj
---
ion-checkbox
##### Defines a <i>CheckBox</i> component.
A <i>CheckBox</i> is a form's input component that holds a boolean value.
Checkboxes are no different than HTML checkbox inputs. However, like other Ionic components, checkboxes are styled differently on each platform.
Use the <i>Checked</i> property to set its default value, and the <i>Disabled</i> property to prevent the user from changing the value.
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a <i>CustomValidator</i>.
 For more information: <a href='https://ionicframework.com/docs/v3/components/#checkbox' target='_blank'>Checkbox</a>.

<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Checked | If true the component will be checked.
Control name | The associated declared form's control name.
Disabled | If true the component will be disabled, preventing the the user from changing the value.
color | Specifies ionic color.

