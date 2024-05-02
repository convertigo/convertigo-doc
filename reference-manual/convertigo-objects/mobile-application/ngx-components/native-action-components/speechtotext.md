---
layout: page
title: SpeechToText
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/native-action-components/speechtotext/
metadesc: Defines a  SpeechToText  action component.   Listen a speech. This component retrieves speech recognition's data. Note that more languages are avaible
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: SpeechToTextAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/speechtotextaction_32x32.png
topnav: topnavobj
---
##### Defines a <i>SpeechToText</i> action component. <br/>

 Listen a speech.<br/>
This component retrieves speech recognition's data.<br/>
Note that more languages are avaible in an external browser, or device than in Convertigo viewer.<br/>
<br/>
<u>Supported platorm(s):</u> <br/>
 • Android<br/>
 • iOS<br/>
 • Browser<br/>
<br/>
You can access data from the next action in the chain in (TS) mode with: <code><br/>
 • out: A concatenation of spoken string(s) if the action succeed</code><br/>
For more information : <a href='https://ionicframework.com/docs/native/speech-recognition'>SpeechRecognition</a>.

Name | Description 
--- | ---
Locale | Used language for recognition (default 'en-US')
Matches | Number of return matches (default 5, on iOS: maximum number of matches)
Prompt | Displayed prompt of listener popup window (default '' Android only)
Show partial | Allow partial results to be returned (default false, iOS|Browser only)
Show popup | Display listener popup window with prompt (default true, Android only)
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

