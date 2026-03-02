---
layout: page
title: Toast
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/action-components/toast/
metadesc: Defines a  Toast  action component.   This component helps displaying some informations. A  Toast  is a subtle notification commonly used in modern ap
ObjGroup: Actions
ObjCatName: action-components
ObjName: ToastAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/toastaction_32x32.png
topnav: topnavobj
---
##### Defines a <i>Toast</i> action component. <br/>

 This component helps displaying some informations.<br/>
A <i>Toast</i> is a subtle notification commonly used in modern applications. It can be used to provide feedback about an operation or to display a system message. The toast appears on top of the applications content, and can be dismissed to resume user interaction with the application.<br/>
<i>Toast</i> action component can be added under an <i>Event</i> or another action.<br/>
For more information : <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/toast#controller-toasts'>Controller Toasts</a>.

Name | Description 
--- | ---
Animated | If true, the toast will animate
Animation (enter) | Animation to use when the toast is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | Animation to use when the toast is dismissed. ((baseEl: any, opts?: any) => Animation).
Close button text | Text to display in the close button.
Color | Specifies ionic color.
Css classes | Additional classes for custom styles. Type: string | string[]
Duration | Defines the toast's duration in milliseconds.
Header | Defines the toast's header.
Html Attributes | Additional attributes to pass to the toast. Type: { [key: string]: any }
Icon | The name of the icon to display, or the path to a valid SVG file. See ion-icon: https://ionic.io/ionicons
Id | The toast id.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented
Message | Defines the toast's message.
Mode | Specifies ionic mode.
Position | Defines the toast's position.
Show close button | Whether or not to show a button to close the toast.
Translucent | If true, the toast will be translucent. Only applies when the mode is 'ios' and the device supports backdrop-filter.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.

