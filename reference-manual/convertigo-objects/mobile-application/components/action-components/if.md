---
layout: page
title: If
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/action-components/if/
metadesc: Defines an  If  action component.   This component helps handling decisions to control the actions workflow. It tests the result of the given  conditi
ObjGroup: Actions
ObjCatName: action-components
ObjName: IfAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/ifaction_color_32x32.png
topnav: topnavobj
---
##### Defines an <i>If</i> action component. 
 This component helps handling decisions to control the actions workflow.
It tests the result of the given <i>condition</i> property. You can use the <code>out</code> expression in the <i>condition</i>, where <code>out</code> holds the parent action returned data. If the <i>condition</i> is verified, it will execute the next action underneath.

You can use the <i>Negate</i> property to test the reverse condition. This is useful for an 'if then else' type of flow. For example :

<ul><li>if mycondition</li><li>&nbsp;&nbsp;&nbsp;&nbsp;Do some stuff</li><li>if not mycondition</li><li>&nbsp;&nbsp;&nbsp;&nbsp;Do some other stuff</li></ul>

Name | Description 
--- | ---
Condition | The expression to be tested.
Negate | Negate the condition, useful for 'else' conditions.

