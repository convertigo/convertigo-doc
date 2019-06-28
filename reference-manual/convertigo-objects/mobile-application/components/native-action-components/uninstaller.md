---
layout: page
title: Uninstaller
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/native-action-components/uninstaller/
metadesc: Defines an  Uninstaller  action component.  This component helps uninstalling an application on your device.  Supported platform(s)    Android  You ca
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: UninstallAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/uninstallaction_color_32x32.png
topnav: topnavobj
---
##### Defines an <i>Uninstaller</i> action component. 
This component helps uninstalling an application on your device.
<u>Supported platform(s):</u><ul><li>Android</li></ul>You can access data from the next action in the chain in (TS) mode with: <code><ul><li>out: A boolean thats indicates if the action succeed</li></ul></code>Whenever cordova platform is not available, the value defined in mocking options is returned.
 Default mocked value is <code>true</code>.
 It uses the native Cordova plugin which allows you to uninstall any application giving its package ID.
 For more information : <a target='_blank' href='https://ionicframework.com/docs/v3/native/file-opener/'>File Opener</a>.

Name | Description 
--- | ---
mocked response | The mocked response for the Uninstaller action in case of running not supported platform. Must be a boolean.
packageID | The package id.

