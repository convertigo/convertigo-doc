---
layout: page
title: Check Install
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/native-action-components/check-install/
metadesc: Defines a  Check Install  action component.  This component helps verifying for application installation on your device.  Supported platform(s)    • A
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: CheckInstallAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/checkinstallaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Check Install</i> action component. 
This component helps verifying for application installation on your device.
<u>Supported platform(s):</u>
 • Android
 • iOS
 • Windows

You can access data from the next action in the chain in (TS) mode with: <code>
 • out: A boolean indicating if the application is installed</code>

Whenever cordova platform is not available, the value defined in mocking option is returned.
 Default mocked value is <code>true</code>.
It uses the native Cordova plugin which allows you to check if an application is installed giving its package ID.
For more information : <a target='_blank' href='https://ionicframework.com/docs/v3/native/file-opener/#appIsInstalled'>File Opener</a>.

Name | Description 
--- | ---
mocked response | The mocked response for the check install action in case of running not supported platform. Must be a boolean.
packageID | The package id.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

