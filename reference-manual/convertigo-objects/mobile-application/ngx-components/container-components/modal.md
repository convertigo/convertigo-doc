---
layout: page
title: Modal
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/container-components/modal/
metadesc: ion-modal   A  Modal  is a dialog that appears on top of the current page. You may use it to show any simple or complex component such as  Shared comp
ObjGroup: Containers
ObjCatName: container-components
ObjName: InlineModal
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/modalaction_32x32.png
topnav: topnavobj
---
ion-modal <br/>

 A <i>Modal</i> is a dialog that appears on top of the current page.<br/>
You may use it to show any simple or complex component such as <i>Shared component</i>.<br/>
To do so:<br/>
 • first add a trigger component (button, item,...) for opening the modal and add to it an <b>id</b> <i>Attr</i><br/>
 • then add a <i>Modal</i> component and set its <b>trigger</b> property with the previous <b>id</b><br/>
 • finally add any component you'd like to show, under the <i>Modal</i> component.<br/>
You can use the <i>Close Modal</i> action to dismiss a Modal. For more information: <a href='https://ionicframework.com/docs/api/modal'>Modal</a>.

Name | Description 
--- | ---
Animated | If true, the modal will animate.
Animation (enter) | (TS mode) Animation to use when the modal is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | (TS mode) Animation to use when the modal is dismissed. ((baseEl: any, opts?: any) => Animation).
Backdrop dismiss | If true, the modal will be dismissed when the backdrop is clicked.
Can dismiss | Determines whether or not a modal can dismiss when calling the dismiss method.If the value is true or the value's function returns true, the modal will close when trying to dismiss.If the value is false or the value's function returns false, the modal will not close when trying to dismiss.See https://ionicframework.com/docs/troubleshooting/runtime#accessing-this if you need to access this from within the callback.Type: ((data?: any, role?: string ｜ undefined) => Promise<boolean>) ｜ boolean
Control id | The modal id.
Is open | If true, the modal will open. If false, the modal will close. Use this if you need finer grained control over presentation, otherwise just use the modalController or the trigger property. Note: isOpen will not automatically be set back to false when the modal dismisses. You will need to do that in your code.
Keep contents mounted | If true, the component passed into ion-modal will automatically be mounted when the modal is created. The component will remain mounted even when the modal is dismissed. However, the component will be destroyed when the modal is destroyed. This property is not reactive and should only be used when initially creating a modal.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented.
Mode | Specifies ionic mode.
Presenting card element | (TS mode) The HTML element that presented the modal. This is used for card presentation effects and for stacking multiple modals on top of each other. Only applies in iOS mode.
Sheet backdrop breakpoint | A decimal value between 0 and 1 that indicates the point after which the backdrop will begin to fade in when using a sheet modal. Prior to this point, the backdrop will be hidden and the content underneath the sheet can be interacted with. This value is exclusive meaning the backdrop will become active after the value specified.
Sheet breakpoints | (TS mode) The breakpoints to use when creating a sheet modal. Each value in the array must be a decimal between 0 and 1 where 0 indicates the modal is fully closed and 1 indicates the modal is fully open. Values are relative to the height of the modal, not the height of the screen. One of the values in this array must be the value of the initialBreakpoint property. For example: [0, .25, .5, 1]
Sheet handle | The horizontal line that displays at the top of a sheet modal. It is true by default when setting the breakpoints and initialBreakpoint properties.
Sheet handle behavior | The interaction behavior for the sheet modal when the handle is pressed.
Sheet initial breakpoint | A decimal value between 0 and 1 that indicates the initial point the modal will open at when creating a sheet modal. This value must also be listed in the breakpoints array.
Show backdrop | If true, a backdrop will be displayed behind the modal.
Trigger | An ID corresponding to the trigger element that causes the modal to open.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

