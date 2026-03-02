---
layout: page
title: PageEvent
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/pageevent/
metadesc: Defines a  PageEvent  component.    Page lifecycle events are fired during various stages of navigation     onCanEnter  Deprecated - See  AppGuard   o
ObjGroup: Controls
ObjCatName: control-components
ObjName: UIPageEvent
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UIPageEvent
ObjIcon: /images/beans/ngx/components/dynamic/images/uipageevent_32x32.png
topnav: topnavobj
---
##### Defines a <i>PageEvent</i> component. <br/>

 <p>Page lifecycle events are fired during various stages of navigation:</p><ul><li><b>onCanEnter</b><br>Deprecated - See <i>AppGuard</i> <b>onCanActivate</b>.</li><li><b>onCanLeave</b><br>Deprecated - See <i>AppGuard</i> <b>onCanDeactivate</b>.</li><li><b>pageWillLoad</b><br>Runs when the page has initialized. This event only happens once per page being created.</li><li><b>pageDidLoad</b><br>Runs when the page has loaded. This event only happens once per page being created. If a page leaves but is cached, then this event will not fire again on a subsequent viewing. The onDidLoad event is good place to put your setup code for the page</li><li><b>pageWillEnter</b><br>Runs when the page is about to enter and become the active page</li><li><b>pageDidEnter</b><br>Runs when the page has fully entered and is now the active page. This event will fire, whether it was the first load or a cached page</li><li><b>pageWillLeave</b><br>Runs when the page is about to leave and no longer be the active page</li><li><b>pageDidLeave</b><br>Runs when the page has finished leaving and is no longer the active page</li><li><b>pageWillUnload</b><br>Runs when the page is about to be destroyed and have its elements removed</li></ul><p>You can add a <i>PageEvent</i> component under a <b><i>Page</i></b> or a <b><i>SharedComponent</i></b> component. <br> Within a <i>PageEvent</i> component, you can add and chain any type of <b>action</b> such as <i>CallSequence<i>, <i>CallFulSync<i> or <i>CustomAction<i> component.</p><p>For more information: <a href='https://ionicframework.com/docs/angular/lifecycle#ionic-page-events' target='_blank'>Ionic Page Events</a></p>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Event type | Defines the event type.
Is active | Defines whether the component is active.

