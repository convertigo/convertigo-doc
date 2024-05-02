---
layout: page
title: SharedAction
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/shared-action-components/sharedaction/
metadesc: Defines  SharedAction  component.   This component helps defining an entire action logic. It is shared between all your applications.  You can add a  
ObjGroup: Shared Actions
ObjCatName: shared-action-components
ObjName: UIActionStack
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UIActionStack
ObjIcon: /images/beans/ngx/components/dynamic/images/uiactionstack_color_32x32.png
topnav: topnavobj
---
##### Defines <i>SharedAction</i> component. <br/>

 This component helps defining an entire action logic. It is shared between all your applications.<br><br>You can add a <i>SharedAction</i> under an application and use it through an <i>Invoke SharedAction</i> from any application page.<br><br>You may add <i>SharedAction Variable</i>s to pass additional parameters to the executing function of the action.<br><br>To access a shared action <i>SharedAction Variable</i> from any child <i>Action</i> property or variable, use in script mode (TS) :<br> • <code>params.&lt;variable-name&gt;</code><br> • <code>stack['&lt;shared-action-name&gt;'].vars.in.&lt;variable-name&gt;</code><br/>
<br/>
<u>For more information</u>:<br>See <i>Invoke SharedAction</i> component<br>See <i>SharedAction Variable</i> component

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Is exposed | Defines whether the action is exposed for public use.  <br/>If exposed, an action can be invoked by any project. It will be visible in the Ngx palette and documented in the generated readme.md file.<br/>Otherwise, the action can only be invoked within its own project (through the <i>Shared action</i> picker only). It will not be visible in the Ngx palette, nor documented in the generated readme.md file.

