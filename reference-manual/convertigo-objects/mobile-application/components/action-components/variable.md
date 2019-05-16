---
layout: page
title: Variable
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/action-components/variable/
metadesc: Defines a  Variable  component.    Variable s allow you to pass additional parameters to the executing function of an action. They can be added to any
ObjGroup: Actions
ObjCatName: action-components
ObjName: UIControlVariable
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$3
ObjIcon: /images/beans/mobile/components/images/uicontrolvariable_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Variable</i> component. 
 <i>Variable</i>s allow you to pass additional parameters to the executing function of an action.
They can be added to any action. However, they are mostly used by the <i>CallSequence</i>, <i>CallFullSync</i>, <i>CustomAction</i> and <i>Invoke SharedAction</i> components.
<b>The <i>Var value</i> property can be set to</b><br>any fixed value in text mode (TX) :<br> • string (without quotes): <code>monday</code><br> • number: <code>2019</code><br> • boolean: <code>true</code><br>any typescript expression in script mode (TS) :<br> • string (with quotes): <code>'monday'</code><br> • number: <code>2019</code><br> • boolean: <code>true</code><br> • array: <code>['monday','friday']</code><br> • json: <code>{name: 'wood', age: 35}</code><br> • object: <code>this.myObject.data</code><br>any available source shown in mobile picker, in source mode (SC) :<br> • sequence source<br> • fullsync source<br> • iterator directive source<br> • form source<br> • global source
<b>To access an action <i>Variable</i></b><br>from any child <i>Action</i> property or variable, use in script mode (TS) :<br> • <code>stack['&lt;action-name&gt;'].vars.in.&lt;variable-name&gt;</code><br>for a <i>CustomAction</i> and to access <b>its</b> variables, use inside action code :<br> • <code>vars.&lt;variable-name&gt;</code>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Var value | Defines the variable value. 

