---
layout: page
title: Failure Handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/control-components/failure-handler/
metadesc: Defines an action  Failure Handler  component.   Failure handlers can be used to handle possible Action failures such as network errors when calling a
ObjGroup: Mobile Application
ObjCatName: control-components
ObjName: Failure Handler
ObjClass: com.twinsoft.convertigo.beans.mobile.components.UIActionFailureEvent
ObjIcon: /images/beans/mobile/components/images/uiactionfailureevent_color_32x32.png
topnav: topnavobj
---
##### Defines an action <i>Failure Handler</i> component. 

Failure handlers can be used to handle possible Action failures such as network errors when calling a Sequence. To use a <i>Failure Handler</i>, place it immediately under a given Action. In case of failure of this action, all actions placed under the <i>Failure Handler</i> will be executed.For example, you can use there a <i>Toast</i> action to display an error message<br /><br /><i>Failure Handler</i> will generate an <i>out</i> error object containing a message property holding the error message. For example, you can use the out.message in (TS) mode in a <i>Toast</i> action to display the error message. <br/><br/>By default, Handling failures will not prevent Actions under the failed Action from being executed. If you want to cancel any other action execution, place an <i>Error</i> action in the <i>Failure Handler</i> action chain.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the component is active.<br/>
