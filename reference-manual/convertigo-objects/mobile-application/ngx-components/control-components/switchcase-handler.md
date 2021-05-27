---
layout: page
title: SwitchCase Handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/switchcase-handler/
metadesc: Defines a  SwitchCase Handler .   A  SwitchCase Handler  must be added inside a  SwitchAction . It helps defining actions to be executed for a given c
ObjGroup: Mobile Application
ObjCatName: control-components
ObjName: SwitchCase Handler
ObjClass: com.twinsoft.convertigo.beans.ngx.components.UIActionCaseEvent
ObjIcon: /images/beans/core/images/default_color_16x16.png
topnav: topnavobj
---
##### Defines a <i>SwitchCase Handler</i>. 

A <i>SwitchCase Handler</i> must be added inside a <i>SwitchAction</i>.<br/>It helps defining actions to be executed for a given case constant value.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Case value | JS expression | standard | Defines the case's value.<br/>
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the component is active.<br/>
Passthrough | boolean | standard | Specifies whether case should continue with next sibling ones until passthrough is false.<br/>
