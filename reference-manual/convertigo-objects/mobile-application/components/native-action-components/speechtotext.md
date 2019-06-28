---
layout: page
title: SpeechToText
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/native-action-components/speechtotext/
metadesc: Defines a  SpeechToText  action component.   Listen a speech. This component retrieves speech recognition's data. Note that more languages are avaible
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: SpeechToTextAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/speechtotextaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>SpeechToText</i> action component. 
 Listen a speech.
This component retrieves speech recognition's data.
Note that more languages are avaible in an external browser, or device than in Convertigo viewer.

<u>Supported platorm(s):</u> <ul><li>Android</li><li>iOS</li><li>Browser</li></ul>You can access data from the next action in the chain in (TS) mode with: <code><ul><li>out: A concatenation of spoken string(s) if the action succeed</li></ul></code>For more information : <a target='_blank' href='https://ionicframework.com/docs/v3/native/speech-recognition/'>SpeechRecognition</a>.

Name | Description 
--- | ---
Locale | Used language for recognition (default 'en-US')
Matches | Number of return matches (default 5, on iOS: maximum number of matches)
Prompt | Displayed prompt of listener popup window (default '' Android only)
Show partial | Allow partial results to be returned (default false, iOS|Browser only)
Show popup | Display listener popup window with prompt (default true, Android only)

