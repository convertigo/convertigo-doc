---
layout: page
title: CustomAsyncAction
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/action-components/customasyncaction/
metadesc: Defines  CustomAsyncAction  action component.   This component helps you writing your own asynchronous processing code.
ObjGroup: Actions
ObjCatName: action-components
ObjName: UICustomAsyncAction
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UICustomAsyncAction
ObjIcon: /images/beans/ngx/components/dynamic/images/uicustomasyncaction_32x32.png
topnav: topnavobj
---
##### Defines <i>CustomAsyncAction</i> action component. <br/>

 This component helps you writing your own asynchronous processing code.

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Application assets | Defines the assets needed by this action.  Add here any additional json to be inserted in the app:architect:build:option:assets[] of angular.json (Ex {"glob": "**/*", "input": "node_modules/tinymce", "output": "/tinymce/"})
Application imports | Defines the imports needed by this action.  Add here any 'Import' statements needed in the app.module.ts
Application modules | Defines the modules needed by this action.  Add here any application module to be inserted in the @NgModule({Imports[]}) in app.module.ts
Application packages | Defines the packages needed by this action.  Add here any NPM Package needed by you code. They will be automatically added to the app's Packages.json
Application plugins | Defines the plugins needed by this action.  Add here any additional Cordova plugin your code needs (Ex ion native Packages).
Application providers | Defines the providers needed by this action.  Add here any application module to be inserted in the @NgModule({Providers[]}) in app.module.ts
Application scripts | Defines the scripts needed by this action.  Add here any additional path to script file needed by your code
Application styles | Defines the styles needed by this action.  Add here any additional path to scss file needed by your code
Page imports | Defines the imports needed by this action.  Add here any 'Import' statements your code would require to compile.

