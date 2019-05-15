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
<b>Set the variable default value</b> through the <i>Variable value</i> property.<br>Any typescript expression is valid :<ul><li>string (with quotes): <code>'monday'</code></li><li>number: <code>2019</code></li><li>boolean: <code>true</code></li><li>array: <code>['monday','friday']</code></li><li>json: <code>{name: 'wood', age: 35}</code></li><li>object: <code>this.myObject.data</code></li></ul>
<b>To access a shared action <i>SharedAction Variable</i></b><br>from any child <i>Action</i> property or variable, use in script mode (TS) :<ul><li><code>params.&lt;variable-name&gt;</code></li><li><code>stack['&lt;shared-action-name&gt;'].vars.in.&lt;variable-name&gt;</code></li></ul>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Variable value | Defines the default variable value. 

