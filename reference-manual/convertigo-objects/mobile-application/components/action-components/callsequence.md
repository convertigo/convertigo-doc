---
layout: page
title: CallSequence
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/action-components/callsequence/
metadesc: Defines a  CallSequence  action component.   This component helps invoking a Convertigo  Sequence  which may be specified through the  Requestable  pr
ObjGroup: Actions
ObjCatName: action-components
ObjName: CallSequenceAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/callsequenceaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>CallSequence</i> action component. 
 This component helps invoking a Convertigo <i>Sequence</i> which may be specified through the <i>Requestable</i> property.
 Add a <i>CallSequence</i> under a <i>PageEvent</i>, an <i>Event</i> or another <i>Action</i>.
If the targeted sequence requires some input variables, you can add to your action the needed <i>Variable</i> components by hand or by the 'import' menu which appears by right-clicking on your <i>CallSequence</i> action.
The returned data can be accessed from any underneath action using the <code>out</code> typescript variable.
For more information : <a target='_blank' href='https://www.convertigo.com/document/latest/reference-manual/convertigo-objects/sequencer/'>Sequencer</a>.

Name | Description 
--- | ---
Local cache policy | Defines the local cache policy.
Local cache time to live | Defines the local cache time to live (in milliseconds).
Marker | Defines the requestable's marker.
Requestable | Defines the target requestable.
Threshold | Defines the minimum time to wait for the Loading spinner to show up (in milliseconds).
Timeout | Defines the maximum time to wait for the response (in milliseconds). May be used to detect slow network conditions.

