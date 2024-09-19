---
layout: page
title: Action Sheet
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/action-components/action-sheet/
metadesc: Defines an  Action Sheet  component.   An Action Sheet is a dialog that displays a set of options. It appears on top of the app's content, and must be
ObjGroup: Actions
ObjCatName: action-components
ObjName: IonicActionSheetAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/actionsheetaction_32x32.png
topnav: topnavobj
---
##### Defines an <i>Action Sheet</i> component. <br/>

 An Action Sheet is a dialog that displays a set of options. It appears on top of the app's content, and must be manually dismissed by the user before they can resume interaction with the app.<br/>
 For more information : <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/action-sheet'>Action sheet</a>.

Name | Description 
--- | ---
Animated | If true, the sheet will animate
Animation (enter) | Animation to use when the sheet is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | Animation to use when the sheet is dismissed. ((baseEl: any, opts?: any) => Animation).
Css Classes | Additional classes for custom styles. Type: string | string[]
Css class 1 | A css class for button 1.
Css class 2 | A css class for button 2.
Css class 3 | A css class for button 3.
Enable backdrop dismiss | If true, the sheet will be dismissed when the backdrop is clicked.
Header | Defines the sheet's header.
Html Attributes | Additional attributes to pass to the sheet. Type: { [key: string]: any }
Id | The sheet id.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented
Mode | Specifies ionic mode.
Return value 1 | A value to return for the button 1. Use an object in TS mode as value.
Return value 2 | A value to return for the button 2. Use an object in TS mode as value.
Return value 3 | A value to return for the button 3. Use an object in TS mode as value.
Role 1 | The button 1 role: not set or cancel.
Role 2 | The button 2 role: not set or cancel.
Role 3 | The button 3 role: not set or cancel.
Sub header | Defines the sheet's sub header.
Text 1 | Text for the button 1.
Text 2 | Text for the button 2.
Text 3 | Text for the button 3.
Translucent | If true, the sheet will be translucent. Only applies when the mode is 'ios' and the device supports backdrop-filter.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

