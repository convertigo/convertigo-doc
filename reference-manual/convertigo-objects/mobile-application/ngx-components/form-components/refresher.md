---
layout: page
title: Refresher
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/refresher/
metadesc: ion-refresher  Defines a  Refresher  component. This component provides pull-to-refresh functionality on a  Content  component. Place the  Refresher  
ObjGroup: Forms
ObjCatName: form-components
ObjName: Refresher
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/refresher_32x32.png
topnav: topnavobj
---
ion-refresher<br/>

##### Defines a <i>Refresher</i> component.<br/>
This component provides pull-to-refresh functionality on a <i>Content</i> component.<br/>
Place the <i>Refresher</i> as the first child of your <i>Content</i>.<br/>
Pages can then listen to the refresher's various output events. The refresh output event is fired when the user has pulled down far enough to kick off the refreshing process.<br/>
 Once the async operation has completed and the refreshing should end, call complete().<br/>
 For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/refresher'>Refresher</a>.

Name | Description 
--- | ---
Close duration | Time it takes to close the refresher. Does not apply when the refresher content uses a spinner, enabling the native refresher.
Disabled | If true the component will be disabled, preventing the the user from changing the value.
Mode | Specifies ionic mode.
Pull factor | How much to multiply the pull speed by. To slow the pull animation down, pass a number less than 1. To speed up the pull, pass a number greater than 1. The default value is 1 which is equal to the speed of the cursor.
Pull max | The maximum distance of the pull until the refresher will automatically go into the refreshing state. Defaults to the result of pullMin + 60. Does not apply when the refresher content uses a spinner, enabling the native refresher.
Pull min | The minimum distance the user must pull down until the refresher will go into the refreshing state. Does not apply when the refresher content uses a spinner, enabling the native refresher.
Slot | Specifies ionic slot mode.
Snapback duration | Time it takes the refresher to to snap back to the refreshing state. Does not apply when the refresher content uses a spinner, enabling the native refresher.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

