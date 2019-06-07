---
layout: page
title: PushPage
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/action-components/pushpage/
metadesc: Defines a  PushPage  action component.    This component helps to display a given page. Pushing a new page onto the top of the navigation stack causes
ObjGroup: Actions
ObjCatName: action-components
ObjName: PushPageAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/pushpageaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>PushPage</i> action component. <br/>

  This component helps to display a given page. Pushing a new page onto the top of the navigation stack causes the new page to be animated in.<br/>
For more information : <a target='_blank' href='https://ionicframework.com/docs/v3/components/#navigation'>Navigation</a>.

Name | Description 
--- | ---
Animate | If true, page will be animated in.
Animation duration | The time in ms for the page animation.
Page | Defines the target page to push on the stack.
Page data | Additional page data object passed to the pushed page. You can access this data in the pushed page by using a (TS) expression <code>this.navParams.data</code>.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

