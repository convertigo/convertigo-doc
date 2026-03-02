---
layout: page
title: NavRoute
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/route-components/navroute/
metadesc: Defines a  NavRoute  component.    This component helps creating navigation routes for your application.   NavRoute  component works on events to trig
ObjGroup: Mobile Application
ObjCatName: route-components
ObjName: NavRoute
ObjClass: com.twinsoft.convertigo.beans.mobile.components.RouteComponent
ObjIcon: /images/beans/mobile/components/images/routecomponent_color_32x32.png
topnav: topnavobj
---
##### Defines a *NavRoute* component.

This component helps creating navigation routes for your application.

*NavRoute* component works on events to trigger actions.

First, add *SequenceEvent* or *FullSyncEvent* components to your *NavRoute* component, and specify the Convertigo *requestable* you'd like to listen to. Then, add *DataAction* or *ExceptionAction* components to trigger a page navigation or a toast.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the route is active.
