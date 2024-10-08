---
layout: page
title: File Opener
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/native-action-components/file-opener/
metadesc: Defines a  File Opener  action component.   This component helps opening a file.  Supported platform(s)    • Android  • iOS  You can access data from 
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: FileOpenerAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/fileopeneraction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>File Opener</i> action component. <br/>

 This component helps opening a file.<br/>
<u>Supported platform(s):</u><br/>
 • Android<br/>
 • iOS<br/>
<br/>
You can access data from the next action in the chain in (TS) mode with: <code><br/>
 • out: a boolean thats indicates if the file has been opened</code><br/>
<br/>
Whenever cordova platform is not available, the value defined in mocking options is returned.<br/>
 Default value is <code>true</code>.<br/>
For more information : <a href='https://ionicframework.com/docs/v3/native/file-opener/#open'>File Opener</a>.

Name | Description 
--- | ---
filePath | The file path.
mocked response | The mocked response for the File opener action in case of running not supported platform. Must be a boolean.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

