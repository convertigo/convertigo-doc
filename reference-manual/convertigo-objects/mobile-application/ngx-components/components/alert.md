---
layout: page
title: Alert
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/components/alert/
metadesc: ion-alert   Defines an inline  Alert  component. Alerts are dialogs that presents users with information or collects information from the user using i
ObjGroup: Components
ObjCatName: components
ObjName: InlineAlert
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/alertaction_32x32.png
topnav: topnavobj
---
ion-alert <br/>

##### Defines an inline <i>Alert</i> component.<br/>
Alerts are dialogs that presents users with information or collects information from the user using inputs.<br/>
The <i>Alert</i> is presented following an action on a trigger component.<br/>
 For more information : <a href='https://ionicframework.com/docs/api/alert#inline-alerts-recommended'>Inline Alerts</a>.

Name | Description 
--- | ---
Alert buttons | (TS mode) Array of buttons to be added to the alert. Type: (string ｜ AlertButton)[]<br/> See: https://ionicframework.com/docs/api/alert#alertbutton
Alert inputs | (TS mode) Array of input to show in the alert. Type: AlertInput[]<br/> See: https://ionicframework.com/docs/api/alert#alertinput
Animated | If true, the alert will animate.
Animation (enter) | (TS mode) Animation to use when the alert is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | (TS mode) Animation to use when the alert is dismissed. ((baseEl: any, opts?: any) => Animation).
Backdrop dismiss | If true, the alert will be dismissed when the backdrop is clicked.
Control id | The alert id.
Css Classes | Additional classes for custom styles. Type: string | string[]
Header | The main title in the heading of the alert.
Is open | If true, the alert will open. If false, the alert will close.<br/>Use this if you need finer grained control over presentation, otherwise just use the alertController or the trigger property.<br/>Note: isOpen will not automatically be set back to false when the alert dismisses. You will need to do that in your code.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented.
Message | The main message to be displayed in the alert.<br/>Message can accept either plaintext or HTML as a string.<br>To display characters normally reserved for HTML, they must be escaped, for example <Ionic> would become <code>&lt;Ionic&gt;</code>
Mode | Specifies ionic mode.
Subheader | The subtitle in the heading of the alert. Displayed under the title.
Translucent | If true, the alert will be translucent. Only applies when the mode is 'ios' and the device supports backdrop-filter.
Trigger | An ID corresponding to the trigger element that causes the alert to open.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

