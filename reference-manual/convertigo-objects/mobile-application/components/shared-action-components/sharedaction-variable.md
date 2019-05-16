---
layout: page
title: SharedAction Variable
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/shared-action-components/sharedaction-variable/
metadesc: Defines a  SharedAction Variable  component.    SharedAction Variable s help specifying variables of a  SharedAction .  Set the variable default value
ObjGroup: Shared Actions
ObjCatName: shared-action-components
ObjName: UIStackVariable
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$3
ObjIcon: /images/beans/mobile/components/images/uistackvariable_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>SharedAction Variable</i> component. 
 <i>SharedAction Variable</i>s help specifying variables of a <i>SharedAction</i>.
<b>Set the variable default value</b> through the <i>Variable value</i> property.
Any typescript expression is valid :
 - string (with quotes): <code>'monday'</code>
 - number: <code>2019</code>
 - boolean: <code>true</code>
 - array: <code>['monday','friday']</code>
 - json: <code>{name: 'wood', age: 35}</code>
 - object: <code>this.myObject.data</code>

<b>To access a shared action <i>SharedAction Variable</i></b>
from any child <i>Action</i> property or variable, use in script mode (TS) :
 - <code>params.&lt;variable-name&gt;</code>
 - <code>stack['&lt;shared-action-name&gt;'].vars.in.&lt;variable-name&gt;</code>


Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Variable value | Defines the default variable value. 

