---
layout: page
title: SharedAction
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/shared-action-components/sharedaction/
metadesc: Defines  SharedAction  component.   This component helps defining an entire action logic. It is shared between all your applications. You can add a  S
ObjGroup: Shared Actions
ObjCatName: shared-action-components
ObjName: UIActionStack
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$3
ObjIcon: /images/beans/mobile/components/images/uiactionstack_color_32x32.png
topnav: topnavobj
---
##### Defines <i>SharedAction</i> component. 
 This component helps defining an entire action logic. It is shared between all your applications.
You can add a <i>SharedAction</i> under an application and use it through an <i>Invoke SharedAction</i> from any application page.
You may add <i>SharedAction Variable</i>s to pass additional parameters to the executing function of the action.
To access a shared action <i>SharedAction Variable</i> from any child <i>Action</i> property or variable, use in script mode (TS) :
 - <code>params.&lt;variable-name&gt;</code>
 - <code>stack['&lt;shared-action-name&gt;'].vars.in.&lt;variable-name&gt;</code>

<u>For more information</u>:
See <i>Invoke SharedAction</i> component
See <i>SharedAction Variable</i> component

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

