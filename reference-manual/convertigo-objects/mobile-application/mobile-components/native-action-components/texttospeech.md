---
layout: page
title: TextToSpeech
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/native-action-components/texttospeech/
metadesc: Defines a  TextToSpeech  action component.   Speaks a string. Note that more languages are avaible in an external browser, or device than in Convertig
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: TextToSpeechAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/texttospeechaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>TextToSpeech</i> action component. <br/>

 Speaks a string.<br/>
Note that more languages are avaible in an external browser, or device than in Convertigo viewer.<br/>
<br/>
<u>Supported platorm(s):</u> <br/>
 • Android<br/>
 • iOS<br/>
 • Browser<br/>
<br/>
You can access data from the next action in the chain in (TS) mode with: <code><br/>
 • out: A boolean thats indicates if the action succeed</code><br/>
For more information : <a href='https://ionicframework.com/docs/v3/native/text-to-speech//'>TextToSpeech</a>.

Name | Description 
--- | ---
Locale | 'not set' or String : 'en-US' or ['en' or voice 'name' for WebApps].
Pitch | Number : the pitch level 0 to 2.
Rate | Number : the speech speed level 0.1 to 10.
Text | 'not set' or String : the words to be spoken.
Volume | Number : the volume level 0 to 1.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

