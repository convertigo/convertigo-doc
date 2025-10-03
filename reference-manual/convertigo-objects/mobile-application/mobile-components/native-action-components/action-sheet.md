---
layout: page
title: Action Sheet
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/native-action-components/action-sheet/
metadesc: Defines an  Action Sheet  action component.   The ActionSheet plugin shows a native list of options the user can choose from.  Supported platorm(s)   
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: ActionSheetAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/actionsheetaction_color_32x32.png
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
Android Enable Cancel Button | Enable a cancel on Android.
Android Theme | Theme to be used on Android.
Winphone Enable Cancel Button | Enable a cancel on Windows Phone.
add Cancel Button With Label | Add a cancel button with text.
add Destructive Button With Label | Add a destructive button with text.
button Labels | The labels for the buttons. Uses the index x.
destructive Button Last | Choose if destructive button will be the last.
mocked response | The mocked response for the action sheet in case of running not supported platform. Must be a number.
position | On an iPad, set the X,Y position.
subtitle | The subtitle for the actionsheet.
title | The title for the actionsheet.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.

