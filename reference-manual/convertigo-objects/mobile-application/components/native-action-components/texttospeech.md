---
layout: page
title: TextToSpeech
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/native-action-components/texttospeech/
metadesc: Defines a  TextToSpeech  action component.   Speaks a string. Note that more languages are avaible in an external browser, or device than in Convertig
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: TextToSpeechAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/texttospeechaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>TextToSpeech</i> action component. 
 Speaks a string.
Note that more languages are avaible in an external browser, or device than in Convertigo viewer.

<u>Supported platorm(s):</u> 
 - Android
 - iOS
 - BrowserYou can access data from the next action in the chain in (TS) mode with: <code>
 - out: A boolean thats indicates if the action succeed</code>For more information : <a target='_blank' href='https://ionicframework.com/docs/v3/native/text-to-speech//'>TextToSpeech</a>.

Name | Description 
--- | ---
Locale | 'not set' or String : 'en-US' or ['en' or voice 'name' for WebApps].
Pitch | Number : the pitch level 0 to 2.
Rate | Number : the speech speed level 0.1 to 10.
Text | 'not set' or String : the words to be spoken.
Volume | Number : the volume level 0 to 1.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

