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
##### Defines a <i>SetGlobal</i> action component. 
 This component helps storing some data in the global application wide space.
In most apps, it is useful to store some global app-wide properties that can be retrieved from any page. You can use the <i>SetGlobal</i> action for that.

If you want to retrieve and use the value of a stored property (for example myProperty) to be displayed on a page, source a <i>Text</i> component in <b>TS</b> mode to :

<code>this.global?.myProperty</code>



Name | Description 
--- | ---
Property | Name of the property to set.
value | Value of the property, can be a simple string or any Object.

