---
layout: page
title: Subscribe Handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/control-components/subscribe-handler/
metadesc: Defines a  Subscribe Handler  component.    This component helps you subscribing to an event giving its topic and defining actions to execute when the
ObjGroup: Mobile Application
ObjCatName: control-components
ObjName: Subscribe Handler
ObjClass: com.twinsoft.convertigo.beans.mobile.components.UIEventSubscriber
ObjIcon: /images/beans/mobile/components/images/uieventsubscriber_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Subscribe Handler</i> component. 

This component helps you subscribing to an event giving its topic and defining actions to execute when the event is triggered through a <i>PublishEvent</i> action.<br/>You may add a <i>Subscribe Handler</i> under the <b>Application</b> or a <b>Page</b>, then add to it any type of <b>action</b> such as <i>CallSequence<i>, <i>CallFullSync<i> or <i>CustomAction<i> component.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Event topic | String | standard | Defines the event topic.<br/>
Is active | boolean | standard | Defines whether the component is active.<br/>
