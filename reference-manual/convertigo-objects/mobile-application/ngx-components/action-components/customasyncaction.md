---
layout: page
title: CustomAsyncAction
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/action-components/customasyncaction/
metadesc: Defines  CustomAsyncAction  action component.   This component helps you writing your own asynchronous processing code.
ObjGroup: Mobile Application
ObjCatName: action-components
ObjName: CustomAsyncAction
ObjClass: com.twinsoft.convertigo.beans.ngx.components.UICustomAsyncAction
ObjIcon: /images/beans/core/images/default_color_16x16.png
topnav: topnavobj
---
##### Defines <i>CustomAsyncAction</i> action component. 

This component helps you writing your own asynchronous processing code.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the component is active.<br/>
Application imports | XMLVector | expert | Defines the imports needed by this action.<br/>Add here any 'Import' statements needed in the app.module.ts
Application modules | XMLVector | expert | Defines the modules needed by this action.<br/>Add here any application module to be inserted in the @NgModule({Imports[]}) in app.module.ts
Application packages | XMLVector | expert | Defines the packages needed by this action.<br/>Add here any NPM Package needed by you code. They will be automatically added to the app's Packages.json
Application plugins | XMLVector | expert | Defines the plugins needed by this action.<br/>Add here any additional Cordova plugin your code needs (Ex ion native Packages).
Application providers | XMLVector | expert | Defines the providers needed by this action.<br/>Add here any application module to be inserted in the @NgModule({Providers[]}) in app.module.ts
Page imports | XMLVector | expert | Defines the imports needed by this action.<br/>Add here any 'Import' statements your code would require to compile.
