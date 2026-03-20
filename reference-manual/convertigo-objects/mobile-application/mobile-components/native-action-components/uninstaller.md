---
layout: page
title: Uninstaller
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/native-action-components/uninstaller/
metadesc: Defines an  Uninstaller  action component.  This component helps uninstalling an application on your device.  Supported platform(s)    • Android  You 
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: UninstallAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/uninstallaction_color_32x32.png
topnav: topnavobj
---
##### Defines an <i>Uninstaller</i> action component. <br/>

This component helps uninstalling an application on your device.<br/>
<u>Supported platform(s):</u><br/>
 • Android<br/>
<br/>
You can access data from the next action in the chain in (TS) mode with: <code><br/>
 • out: A boolean thats indicates if the action succeed</code><br/>
<br/>
Whenever cordova platform is not available, the value defined in mocking options is returned.<br/>
 Default mocked value is <code>true</code>.<br/>
 It uses the native Cordova plugin which allows you to uninstall any application giving its package ID.<br/>
 For more information : <a href='https://ionicframework.com/docs/v3/native/file-opener/#uninstall'>File Opener</a>.

Name | Description 
--- | ---
mocked response | The mocked response for the Uninstaller action in case of running not supported platform. Must be a boolean.
packageID | The package id.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

