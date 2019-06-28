---
layout: page
title: Chooser
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/native-action-components/chooser/
metadesc: Defines a  Chooser  action component.   This component helps selecting a file.  Supported platorm(s)     Android  iOS  You can access data from the ne
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: ChooserAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/filechooseraction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Chooser</i> action component. 
 This component helps selecting a file.
<u>Supported platorm(s):</u> <ul><li>Android</li><li>iOS</li></ul>You can access data from the next action in the chain in (TS) mode with: <code><ul><li>out: {data: Uint8Array, dataURI:string, mediaType: string, name: string, uri:string}</li></ul></code>Whenever cordova platform is not available, the value defined in mocking option is returned.
 Default mocked value is <code>'https://www.convertigo.com/wp-content/uploads/2015/01/logoStudio.png'</code>.
It uses the native Chooser to select a file.
For more information : <a target='_blank' href='https://ionicframework.com/docs/v3/native/chooser/'>Chooser</a>.

Name | Description 
--- | ---
mime Type | Whenever you want to select a specific type of file you can use mimetype to filer
mocked response | The mocked response for the File chooser action in case of running not supported platform. Must be a string.

