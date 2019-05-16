---
layout: page
title: PageEvent
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/control-components/pageevent/
metadesc: Defines a  PageEvent  component.   Page lifecycle events are fired during various stages of navigation  •  onCanEnter  Runs before the view can enter.
ObjGroup: Controls
ObjCatName: control-components
ObjName: UIPageEvent
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$3
ObjIcon: /images/beans/mobile/components/images/uipageevent_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>PageEvent</i> component. 
 Page lifecycle events are fired during various stages of navigation:
• <b>onCanEnter</b></br>Runs before the view can enter. This can be used as a sort of "guard" in authenticated views where you need to check permissions before the view can enter. You must resolve(boolean) from custom action to let enter in the page. 
• <b>onCanLeave</b></br>Runs before the view can leave. This can be used as a sort of "guard" in authenticated views where you need to check permissions before the view can leave. You must resolve(boolean) from custom action to let leave the page. 
• <b>onDidLoad</b></br>Runs when the page has loaded. This event only happens once per page being created. If a page leaves but is cached, then this event will not fire again on a subsequent viewing. The onDidLoad event is good place to put your setup code for the page 
• <b>onWillEnter</b></br>Runs when the page is about to enter and become the active page 
• <b>onDidEnter</b></br>Runs when the page has fully entered and is now the active page. This event will fire, whether it was the first load or a cached page 
• <b>onWillLeave</b></br>Runs when the page is about to leave and no longer be the active page 
• <b>onDidLeave</b></br>Runs when the page has finished leaving and is no longer the active page 
• <b>onWillUnload</b></br>Runs when the page is about to be destroyed and have its elements removed 

 You can add and chain in a <i>PageEvent</i> component any type of <b>action</b> such as <i>CallSequence<i>, <i>CallFulSync<i> or <i>CustomAction<i> component.
For more information: <a href='https://ionicframework.com/docs/v3/api/navigation/ViewController/' target='_blank'>ViewController</a>   

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Event type | Defines the event type.  
Is active | Defines whether the component is active. 

