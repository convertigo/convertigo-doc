---
layout: page
title: PageEvent
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/pageevent/
metadesc: Defines a  PageEvent  component.   Page lifecycle events are fired during various stages of navigation   •  onCanEnter  Deprecated - See  AppGuard   o
ObjGroup: Controls
ObjCatName: control-components
ObjName: UIPageEvent
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UIPageEvent
ObjIcon: /images/beans/ngx/components/dynamic/images/uipageevent_32x32.png
topnav: topnavobj
---
##### Defines a <i>PageEvent</i> component. <br/>

 Page lifecycle events are fired during various stages of navigation:<br/>
 • <b>onCanEnter</b><br>Deprecated - See <i>AppGuard</i> <b>onCanActivate</b>.<br/>
 • <b>onCanLeave</b><br>Deprecated - See <i>AppGuard</i> <b>onCanDeactivate</b>.<br/>
 • <b>pageWillLoad</b><br>Runs when the page has initialized. This event only happens once per page being created.<br/>
 • <b>pageDidLoad</b><br>Runs when the page has loaded. This event only happens once per page being created. If a page leaves but is cached, then this event will not fire again on a subsequent viewing. The onDidLoad event is good place to put your setup code for the page<br/>
 • <b>pageWillEnter</b><br>Runs when the page is about to enter and become the active page<br/>
 • <b>pageDidEnter</b><br>Runs when the page has fully entered and is now the active page. This event will fire, whether it was the first load or a cached page<br/>
 • <b>pageWillLeave</b><br>Runs when the page is about to leave and no longer be the active page<br/>
 • <b>pageDidLeave</b><br>Runs when the page has finished leaving and is no longer the active page<br/>
 • <b>pageWillUnload</b><br>Runs when the page is about to be destroyed and have its elements removed<br/>
 You can add a <i>PageEvent</i> component under a <b><i>Page</i></b> or a <b><i>SharedComponent</i></b> component.<br> Within a <i>PageEvent</i> component, you can add and chain any type of <b>action</b> such as <i>CallSequence<i>, <i>CallFulSync<i> or <i>CustomAction<i> component.<br/>
For more information: <a href='https://ionicframework.com/docs/angular/lifecycle#ionic-page-events' target='_blank'>Ionic Page Events</a>   

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Event type | Defines the event type.  
Is active | Defines whether the component is active. 

