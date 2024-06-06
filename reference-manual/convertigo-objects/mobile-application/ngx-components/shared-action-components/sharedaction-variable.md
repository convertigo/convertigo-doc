---
layout: page
title: SharedAction Variable
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/shared-action-components/sharedaction-variable/
metadesc: Defines a  SharedAction Variable  component.    SharedAction Variable s help specifying variables of a  SharedAction .   Set the variable default valu
ObjGroup: Shared Actions
ObjCatName: shared-action-components
ObjName: UIStackVariable
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UIStackVariable
ObjIcon: /images/beans/ngx/components/dynamic/images/uistackvariable_32x32.png
topnav: topnavobj
---
##### Defines a <i>SharedAction Variable</i> component. <br/>

 <i>SharedAction Variable</i>s help specifying variables of a <i>SharedAction</i>.<br><br><b>Set the variable default value</b> through the <i>Variable value</i> property.<br><u>Any typescript expression is valid</u>:<br> • string (with quotes): <code>'monday'</code><br> • number: <code>2019</code><br> • boolean: <code>true</code><br> • array: <code>['monday','friday']</code><br> • json: <code>{name: 'wood', age: 35}</code><br> • object: <code>this.myObject.data</code><br><br><b>To access a shared action <i>SharedAction Variable</i></b><br><u>from any child <i>Action</i> property or variable, use in script mode (TS)</u>:<br> • <code>params.&lt;variable-name&gt;</code><br> • <code>stack['&lt;shared-action-name&gt;'].vars.in.&lt;variable-name&gt;</code>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Variable value | Defines the default variable value. 

