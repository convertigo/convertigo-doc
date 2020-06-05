---
layout: page
title: Animation
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/custom-components/animation/
metadesc: Defines an  Animation  class for a component.   Adding an animation to a component will have this component animated automatically as soon as the comp
ObjGroup: Mobile Application
ObjCatName: custom-components
ObjName: Animation
ObjClass: com.twinsoft.convertigo.beans.mobile.components.UIAnimation
ObjIcon: /images/beans/mobile/components/images/uianimation_color_32x32.png
topnav: topnavobj
---
##### Defines an <i>Animation</i> class for a component. 

Adding an animation to a component will have this component animated automatically as soon as the component appears on the page. You can choose the animation name, and some other properties to control the animation.<br /><br />If you want the animation to be triggered by an event such as (tap) (click) or PageEvents, use instead the <b>Animate action</b>   

Property | Type | Category | Description
--- | --- | --- | ---
Animation Name | String | standard | Defines the animation class name.<br/>This can be any of the animations defined by the animate.css package. See <br /><br /><a href="https://daneden.github.io/animate.css/">https://daneden.github.io/animate.css</a>
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the component is active.<br/>
Is infinite | boolean | standard | Defines whether the animation loops infinitely.<br/>
