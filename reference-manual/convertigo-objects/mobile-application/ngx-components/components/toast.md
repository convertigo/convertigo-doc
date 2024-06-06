---
layout: page
title: Toast
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/components/toast/
metadesc: ion-toast   Defines a inline  Toast  component.   This component helps displaying some informations. A  Toast  is a subtle notification commonly used 
ObjGroup: Components
ObjCatName: components
ObjName: InlineToast
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/toastaction_32x32.png
topnav: topnavobj
---
ion-toast <br/>

##### Defines a inline <i>Toast</i> component. <br/>

 This component helps displaying some informations.<br/>
A <i>Toast</i> is a subtle notification commonly used in modern applications. It can be used to provide feedback about an operation or to display a system message.The toast appears on top of the applications content, and can be dismissed to resume user interaction with the application.<br/>
<i>Toast</i> is presented following an action on a trigger component.<br/>
For more information : <a href='https://ionicframework.com/docs/api/toast#inline-toasts-recommended'>Inline Toasts</a>.

Name | Description 
--- | ---
Animated | If true, the toast will animate
Animation (enter) | Animation to use when the toast is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | Animation to use when the toast is dismissed. ((baseEl: any, opts?: any) => Animation).
Buttons | An array of buttons for the toast.Type: (string ｜ ToastButton)[]
Color | Specifies ionic color.
Control id | The toast id.
Css classes | Additional classes for custom styles. Type: string | string[]
Duration | Defines the toast's duration in milliseconds.
Header | Defines the toast's header.
Icon | The name of the icon to display, or the path to a valid SVG file. See ion-icon: https://ionic.io/ionicons
Is open | If true, the toast will open. If false, the toast will close.<br/>Use this if you need finer grained control over presentation, otherwise just use the alertController or the trigger property.<br/>Note: isOpen will not automatically be set back to false when the toast dismisses. You will need to do that in your code.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented
Layout | Defines how the message and buttons are laid out in the toast.<br/>'baseline': The message and the buttons will appear on the same line. Message text may wrap within the message container.<br>'stacked': The buttons containers and message will stack on top of each other. Use this if you have long text in your buttons.
Message | Defines the toast's message.
Mode | Specifies ionic mode.
Position | Defines the toast's position.
Position anchor | The element to anchor the toast's position to.<br>Can be set as a direct reference or the ID of the element. Type: HTMLElement ｜ string<br/>With position='bottom', the toast will sit above the chosen element.<br>With position='top', the toast will sit below the chosen element.<br>With position='middle', the value of positionAnchor is ignored.
Swipe gesture | If set to 'vertical', the Toast can be dismissed with a swipe gesture.<br/>The swipe direction is determined by the value of the position property:<br> top: The Toast can be swiped up to dismiss.<br> bottom: The Toast can be swiped down to dismiss.<br> middle: The Toast can be swiped up or down to dismiss.<br>
Translucent | If true, the toast will be translucent. Only applies when the mode is 'ios' and the device supports backdrop-filter.
Trigger | An ID corresponding to the trigger element that causes the toast to open when clicked.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

