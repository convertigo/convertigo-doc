---
layout: page
title: SharedComponent Event
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/sharedcomponent-event/
metadesc: Defines a  SharedComponent Event  component.    A component instance has a lifecycle that starts when Angular instantiates the component class and ren
ObjGroup: Controls
ObjCatName: control-components
ObjName: UISharedComponentEvent
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UISharedComponentEvent
ObjIcon: /images/beans/ngx/components/dynamic/images/uisharedcomponentevent_32x32.png
topnav: topnavobj
---
##### Defines a <i>SharedComponent Event</i> component. <br/>

 <p>A component instance has a lifecycle that starts when Angular instantiates the component class and renders the component view along with its child views. The lifecycle continues with change detection, as Angular checks to see when data-bound properties change, and updates both the view and the component instance as needed. The lifecycle ends when Angular destroys the component instance and removes its rendered template from the DOM:</p><ul><li><b>compChanges</b><br>Runs when Angular sets or resets data-bound input properties.</li><li><b>compInit</b><br>Runs when Angular initializes the component.</li><li><b>compDoCheck</b><br>Detect and act upon changes that Angular can't or won't detect on its own</li><li><b>compAfterContentInit</b><br>Runs after Angular projects external content into the component's view</li><li><b>compAfterContentChecked</b><br>Runs after Angular checks the content projected into the component</li><li><b>compAfterViewInit</b><br>Runs after Angular initializes the component's views and child views</li><li><b>compAfterViewChecked</b><br>Runs after Angular checks the component's views and child views</li><li><b>compDestroy</b><br>Runs just before Angular destroys the component</li></ul><p>You can add a <i>SharedComponent Event</i> component under a <b><i>SharedComponent</i></b> component. <br> Within a <i>SharedComponent Event</i> component, you can add and chain any type of <b>action</b> such as <i>CallSequence<i>, <i>CallFulSync<i> or <i>CustomAction<i> component.</p><p>For more information: <a href='https://angular.io/guide/lifecycle-hooks' target='_blank'>Lifecycle hooks</a></p>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Event type | Defines the event type.
Is active | Defines whether the component is active.

