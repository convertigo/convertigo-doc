---
layout: page
title: File Opener
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/native-action-components/file-opener/
metadesc: Defines a  File Opener  action component.   This component helps opening a file.  Supported platform(s)    • Android  • iOSYou can access data from th
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: FileOpenerAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/fileopeneraction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>File Opener</i> action component. 
 This component helps opening a file.
<u>Supported platform(s):</u><br> • Android<br> • iOSYou can access data from the next action in the chain in (TS) mode with: <code><br> • out: a boolean thats indicates if the file has been opened</code>Whenever cordova platform is not available, the value defined in mocking options is returned.
 Default value is <code>true</code>.
For more information : <a target='_blank' href='https://ionicframework.com/docs/v3/native/file-opener/'>File Opener</a>.

Name | Description 
--- | ---
filePath | The file path.
mocked response | The mocked response for the File opener action in case of running not supported platform. Must be a boolean.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

