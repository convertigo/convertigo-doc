---
layout: page
title: NavRoute
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/route-components/navroute/
metadesc: Defines a  NavRoute  component.   This component helps creating navigation routes for your application.  NavRoute  component works on events to trigge
ObjGroup: Mobile Application
ObjCatName: route-components
ObjName: NavRoute
ObjClass: com.twinsoft.convertigo.beans.ngx.components.RouteComponent
ObjIcon: /images/beans/ngx/components/images/routecomponent_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>NavRoute</i> component. 

This component helps creating navigation routes for your application.<br/><i>NavRoute</i> component works on events to trigger actions.<br/>First, add <i>SequenceEvent</i> or <i>FullSyncEvent</i> components to your <i>NavRoute</i> component, and specify the Convertigo <i>requestable</i> you'd like to listen to.<br>Then, add <i>DataAction</i> or <i>ExceptionAction</i> components to trigger a page navigation or a toast.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the route is active.<br/>
