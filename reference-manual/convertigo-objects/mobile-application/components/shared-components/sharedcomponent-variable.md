---
layout: page
title: SharedComponent Variable
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/shared-components/sharedcomponent-variable/
metadesc: Defines a  SharedComponent Variable  component.    SharedComponent Variable s help specifying variables of a  SharedComponent .   Set the variable def
ObjGroup: Shared Components
ObjCatName: shared-components
ObjName: UICompVariable
ObjClass: com.twinsoft.convertigo.beans.mobile.components.res.UICompVariable
ObjIcon: /images/beans/mobile/components/images/uicompvariable_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>SharedComponent Variable</i> component. <br/>

 <i>SharedComponent Variable</i>s help specifying variables of a <i>SharedComponent</i>.<br><br><b>Set the variable default value</b> through the <i>Variable value</i> property.<br><u>Any typescript expression is valid</u>:<br> • string (with quotes): <code>'monday'</code><br> • number: <code>2019</code><br> • boolean: <code>true</code><br> • array: <code>['monday','friday']</code><br> • json: <code>{name: 'wood', age: 35}</code><br> • object: <code>this.myObject.data</code><br><br><b>To access a shared component <i>SharedComponent Variable</i></b><br><u>from any child <i>Action</i> property or variable, use in script mode (TS)</u>:<br> • <code>params.&lt;priority&gt;.&lt;variable-name&gt;</code><br> where <code>priority</code> is the shared component priority property

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Variable value | Defines the default variable value. 

