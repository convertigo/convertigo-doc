---
layout: page
title: SetGlobal
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/action-components/setglobal/
metadesc: Defines a  SetGlobal  action component.   This component helps storing some data in the global application wide space. In most apps, it is useful to s
ObjGroup: Actions
ObjCatName: action-components
ObjName: SetGlobalAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/setglobalaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>SetGlobal</i> action component. <br/>

 This component helps storing some data in the global application wide space.<br/>
In most apps, it is useful to store some global app-wide properties that can be retrieved from any page. You can use the <i>SetGlobal</i> action for that.<br/>
<br/>
If you want to retrieve and use the value of a stored property (for example myProperty) to be displayed on a page, source a <i>Text</i> component in <b>TS</b> mode to :<br/>
<br/>
<code>this.global?.myProperty</code><br/>
<br/>


Name | Description 
--- | ---
Property | Name of the property to set.
value | Value of the property, can be a simple string or any Object.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

