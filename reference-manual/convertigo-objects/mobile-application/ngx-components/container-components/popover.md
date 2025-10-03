---
layout: page
title: Popover
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/container-components/popover/
metadesc: ion-popover   A  Popover  is a dialog that appears on top of the current page. You may use it to show any simple or complex component such as  Shared 
ObjGroup: Containers
ObjCatName: container-components
ObjName: InlinePopover
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/popover_32x32.png
topnav: topnavobj
---
ion-popover <br/>

 A <i>Popover</i> is a dialog that appears on top of the current page.<br/>
You may use it to show any simple or complex component such as <i>Shared component</i>.<br/>
To do so:<br/>
 • first add a trigger component (button, item,...) for opening the popover and add to it an <b>id</b> <i>Attr</i><br/>
 • then add a <i>Popover</i> component and set its <b>trigger</b> property with the previous <b>id</b><br/>
 • finally add any component you'd like to show, under the <i>Popover</i> component<br/>
You can use the <i>Close Popover</i> action to dismiss a Popover. For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/popover'>Popover</a>.

Name | Description 
--- | ---
Alignment | Describes how to align the popover content with the reference point.
Animated | If true, the popover will animate.
Animation (enter) | Animation to use when the popover is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | Animation to use when the popover is dismissed. ((baseEl: any, opts?: any) => Animation).
Animation event | The event to pass to the popover animation.
Arrow | If true, the popover will display an arrow that points at the reference when running in ios mode on mobile. Does not apply in md mode or on desktop.
Backdrop dismiss | If true, the popover will be dismissed when the backdrop is clicked.
Control id | The popover id.
Dismiss on select | If true, the popover will be automatically dismissed when the content has been clicked.
Is open | If true, the popover will open. If false, the popover will close. Use this if you need finer grained control over presentation, otherwise just use the popoverController or the trigger property. Note: isOpen will not automatically be set back to false when the popover dismisses. You will need to do that in your code.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented.
Keyboard close | If true, the component passed into ion-popover will automatically be mounted when the popover is created. The component will remain mounted even when the popover is dismissed. However, the component will be destroyed when the popover is destroyed. This property is not reactive and should only be used when initially creating a popover.
Mode | Specifies ionic mode.
Reference | Describes what to position the popover relative to. If 'trigger', the popover will be positioned relative to the trigger button. If passing in an event, this is determined via event.target. If 'event', the popover will be positioned relative to the x/y coordinates of the trigger action. If passing in an event, this is determined via event.clientX and event.clientY.
Show backdrop | If true, a backdrop will be displayed behind the popover.
Side | Describes which side of the reference point to position the popover on. The 'start' and 'end' values are RTL-aware, and the 'left' and 'right' values are not.
Size | Describes how to calculate the popover width. If 'cover', the popover width will match the width of the trigger. If 'auto', the popover width will be determined by the content in the popover.
Translucent | If true, the popover will be translucent. Only applies when the mode is 'ios' and the device supports backdrop-filter.
Trigger | An ID corresponding to the trigger element that causes the popover to open. Use the trigger-action property to customize the interaction that results in the popover opening.
Trigger action | Describes what kind of interaction with the trigger that should cause the popover to open. Does not apply when the trigger property is undefined. If 'click', the popover will be presented when the trigger is left clicked. If 'hover', the popover will be presented when a pointer hovers over the trigger. If 'context-menu', the popover will be presented when the trigger is right clicked on desktop and long pressed on mobile. This will also prevent your device's normal context menu from appearing.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Identifier | Defines the component identifier.
Is active | Defines whether the component is active.

