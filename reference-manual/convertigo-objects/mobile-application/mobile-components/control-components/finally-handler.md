---
layout: page
title: Finally Handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/control-components/finally-handler/
metadesc: Defines an  Finally Handler .    Finally Handler  can be used to execute some final actions once the main action chain is complete, whether there were
ObjGroup: Mobile Application
ObjCatName: control-components
ObjName: Finally Handler
ObjClass: com.twinsoft.convertigo.beans.mobile.components.UIActionFinallyEvent
ObjIcon: /images/beans/mobile/components/images/uiactionfinallyevent_color_32x32.png
topnav: topnavobj
---
##### Defines an <i>Finally Handler</i>. 

<i>Finally Handler</i> can be used to execute some final actions once the main action chain is complete, whether there were errors or not.<br/>To do so, place a <i>Finally Handler</i> immediately under an <i>Event</i>, an <i>AppEvent</i>, a <i>PageEvent</i>, a <i>SharedAction</i> or a <i>Subscribe Handler</i>, and add to it any child action chain.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the component is active.<br/>
