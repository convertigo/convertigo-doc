---
layout: page
title: Animate
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/action-components/animate/
metadesc: Defines an  Animate  action component.   You can use the  Animate  action to animate a component when an event occurs. To do this, just place the acti
ObjGroup: Actions
ObjCatName: action-components
ObjName: AnimateAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/animateaction_color_32x32.png
topnav: topnavobj
---
##### Defines an <i>Animate</i> action component. 
 You can use the <i>Animate</i> action to animate a component when an event occurs. To do this, just place the action under the event. It can be a (click) or (tap) event or even a Page didEnter event. The animation will take place when the event is triggered. <br /><ul><li><i>Animatable</i> <br />View the elements with an <b>Identifier</b> property set. Select here one element Identifier to animate.</li><li><i>Apply mode</i> <br />Animate only the selected element (single) or all elements (all) with the same <b>Identifier</b> value.</li></ul> <br />You can also chain animations to animate in parrallel (Sibling <i>Animate</i> actions) or serial (Child <i>Animate actions</i>). <br /><br />Animations are based on the <a href='https://daneden.github.io/animate.css/' target='_blank'>animate.css</a> package

Name | Description 
--- | ---
Animation name | Specify the animation name see <a href='https://daneden.github.io/animate.css/' target='_blank'>animate.css</a>
Delay | Specify the animation delay in ms
Direction | Specify the animation direction
Duration | Specify the animation duration in ms. If not specified, duration is 0ms by default which means no animation will run.
Fill mode | Specify the animation fill mode
Iteration count | Specify the animation iteration count or infinite
Play state | Specify the animation play state
Timing function | Specify the animation timing function
Animatable | Defines the component to animate. 
Apply mode | Defines whether the animation apply on a single component or on all components. 
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

