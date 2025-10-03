---
layout: page
title: PageEvent
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/control-components/pageevent/
metadesc: Defines a  PageEvent  component.    Page lifecycle events are fired during various stages of navigation     onCanEnter  Runs before the view can enter
ObjGroup: Controls
ObjCatName: control-components
ObjName: UIPageEvent
ObjClass: com.twinsoft.convertigo.beans.mobile.components.res.UIPageEvent
ObjIcon: /images/beans/mobile/components/images/uipageevent_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>PageEvent</i> component. <br/>

 <p>Page lifecycle events are fired during various stages of navigation:</p><ul><li><b>onCanEnter</b><br>Runs before the view can enter. This can be used as a sort of "guard" in authenticated views where you need to check permissions before the view can enter. You must resolve(boolean) from custom action to let enter in the page.</li><li><b>onCanLeave</b><br>Runs before the view can leave. This can be used as a sort of "guard" in authenticated views where you need to check permissions before the view can leave. You must resolve(boolean) from custom action to let leave the page.</li><li><b>onDidLoad</b><br>Runs when the page has loaded. This event only happens once per page being created. If a page leaves but is cached, then this event will not fire again on a subsequent viewing. The onDidLoad event is good place to put your setup code for the page</li><li><b>onWillEnter</b><br>Runs when the page is about to enter and become the active page</li><li><b>onDidEnter</b><br>Runs when the page has fully entered and is now the active page. This event will fire, whether it was the first load or a cached page</li><li><b>onWillLeave</b><br>Runs when the page is about to leave and no longer be the active page</li><li><b>onDidLeave</b><br>Runs when the page has finished leaving and is no longer the active page</li><li><b>onWillUnload</b><br>Runs when the page is about to be destroyed and have its elements removed</li></ul><p>You can add a <i>PageEvent</i> component under a <b><i>Page</i></b> or a <b><i>SharedComponent</i></b> component. <br> Within a <i>PageEvent</i> component, you can add and chain any type of <b>action</b> such as <i>CallSequence<i>, <i>CallFulSync<i> or <i>CustomAction<i> component.</p><p>For more information: <a href='https://ionicframework.com/docs/v3/api/navigation/ViewController/' target='_blank'>ViewController</a></p>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Event type | Defines the event type.
Is active | Defines whether the component is active.

