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
ObjIcon: /images/beans/ngx/components/images/uisharedcomponentevent_32x32.png
topnav: topnavobj
---
##### Defines a <i>SharedComponent Event</i> component. 

A component instance has a lifecycle that starts when Angular instantiates the component class and renders the component view along with its child views. The lifecycle continues with change detection, as Angular checks to see when data-bound properties change, and updates both the view and the component instance as needed. The lifecycle ends when Angular destroys the component instance and removes its rendered template from the DOM:<br/> • <b>compChanges</b><br>Runs when Angular sets or resets data-bound input properties.<br/> • <b>compInit</b><br>Runs when Angular initializes the component.<br/> • <b>compDoCheck</b><br>Detect and act upon changes that Angular can't or won't detect on its own<br/> • <b>compAfterContentInit</b><br>Runs after Angular projects external content into the component's view<br/> • <b>compAfterContentChecked</b><br>Runs after Angular checks the content projected into the component<br/> • <b>compAfterViewInit</b><br>Runs after Angular initializes the component's views and child views<br/> • <b>compAfterViewChecked</b><br>Runs after Angular checks the component's views and child views<br/> • <b>compDestroy</b><br>Runs just before Angular destroys the component<br/> You can add a <i>SharedComponent Event</i> component under a <b><i>SharedComponent</i></b> component.<br> Within a <i>SharedComponent Event</i> component, you can add and chain any type of <b>action</b> such as <i>CallSequence<i>, <i>CallFulSync<i> or <i>CustomAction<i> component.<br/>For more information: <a href='https://angular.io/guide/lifecycle-hooks' target='_blank'>Lifecycle hooks</a>   

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Event type | ComponentEvent | standard | Defines the event type.<br/>
Is active | boolean | standard | Defines whether the component is active.<br/>
