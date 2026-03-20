---
layout: page
title: Breadcrumb
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/container-components/breadcrumb/
metadesc: ion-breadcrumb  Defines a  Breadcrumb  component. A  Breadcrumb  is a single navigation item that is a child of the a  Breadcrumbs  component. It can 
ObjGroup: Containers
ObjCatName: container-components
ObjName: Breadcrumb
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/breadcrumb_32x32.png
topnav: topnavobj
---
ion-breadcrumb<br/>

##### Defines a <i>Breadcrumb</i> component.<br/>
A <i>Breadcrumb</i> is a single navigation item that is a child of the a <i>Breadcrumbs</i> component.<br/>
It can link elsewhere in an app or it can be plain text. Each breadcrumb has a separator between it and the next breadcrumb and can optionally contain an icon.<br/>
 For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/breadcrumb'>Breadcrumb</a>.

Name | Description 
--- | ---
Active | If true, the breadcrumb will take on a different look to show that it is the currently active breadcrumb. Defaults to true for the last breadcrumb if it is not set on any.
Color | Specifies ionic color.
Disabled | If true the component will be disabled, preventing the the user from changing the value.
Link URL | Specifies the URL or the URL fragment to navigate to or be downloaded.
Link filename | This property instructs browsers to download a URL instead of navigating to it, so the user will be prompted to save it as a local file. If the property has a value, it is used as the pre-filled file name in the Save prompt (the user can still change the file name if they want).
Link relationship | Specifies the relationship of the target object to the <i>URL</i>. The value is a space-separated list of HTML <a href='https://developer.mozilla.org/en-US/docs/Web/HTML/Link_types'>link types</a>.
Link target | Specifies where to display the <i>URL</i>.
Mode | Specifies ionic mode.
Router animation | When using a router, it specifies the transition animation when navigating to another page using <i>URL</i>: ((baseEl: any, opts?: any) => Animation).
Router direction | Specifies the transition direction when navigating to another page using a <i>URL</i>.
Separator | If true, show a separator between this breadcrumb and the next. Defaults to true for all breadcrumbs except the last.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

