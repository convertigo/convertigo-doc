---
layout: page
title: CallSequence
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/action-components/callsequence/
metadesc: Defines a  CallSequence  action component.   This component helps invoking a Convertigo  Sequence  which may be specified through the  Requestable  pr
ObjGroup: Actions
ObjCatName: action-components
ObjName: CallSequenceAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/callsequenceaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>CallSequence</i> action component. <br/>

 This component helps invoking a Convertigo <i>Sequence</i> which may be specified through the <i>Requestable</i> property.<br/>
 Add a <i>CallSequence</i> under a <i>PageEvent</i>, an <i>Event</i> or another <i>Action</i>.<br/>
If the targeted sequence requires some input variables, you can add to your action the needed <i>Variable</i> components by hand or by the 'import' menu which appears by right-clicking on your <i>CallSequence</i> action.<br/>
The returned data can be accessed from any underneath action using the <code>out</code> typescript variable.<br/>
For more information : <a target='_blank' href='https://www.convertigo.com/document/latest/reference-manual/convertigo-objects/sequencer/'>Sequencer</a>. <br/>
<br/>
 If you want to disable laoding controller, you can set property <i>disable loading controller</i> to true.

Name | Description 
--- | ---
Disable auto login | Defines if we want to disable auto login
Disable loading controller | Defines if we want to disable loading controller showing
Local cache policy | Defines the local cache policy.
Local cache time to live | Defines the local cache time to live (in milliseconds).
Marker | Defines the requestable's marker.
Requestable | Defines the target requestable.
Threshold | Defines the minimum time to wait for the Loading spinner to show up (in milliseconds).
Timeout | Defines the maximum time to wait for the response (in milliseconds). May be used to detect slow network conditions.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

