---
layout: page
title: Popover Page
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/action-components/popover-page/
metadesc: Displays a Popover Page.   The Popover is a view that floats above an app's content. Popovers provide an easy way to present or gather information fro
ObjGroup: Actions
ObjCatName: action-components
ObjName: PopoverAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/popoveraction_32x32.png
topnav: topnavobj
---
Displays a Popover Page. <br/>

 The Popover is a view that floats above an app's content. Popovers provide an easy way to present or gather information from the user and are commonly used in the following situations:<br/>
 • Show more info about the current view<br/>
 • Select a commonly used tool or configuration<br/>
 • Present a list of actions to perform inside one of your views.<br/>
<br/>
You can use the <i>Close Popover</i> action to dismiss a Popover.

Name | Description 
--- | ---
Alignment | Describes how to align the popover content with the reference point. Defaults to 'center' for ios mode, and 'start' for md mode.
Animated | If true, the popover will animate
Animation (enter) | Animation to use when the popover is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | Animation to use when the popover is dismissed. ((baseEl: any, opts?: any) => Animation).
Arrow | If true, the popover will display an arrow that points at the reference when running in ios mode. Does not apply in md mode.
Css Classes | Additional classes for custom styles. Type: string | string[]
Dismiss on select | f true, the popover will be automatically dismissed when the content has been clicked.
Enable Backdrop Dismiss | If true, tapping on the back drop will dismiss the page.
Html Attributes | Additional attributes to pass to the modal. Type: { [key: string]: any }
Id | The popover id.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented
Mode | Specifies ionic mode.
Page | The page to be displayed as a Popover.
Page data | Additional page data Object (be sure to use an object not a string) passed to the modal page. You can access this data in the modal page by using a (TS) expression <code>this.navParams.data</code>.
Reference | Describes what to position the popover relative to.If 'trigger', the popover will be positioned relative to the trigger button. If passing in an event, this is determined via event.target.If 'event', the popover will be positioned relative to the x/y coordinates of the trigger action. If passing in an event, this is determined via event.clientX and event.clientY.
Show Backdrop | If true, a backdrop will be displayed behind the popover.
Side | Describes which side of the reference point to position the popover on. The 'start' and 'end' values are RTL-aware, and the 'left' and 'right' values are not.
Size | Describes how to calculate the popover width. If 'cover', the popover width will match the width of the trigger. If 'auto', the popover width will be set to a static default value.
Translucent | If true, the popover will be translucent. Only applies when the mode is 'ios' and the device supports backdrop-filter.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.

