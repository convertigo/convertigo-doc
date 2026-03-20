---
layout: page
title: ActionSheet
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/components/actionsheet/
metadesc: ion-action-sheet   Defines an inline  ActionSheet  component. An Action Sheet is a dialog that displays a set of options. It appears on top of the app
ObjGroup: Components
ObjCatName: components
ObjName: InlineActionSheet
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/actionsheetaction_32x32.png
topnav: topnavobj
---
ion-action-sheet <br/>

##### Defines an inline <i>ActionSheet</i> component.<br/>
An Action Sheet is a dialog that displays a set of options. It appears on top of the app's content, and must be manually dismissed by the user before they can resume interaction with the app.<br/>
 For more information : <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/action-sheet'>Inline Action Sheet</a>.

Name | Description 
--- | ---
Alert buttons | (TS mode) Array of buttons to be added to the action sheet. Type: (string ｜ ActionSheetButton)[]<br/> See: https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/action-sheet#actionsheetbutton
Animated | If true, the action sheet will animate.
Animation (enter) | (TS mode) Animation to use when the action sheet is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | (TS mode) Animation to use when the action sheet is dismissed. ((baseEl: any, opts?: any) => Animation).
Backdrop dismiss | If true, the action sheet will be dismissed when the backdrop is clicked.
Control id | The action sheet id.
Css Classes | Additional classes for custom styles. Type: string | string[]
Header | The main title in the heading of the action sheet.
Is open | If true, the action sheet will open. If false, the action sheet will close.<br/>Use this if you need finer grained control over presentation, otherwise just use the actionSheetController or the trigger property.<br/>Note: isOpen will not automatically be set back to false when the action sheet dismisses. You will need to do that in your code.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented.
Message | The main message to be displayed in the action sheet.<br/>Message can accept either plaintext or HTML as a string.<br>To display characters normally reserved for HTML, they must be escaped, for example <Ionic> would become <code>&lt;Ionic&gt;</code>
Mode | Specifies ionic mode.
Subheader | The subtitle in the heading of the action sheet. Displayed under the title.
Translucent | If true, the action sheet will be translucent. Only applies when the mode is 'ios' and the device supports backdrop-filter.
Trigger | An ID corresponding to the trigger element that causes the action sheet to open.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

