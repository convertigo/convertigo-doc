---
layout: page
title: Subscribe Handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/subscribe-handler/
metadesc: Defines a  Subscribe Handler  component.    This component helps you subscribing to an event giving its topic and defining actions to execute when the
ObjGroup: Mobile Application
ObjCatName: control-components
ObjName: Subscribe Handler
ObjClass: com.twinsoft.convertigo.beans.ngx.components.UIEventSubscriber
ObjIcon: /images/beans/ngx/components/images/uieventsubscriber_32x32.png
topnav: topnavobj
---
##### Defines a <i>Subscribe Handler</i> component. 

This component helps you subscribing to an event giving its topic and defining actions to execute when the event is triggered through a <i>PublishEvent</i> action. <br/>You may add a <i>Subscribe Handler</i> under the <b>Application</b> or a <b>Page</b>, then add to it any type of <b>action</b> such as <i>CallSequence</i>, <i>CallFullSync</i> or <i>CustomAction</i> component. <br/>You can access the event data Object from the next action in the chain in (TS) mode with:<br> • <code>out</code> : from the first child action of the chain<br> • <code>parent.out</code> : from the first child action of the chain<br> • <code>stack['root'].out</code> : from any child action of the chain<br/> Note: use the <code>JSON.stringify</code> method to stringify your data object.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Event topic | String | standard | Defines the event topic subscribed.<br/>
Is active | boolean | standard | Defines whether the component is active.<br/>
