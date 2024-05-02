---
layout: page
title: Picker
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/components/picker/
metadesc: ion-picker   Defines an inline  Picker  component. A Picker is a dialog that displays a row of buttons and columns underneath. It appears on top of th
ObjGroup: Components
ObjCatName: components
ObjName: InlinePicker
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/picker_32x32.png
topnav: topnavobj
---
ion-picker <br/>

##### Defines an inline <i>Picker</i> component.<br/>
A Picker is a dialog that displays a row of buttons and columns underneath.<br>It appears on top of the app's content, and at the bottom of the viewport.<br/>
 For more information : <a href='https://ionicframework.com/docs/api/picker#inline-pickers-recommended'>Inline Pickers</a>.

Name | Description 
--- | ---
Animated | If true, the picker will animate.
Animation (enter) | (TS mode) Animation to use when the picker is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | (TS mode) Animation to use when the picker is dismissed. ((baseEl: any, opts?: any) => Animation).
Backdrop dismiss | If true, the picker will be dismissed when the backdrop is clicked.
Control id | The picker id.
Css Classes | Additional classes for custom styles. Type: string | string[]
Duration | Number of milliseconds to wait before dismissing the picker.
Is open | If true, the picker will open. If false, the picker will close.<br/>Use this if you need finer grained control over presentation, otherwise just use the pickerController or the trigger property.<br/>Note: isOpen will not automatically be set back to false when the picker dismisses. You will need to do that in your code.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented.
Mode | Specifies ionic mode.
Picker buttons | (TS mode) Array of buttons to be displayed at the top of the picker. Type: PickerButton[]<br/> See: https://ionicframework.com/docs/api/picker#pickerbutton
Picker columns | (TS mode) Array of columns to be displayed in the picker. Type: PickerColumn[]<br/> See: https://ionicframework.com/docs/api/picker#pickercolumn
Trigger | An ID corresponding to the trigger element that causes the picker to open.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

