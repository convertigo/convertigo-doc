---
layout: page
title: Action Sheet
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/native-action-components/action-sheet/
metadesc: Defines an  Action Sheet  action component.   The ActionSheet plugin shows a native list of options the user can choose from.  Supported platorm(s)   
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: ActionSheetAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/actionsheetaction_32x32.png
topnav: topnavobj
---
##### Defines an <i>Action Sheet</i> action component. <br/>

 The ActionSheet plugin shows a native list of options the user can choose from.<br/>
<u>Supported platorm(s):</u> <br/>
 • Android<br/>
 • iOS<br/>
<br/>
You can access data from the next action in the chain in (TS) mode with: <code><br/>
 • out: The index of the selected button</code><br/>
<br/>
Whenever cordova platform is not available, the value defined in mocking options is returned.<br/>
 Default mocked value is <code>0</code>.<br/>
For more information : <a href='https://github.com/EddyVerbruggen/cordova-plugin-actionsheet'>Action Sheet</a>.

Name | Description 
--- | ---
Add Cancel Button With Label | Add a cancel button with text.
Add Destructive Button With Label | Add a destructive button with text.
Android Enable Cancel Button | Enable a cancel on Android.
Android Theme | Theme to be used on Android.
Button Labels | The labels for the buttons. Uses the index x.
Destructive Button Last | Choose if destructive button will be the last.
Mocked response | The mocked response for the action sheet in case of running not supported platform. Must be a number.
Position | On an iPad, set the X,Y position.
Subtitle | The subtitle for the actionsheet.
Title | The title for the actionsheet.
Winphone Enable Cancel Button | Enable a cancel on Windows Phone.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
