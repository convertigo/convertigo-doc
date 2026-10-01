---
layout: page
title: Show Loading
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/action-components/show-loading/
metadesc: Defines a  Show Loading  action component.   An overlay that can be used to indicate activity. Once presented, the loading indicator will automaticall
ObjGroup: Actions
ObjCatName: action-components
ObjName: ShowLoadingAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/showloadingaction_32x32.png
topnav: topnavobj
---
##### Defines a <i>Show Loading</i> action component. <br/>

 An overlay that can be used to indicate activity.<br/>
Once presented, the loading indicator will automatically dismiss after a <code>duration</code> of 3s by default.<br>If the <i>Duration</i> property is set to <code>false</code>, the loading will display indefinitely until dismissed by a <i>Close Loading</i> action or a backdrop click.<br/>
Place a <i>Show Loading</i> action at the very beginning of an action chain, under an <i>Event</i> or <i>Shared action</i>.<br>Place a <i>Close Loading</i> action under a <i>Finally handler</i>.<br/>
For more information : <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/loading#controller'>Controller</a>

Name | Description 
--- | ---
Animated | If true, the loading will animate
Animation (enter) | Animation to use when the loading is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | Animation to use when the loading is dismissed. ((baseEl: any, opts?: any) => Animation).
Css classes | Additional classes for custom styles. Type: string ｜ string[]
Duration | Number of milliseconds to wait before dismissing the loading indicator.
Enable backdrop dismiss | If true, the loading indicator will be dismissed when the backdrop is clicked.
Html Attributes | Additional attributes to pass to the toast. Type: { [key: string]: any }
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented
Message | Optional text content to display in the loading indicator.
Mode | Specifies ionic mode.
Show Backdrop | If true, a backdrop will be displayed behind the loading indicator.
Spinner | The name of the spinner to display.
Translucent | If true, the loading will be translucent. Only applies when the mode is 'ios' and the device supports backdrop-filter.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

