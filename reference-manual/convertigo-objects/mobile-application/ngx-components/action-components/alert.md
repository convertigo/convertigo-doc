---
layout: page
title: Alert
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/action-components/alert/
metadesc: Defines a controller  Alert  action component.   The Alerts are a great way to offer the user the ability to choose a specific action or list of actio
ObjGroup: Actions
ObjCatName: action-components
ObjName: AlertAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/alertaction_32x32.png
topnav: topnavobj
---
##### Defines a controller <i>Alert</i> action component. <br/>

 The Alerts are a great way to offer the user the ability to choose a specific action or list of actions.They also can provide the user with important information, or require them to make a decision.<br/>
<i>Alert</i> action component can be added under an <i>Event</i> or another action. Its returned value can be accessed by the navigation stack, using <code> parent.out </code> for example.<br/>
 For more information : <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/alert#controller-alerts'>Controller Alerts</a>.

Name | Description 
--- | ---
Animated | If true, the alert will animate
Animation (enter) | Animation to use when the alert is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | Animation to use when the alert is dismissed. ((baseEl: any, opts?: any) => Animation).
Css Classes | Additional classes for custom styles. Type: string | string[]
Css class 1 | A css class for button 1.
Css class 2 | A css class for button 2.
Css class 3 | A css class for button 3.
Enable backdrop dismiss | If true, the alert will be dismissed when the backdrop is clicked.
Header | Defines the alert's header.
Html Attributes | Additional attributes to pass to the alert. Type: { [key: string]: any }
Id | The alert id.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented
Message | Defines the alert's message.
Mode | Specifies ionic mode.
Return value 1 | A value to return for the button 1. Use an object in TS mode as value.
Return value 2 | A value to return for the button 2. Use an object in TS mode as value.
Return value 3 | A value to return for the button 3. Use an object in TS mode as value.
Role 1 | The button 1 role: not set or cancel.
Role 2 | The button 2 role: not set or cancel.
Role 3 | The button 3 role: not set or cancel.
Sub header | Defines the alert's sub header.
Text 1 | Text for the button 1.
Text 2 | Text for the button 2.
Text 3 | Text for the button 3.
Translucent | If true, the alert will be translucent. Only applies when the mode is 'ios' and the device supports backdrop-filter.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

