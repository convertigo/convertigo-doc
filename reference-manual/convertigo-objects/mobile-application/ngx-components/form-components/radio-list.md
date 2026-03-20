---
layout: page
title: Radio List
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/radio-list/
metadesc: ion-radio-group  Defines a  Radio Group  component. This component is a container for a set of radio buttons. It allows a user to select at most one r
ObjGroup: Forms
ObjCatName: form-components
ObjName: RadioGroup
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/radiolist_32x32.png
topnav: topnavobj
---
ion-radio-group<br/>

##### Defines a <i>Radio Group</i> component.<br/>
This component is a container for a set of radio buttons. It allows a user to select at most one radio button from the set. Checking one radio button that belongs to a <i>Radio Group</i> unchecks any previous checked radio button within the same group.<br/>
Add as many <i>Radio Button</i> you want under your <i>Radio Group</i> component.<br/>
Use the <i>Default value</i> property to set its default value. If a radio button has the same value it will be checked by default.<br/>
 For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/radio-group'>Radio Group</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add each <i>Radio Button</i> under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Allow empty selection | If true, the radios can be deselected.
Binding | The object or variable to bind with the control.
Compare with | This property allows developers to specify a custom function or property name for comparing objects when determining the selected option in the ion-radio-group. When not specified, the default behavior will use strict equality (===) for comparison.
Control name | The associated declared control name.
Default value | The default value of the radio group.
Position | Specifies the position.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

