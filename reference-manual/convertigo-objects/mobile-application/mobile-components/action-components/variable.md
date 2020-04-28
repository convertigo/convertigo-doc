---
layout: page
title: Variable
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/action-components/variable/
metadesc: Defines a  Variable  component.    Variable s allow you to pass additional parameters to the executing function of an action. They can be added to any
ObjGroup: Mobile Application
ObjCatName: action-components
ObjName: Variable
ObjClass: com.twinsoft.convertigo.beans.mobile.components.UIControlVariable
ObjIcon: /images/beans/mobile/components/images/uicontrolvariable_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Variable</i> component. 

<i>Variable</i>s allow you to pass additional parameters to the executing function of an action.<br/>They can be added to any action. However, they are mostly used by the <i>CallSequence</i>, <i>CallFullSync</i>, <i>CustomAction</i> and <i>Invoke SharedAction</i> components.<br><br><b>The <i>Var value</i> property can be set to</b><br><u>any fixed value in text mode (TX)</u>:<br> • string (without quotes): <code>monday</code><br> • number: <code>2019</code><br> • boolean: <code>true</code><br><u>any typescript expression in script mode (TS)</u>:<br> • string (with quotes): <code>'monday'</code><br> • number: <code>2019</code><br> • boolean: <code>true</code><br> • array: <code>['monday','friday']</code><br> • json: <code>{name: 'wood', age: 35}</code><br> • object: <code>this.myObject.data</code><br><u>any available source shown in mobile picker, in source mode (SC)</u>:<br> • sequence source<br> • fullsync source<br> • iterator directive source<br> • form source<br> • global source<br><br><b>To access an action <i>Variable</i></b><br><u>from any child <i>Action</i> property or variable, use in script mode (TS)</u>:<br> • <code>stack['&lt;action-name&gt;'].vars.in.&lt;variable-name&gt;</code><br><u>for a <i>CustomAction</i> and to access <b>its</b> variables, use inside action code</u>:<br> • <code>vars.&lt;variable-name&gt;</code>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the component is active.<br/>
Var value | MobileSmartSourceType | standard | Defines the variable value.<br/>
