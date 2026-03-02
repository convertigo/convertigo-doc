---
layout: page
title: Chooser
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/native-action-components/chooser/
metadesc: Defines a  Chooser  action component.   This component helps selecting a file.  Supported platorm(s)     • Android  • iOS  You can access data from th
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: ChooserAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/filechooseraction_32x32.png
topnav: topnavobj
---
##### Defines a <i>Chooser</i> action component. <br/>

 This component helps selecting a file.<br/>
<u>Supported platorm(s):</u> <br/>
 • Android<br/>
 • iOS<br/>
<br/>
You can access data from the next action in the chain in (TS) mode with: <code><br/>
 • out: {data: Uint8Array, dataURI:string, mediaType: string, name: string, uri:string}</code><br/>
<br/>
Whenever cordova platform is not available, the value defined in mocking option is returned.<br/>
 Default mocked value is <code>'https://www.convertigo.com/wp-content/uploads/2015/01/logoStudio.png'</code>.<br/>
It uses the native Chooser to select a file.<br/>
For more information : <a href='https://www.npmjs.com/package/@ionic-native/chooser'>Chooser</a>.

Name | Description 
--- | ---
Mime Type | Whenever you want to select a specific type of file you can use mimetype to filer
Mocked response | The mocked response for the File chooser action in case of running not supported platform. Must be a string.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.

