---
layout: page
title: Failure Handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/failure-handler/
metadesc: Defines an action  Failure Handler  component.    Failure handlers can be used to handle possible Action failures such as network errors when calling 
ObjGroup: Controls
ObjCatName: control-components
ObjName: UIActionFailureEvent
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UIActionFailureEvent
ObjIcon: /images/beans/ngx/components/dynamic/images/uiactionfailureevent_32x32.png
topnav: topnavobj
---
##### Defines an action <i>Failure Handler</i> component. <br/>

 <p>Failure handlers can be used to handle possible Action failures such as network errors when calling a Sequence. To use a <i>Failure Handler</i>, place it immediately under a given Action. In case of failure of this action, all actions placed under the <i>Failure Handler</i> will be executed. For example, you can use there a <i>Toast</i> action to display an error message</p><p><i>Failure Handler</i> will generate an <i>out</i> error object containing a message property holding the error message. For example, you can use the out.message in (TS) mode in a <i>Toast</i> action to display the error message.</p><p>By default, Handling failures will not prevent Actions under the failed Action from being executed. If you want to cancel any other action execution, place an <i>Error</i> action in the <i>Failure Handler</i> action chain.</p>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.

