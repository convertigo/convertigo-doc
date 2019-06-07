---
layout: page
title: Loop Handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/control-components/loop-handler/
metadesc: Defines a  Loop Handler .   A  Loop Handler  must be added inside an  IterateAction . It helps defining actions to be executed for each loop.  Each ac
ObjGroup: Controls
ObjCatName: control-components
ObjName: UIActionLoopEvent
ObjClass: com.twinsoft.convertigo.beans.mobile.components.res.UIActionLoopEvent
ObjIcon: /images/beans/mobile/components/images/uiactionloopevent_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Loop Handler</i>. <br/>

 A <i>Loop Handler</i> must be added inside an <i>IterateAction</i>.</br>It helps defining actions to be executed for each loop.<br/>
 Each action can access the current loop index and item through the <code>index</code> and <code>item</code> parameters in TS mode. You can change the parameter names for more appropriate ones or to differentiate them in nested loops.

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Index parameter | Defines the parameter's name for index in loop. 
Is active | Defines whether the component is active. 
Item parameter | Defines the parameter's name for item in loop. 

