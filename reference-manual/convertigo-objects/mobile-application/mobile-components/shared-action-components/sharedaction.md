---
layout: page
title: SharedAction
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/shared-action-components/sharedaction/
metadesc: Defines  SharedAction  component.    This component helps defining an entire action logic. It is shared between all your applications.   You can add a
ObjGroup: Shared Actions
ObjCatName: shared-action-components
ObjName: UIActionStack
ObjClass: com.twinsoft.convertigo.beans.mobile.components.res.UIActionStack
ObjIcon: /images/beans/mobile/components/images/uiactionstack_color_32x32.png
topnav: topnavobj
---
##### Defines <i>SharedAction</i> component. <br/>

 <p>This component helps defining an entire action logic. It is shared between all your applications. <br><br>You can add a <i>SharedAction</i> under an application and use it through an <i>Invoke SharedAction</i> from any application page. <br><br>You may add <i>SharedAction Variable</i>s to pass additional parameters to the executing function of the action. <br><br>To access a shared action <i>SharedAction Variable</i> from any child <i>Action</i> property or variable, use in script mode (TS) : <br> • <code>params.&lt;variable-name&gt;</code> <br> • <code>stack['&lt;shared-action-name&gt;'].in.vars.&lt;variable-name&gt;</code></p><p><u>For more information</u>: <br>See <i>Invoke SharedAction</i> component <br>See <i>SharedAction Variable</i> component</p>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.

