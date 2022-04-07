---
layout: page
title: SharedComponent Event
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/sharedcomponent-event/
metadesc: Defines a  SharedComponent Event  component.   A component instance has a lifecycle that starts when Angular instantiates the component class and rend
ObjGroup: Mobile Application
ObjCatName: control-components
ObjName: SharedComponent Event
ObjClass: com.twinsoft.convertigo.beans.ngx.components.UISharedComponentEvent
ObjIcon: /images/beans/core/images/default_color_16x16.png
topnav: topnavobj
---
##### Defines a <i>SharedComponent Event</i> component. 

A component instance has a lifecycle that starts when Angular instantiates the component class and renders the component view along with its child views. The lifecycle continues with change detection, as Angular checks to see when data-bound properties change, and updates both the view and the component instance as needed. The lifecycle ends when Angular destroys the component instance and removes its rendered template from the DOM:<br/> • <b>onCanEnter</b><br>Deprecated - See <i>AppGuard</i> <b>onCanActivate</b>.<br/> • <b>onCanLeave</b><br>Deprecated - See <i>AppGuard</i> <b>onCanDeactivate</b>.<br/> • <b>onDidLoad</b><br>Runs when the page has loaded. This event only happens once per page being created. If a page leaves but is cached, then this event will not fire again on a subsequent viewing. The onDidLoad event is good place to put your setup code for the page<br/> • <b>onWillEnter</b><br>Runs when the page is about to enter and become the active page<br/> • <b>onDidEnter</b><br>Runs when the page has fully entered and is now the active page. This event will fire, whether it was the first load or a cached page<br/> • <b>onWillLeave</b><br>Runs when the page is about to leave and no longer be the active page<br/> • <b>onDidLeave</b><br>Runs when the page has finished leaving and is no longer the active page<br/> • <b>onWillUnload</b><br>Runs when the page is about to be destroyed and have its elements removed<br/> You can add a <i>SharedComponent Event</i> component under a <b><i>SharedComponent</i></b> component.<br> Within a <i>SharedComponent Event</i> component, you can add and chain any type of <b>action</b> such as <i>CallSequence<i>, <i>CallFulSync<i> or <i>CustomAction<i> component.<br/>For more information: <a href='https://angular.io/guide/lifecycle-hooks' target='_blank'>Lifecycle hooks</a>   

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Event type | ComponentEvent | standard | Defines the event type.<br/>
Is active | boolean | standard | Defines whether the component is active.<br/>
