---
layout: page
title: Loading
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/miscellaneous-components/loading/
metadesc: ion-loading   Defines an inline  Loading  component.   An overlay that can be used to indicate activity. Once presented, the loading indicator will au
ObjGroup: Miscellaneous
ObjCatName: miscellaneous-components
ObjName: InlineLoading
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/showloadingaction_32x32.png
topnav: topnavobj
---
ion-loading <br/>

##### Defines an inline <i>Loading</i> component. <br/>

 An overlay that can be used to indicate activity.<br/>
Once presented, the loading indicator will automatically dismiss after a <code>duration</code> of 3s by default.<br>If the <i>Duration</i> property is set to <code>false</code>, the loading will display indefinitely until dismissed by clicking on the backdrop or by a calling the <code>dismiss()</code> method.<br/>
For more information : <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/loading#inline-recommended'>Inline Loading</a>

Name | Description 
--- | ---
Animated | If true, the loading will animate
Animation (enter) | Animation to use when the loading is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | Animation to use when the loading is dismissed. ((baseEl: any, opts?: any) => Animation).
Css classes | Additional classes for custom styles. Type: string ｜ string[]
Duration | Number of milliseconds to wait before dismissing the loading indicator.
Enable backdrop dismiss | If true, the loading indicator will be dismissed when the backdrop is clicked.
Is open | If true, the loading indicator will open. If false, the loading indicator will close.<br/>Use this if you need finer grained control over presentation, otherwise just use the loadingController or the trigger property.<br/>Note: isOpen will not automatically be set back to false when the loading indicator dismisses. You will need to do that in your code.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented
Message | Optional text content to display in the loading indicator.
Mode | Specifies ionic mode.
Show Backdrop | If true, a backdrop will be displayed behind the loading indicator.
Spinner | The name of the spinner to display.
Translucent | If true, the loading will be translucent. Only applies when the mode is 'ios' and the device supports backdrop-filter.
Trigger | An ID corresponding to the trigger element that causes the loading indicator to open when clicked.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Identifier | Defines the component identifier.
Is active | Defines whether the component is active.

