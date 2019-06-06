---
layout: page
title: Radio List
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/form-components/radio-list/
metadesc: ion-list  Defines a  Radio List  component. This component is a container for a set of radio buttons. It allows a user to select at most one radio but
ObjGroup: Forms
ObjCatName: form-components
ObjName: RadioList
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/radiolist_color_32x32.png
topnav: topnavobj
---
ion-list<br/>

##### Defines a <i>Radio List</i> component.<br/>
This component is a container for a set of radio buttons. It allows a user to select at most one radio button from the set. Checking one radio button that belongs to a <i>Radio List</i> unchecks any previous checked radio button within the same list.<br/>
Add as many <i>Radio Button</i> you want under your <i>Radio List</i> component.<br/>
Use the <i>Default value</i> property to set its default value. If a radio button has the same value it will be checked by default.<br/>
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a <i>CustomValidator</i>.<br/>
 For more information: <a href='https://ionicframework.com/docs/v3/api/components/radio/RadioGroup/' target='_blank'>Radio Group</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add each <i>Radio Button</i> under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Control name | The associated declared form's control name.
Default value | The value to be selected by default.
List type | The type of list.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

