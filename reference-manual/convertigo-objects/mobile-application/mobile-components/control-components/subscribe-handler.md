---
layout: page
title: Subscribe Handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/control-components/subscribe-handler/
metadesc: Defines a  Subscribe Handler  component.    This component helps you subscribing to an event giving its topic and defining actions to execute when the
ObjGroup: Controls
ObjCatName: control-components
ObjName: UIEventSubscriber
ObjClass: com.twinsoft.convertigo.beans.mobile.components.res.UIEventSubscriber
ObjIcon: /images/beans/mobile/components/images/uieventsubscriber_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Subscribe Handler</i> component. <br/>

 <p>This component helps you subscribing to an event giving its topic and defining actions to execute when the event is triggered through a <i>PublishEvent</i> action.</p><p>You may add a <i>Subscribe Handler</i> under the <b>Application</b> or a <b>Page</b>, then add to it any type of <b>action</b> such as <i>CallSequence</i>, <i>CallFullSync</i> or <i>CustomAction</i> component.</p><p>You can access the event data Object from the next action in the chain in (TS) mode with: <br> • <code>out</code> : from the first child action of the chain <br> • <code>parent.out</code> : from the first child action of the chain <br> • <code>stack['root'].out</code> : from any child action of the chain</p><p><strong>Note:</strong> use the <code>JSON.stringify</code> method to stringify your data object.</p>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Event topic | Defines the event topic subscribed.
Is active | Defines whether the component is active.

