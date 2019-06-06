---
layout: page
title: Select Container
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/form-components/select-container/
metadesc: ion-select  Defines a  Select Container  component. This component is similar to an HTML select tag, however, Ionic's select component makes it easier
ObjGroup: Forms
ObjCatName: form-components
ObjName: Select
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/select_color_32x32.png
topnav: topnavobj
---
ion-select<br/>

##### Defines a <i>Select Container</i> component.<br/>
This component is similar to an HTML select tag, however, Ionic's select component makes it easier for users to sort through and select the preferred option or options. When users tap the select component, a dialog will appear with all of the options in a large, easy to select list for users.<br/>
Add as many <i>Select Option</i> you want under a <i>Select Container</i> component.<br/>
Use the <i>Default value</i> property to set its default value. If an option has the same value it will be selected by default, otherwise the first option is selected.<br/>
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a <i>CustomValidator</i>.<br/>
For more information: <a href='https://ionicframework.com/docs/v3/components/#select' target='_blank'>Select</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Cancel Text | The text to display on the cancel button. Default: Cancel
Control name | The associated declared form's control name.
Default value | The value to be selected by default.
Multiple | If true, the element can accept multiple values.
Ok Text | The text to display on the ok button. Default: Ok
Place holder | The text to display when the select is empty.
Selected text | The text to display instead of the selected option's value.
Type of dialog | Select choices can be displayed in alerts, action sheets or popovers, default is alerts. Multiple options are always displayed in alerts.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

