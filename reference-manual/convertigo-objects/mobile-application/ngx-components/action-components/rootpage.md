---
layout: page
title: RootPage
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/action-components/rootpage/
metadesc: Defines a  RootPage  action component.   This component helps setting a page as the root one. Setting a page as root will place it as the first page i
ObjGroup: Actions
ObjCatName: action-components
ObjName: RootPageAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/rootpageaction_32x32.png
topnav: topnavobj
---
##### Defines a <i>RootPage</i> action component. <br/>

 This component helps setting a page as the root one. Setting a page as root will place it as the first page in the stack, ie. the page where we will return when the user hits the back button for each of the pages present on the stack.<br/>
For more information : <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/angular/navigation'>Navigation</a>.

Name | Description 
--- | ---
Page | Defines the target page.
Page data | Additional page data object passed to the rooted page. You can access this data in the pushed page by using a (TS) expression <code>this.navParams.data</code>.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.

