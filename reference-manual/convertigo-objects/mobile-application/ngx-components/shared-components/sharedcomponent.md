---
layout: page
title: SharedComponent
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/shared-components/sharedcomponent/
metadesc: Defines  SharedComponent  component.   This component helps defining an entire composite component. It will then be available to all other pages withi
ObjGroup: Shared Components
ObjCatName: shared-components
ObjName: UISharedRegularComponent
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UISharedRegularComponent
ObjIcon: /images/beans/ngx/components/dynamic/images/uisharedcomponent_32x32.png
topnav: topnavobj
---
##### Defines <i>SharedComponent</i> component. <br/>

 This component helps defining an entire composite component. It will then be available to all other pages within your project and to any other project. Using <i>SharedComponent</i>s is the best way to build modular projects and provide standard components shared among multiple Projects / Pages.<br/>
<br/>
<i>SharedComponent</i> objects will be placed in the <b>Shared components</b> folder of your application. Under a <i>SharedComponent</i> you can add any other Convertigo Mobile Builder component, such as buttons, list views, styles etc...<br/>
<br/>
Modifying any component property or adding components to a <i>SharedComponent</i> will automatically rebuild all the pages using it within your project or any other project loaded in the workspace using it.<br/>
<br/>
Components inserted in a <i>SharedComponent</i> can be bound to any standard Mobile Builder source (Sequences, TypeScript, FullSync, Global properties) <br/>
<br/>
To use a <i>SharedComponent</i> in a page, just insert a <i>UseSharedComponent</i> component in the tree, and select the desired shared component through its <i>Shared component</i> property.

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Is exposed | Defines whether the component is exposed for public use.  <br/>If exposed, a component can be used by any project. It will be visible in the Ngx palette and documented in the generated readme.md file.<br/>Otherwise, the component can only be used within its own project (through the <i>Shared component</i> picker only). It will not be visible in the Ngx palette, nor documented in the generated readme.md file.

