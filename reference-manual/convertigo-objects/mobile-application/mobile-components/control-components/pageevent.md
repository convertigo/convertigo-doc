---
layout: page
title: PageEvent
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/control-components/pageevent/
metadesc: Defines a  PageEvent  component.   Page lifecycle events are fired during various stages of navigation   •  onCanEnter  Runs before the view can enter
ObjGroup: Mobile Application
ObjCatName: control-components
ObjName: PageEvent
ObjClass: com.twinsoft.convertigo.beans.mobile.components.UIPageEvent
ObjIcon: /images/beans/mobile/components/images/uipageevent_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>PageEvent</i> component. 

Page lifecycle events are fired during various stages of navigation:<br/> • <b>onCanEnter</b><br>Runs before the view can enter. This can be used as a sort of "guard" in authenticated views where you need to check permissions before the view can enter. You must resolve(boolean) from custom action to let enter in the page.<br/> • <b>onCanLeave</b><br>Runs before the view can leave. This can be used as a sort of "guard" in authenticated views where you need to check permissions before the view can leave. You must resolve(boolean) from custom action to let leave the page.<br/> • <b>onDidLoad</b><br>Runs when the page has loaded. This event only happens once per page being created. If a page leaves but is cached, then this event will not fire again on a subsequent viewing. The onDidLoad event is good place to put your setup code for the page<br/> • <b>onWillEnter</b><br>Runs when the page is about to enter and become the active page<br/> • <b>onDidEnter</b><br>Runs when the page has fully entered and is now the active page. This event will fire, whether it was the first load or a cached page<br/> • <b>onWillLeave</b><br>Runs when the page is about to leave and no longer be the active page<br/> • <b>onDidLeave</b><br>Runs when the page has finished leaving and is no longer the active page<br/> • <b>onWillUnload</b><br>Runs when the page is about to be destroyed and have its elements removed<br/> You can add a <i>PageEvent</i> component under a <b><i>Page</i></b> or a <b><i>SharedComponent</i></b> component.<br> Within a <i>PageEvent</i> component, you can add and chain any type of <b>action</b> such as <i>CallSequence<i>, <i>CallFulSync<i> or <i>CustomAction<i> component.<br/>For more information: <a href='https://ionicframework.com/docs/v3/api/navigation/ViewController/' target='_blank'>ViewController</a>   

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Event type | ViewEvent | standard | Defines the event type.<br/>
Is active | boolean | standard | Defines whether the component is active.<br/>
