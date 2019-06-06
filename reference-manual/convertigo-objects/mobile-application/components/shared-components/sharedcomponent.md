---
layout: page
title: SharedComponent
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/shared-components/sharedcomponent/
metadesc: Defines  SharedComponent  component.   This component helps defining an entire composite component. This component will then be available To all other
ObjGroup: Shared Components
ObjCatName: shared-components
ObjName: UISharedComponent
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$3
ObjIcon: /images/beans/mobile/components/images/uisharedcomponent_color_32x32.png
topnav: topnavobj
---
##### Defines <i>SharedComponent</i> component. <br/>

 This component helps defining an entire composite component. This component will then be available To all other Pages within your project and to any other Project. Using SharedComponents is the best way to build modular projects and provide standard components shared among multiple Projects / Pages.<br/>
<br/>
SharedComponent objects will be placed in the 'ShareComponents' folder of your project. Under a SharedComponent you can add any other Convertigo Mobile Builder component, such as buttons, list views, styles etc...<br/>
<br/>
Modifying any component property or adding components to a SharedComponent will automatically rebuild all the pages using it within your project or any other project load in the workspace using it.<br/>
<br/>
Components inserted in a SharedComponent can be bound to any standard Mobile Builder source (Sequences, TypeScript, FullSync, Global properties) <br/>
<br/>
To use a SharedComponent in a page, just insert a 'UseSharedComponent' component in the tree, and set its 'Shared Compoent' property to the name of the target Shared component.

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

