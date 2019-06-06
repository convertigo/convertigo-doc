---
layout: page
title: File Chooser
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/native-action-components/file-chooser/
metadesc: Defines a  File Chooser  action component.   This component helps selecting a file.  Supported platorm(s)     • Android  You can access data from the 
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: FileChooserAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/filechooseraction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>File Chooser</i> action component. <br/>

 This component helps selecting a file.<br/>
<u>Supported platorm(s):</u> <br/>
 • Android<br/>
<br/>
You can access data from the next action in the chain in (TS) mode with: <code><br/>
 • out: The file URI</code><br/>
<br/>
Whenever cordova platform is not available, the value defined in mocking option is returned.<br/>
 Default mocked value is <code>'https://www.convertigo.com/wp-content/uploads/2015/01/logoStudio.png'</code>.<br/>
It uses the native Android file picker for the user to select a file.<br/>
For more information : <a target='_blank' href='https://ionicframework.com/docs/v3/native/file-chooser/'>File Chooser</a>.

Name | Description 
--- | ---
mocked response | The mocked response for the File chooser action in case of running not supported platform. Must be a string.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

