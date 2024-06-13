---
layout: page
title: Backdrop
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/miscellaneous-components/backdrop/
metadesc: ion-backdrop   Defines a  Backdrop  component. Backdrops are full screen components that overlay other components and prevents clicking or tapping on 
ObjGroup: Miscellaneous
ObjCatName: miscellaneous-components
ObjName: Backdrop
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/backdrop_32x32.png
topnav: topnavobj
---
ion-backdrop <br/>

##### Defines a <i>Backdrop</i> component.<br/>
Backdrops are full screen components that overlay other components and prevents clicking or tapping on the content behind.<br>They are useful behind components that transition in on top of other content and can be used to dismiss that component.<br/>
A <i>Backdrop</i> is transparent by default, so you should include CSS to make it visible.<br>It can be customized by assigning common CSS properties including <code>background-color</code>, <code>background</code> and <code>opacity</code>.<br>Content can be displayed above the backdrop by setting a <code>z-index</code> on the content, higher than the backdrop (defaults to 2).<br/>
 For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/backdrop'>Backdrop</a>.

Name | Description 
--- | ---
Stop propagation | If true, the backdrop will stop propagation on tap.
Tappable | If true, the backdrop will can be clicked and will emit the ionBackdropTap event.
Visible | If true, the backdrop will be visible.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

