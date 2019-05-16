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
<b>The <i>Var value</i> property can be set to</b>
any fixed value in text mode (TX) : - string (without quotes): <code>monday</code>
 - number: <code>2019</code>
 - boolean: <code>true</code>
any typescript expression in script mode (TS) : - string (with quotes): <code>'monday'</code>
 - number: <code>2019</code>
 - boolean: <code>true</code>
 - array: <code>['monday','friday']</code>
 - json: <code>{name: 'wood', age: 35}</code>
 - object: <code>this.myObject.data</code>
any available source shown in mobile picker, in source mode (SC) : - sequence source
 - fullsync source
 - iterator directive source
 - form source
 - global source

<b>To access an action <i>Variable</i></b>
from any child <i>Action</i> property or variable, use in script mode (TS) : - <code>stack['&lt;action-name&gt;'].vars.in.&lt;variable-name&gt;</code>
for a <i>CustomAction</i> and to access <b>its</b> variables, use inside action code : - <code>vars.&lt;variable-name&gt;</code>


Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Var value | Defines the variable value. 

