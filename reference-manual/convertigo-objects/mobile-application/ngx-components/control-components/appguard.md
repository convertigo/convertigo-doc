---
layout: page
title: AppGuard
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/appguard/
metadesc: Defines an  AppGuard  component.    Guards can prevent activating or deactivating specific pages in our applications. They can be used for authenticat
ObjGroup: Controls
ObjCatName: control-components
ObjName: UIAppGuard
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UIAppGuard
ObjIcon: /images/beans/ngx/components/dynamic/images/uiappguard_32x32.png
topnav: topnavobj
---
##### Defines an <i>AppGuard</i> component. <br/>

 <p>Guards can prevent activating or deactivating specific pages in our applications.<br>They can be used for authenticated views where you need to check permissions before the view can enter or leave:</p><ul><li><b>onCanActivate</b><br>Runs before the view can enter. You must resolve(boolean) from custom action to let enter in the page.</li><li><b>onCanDeactivate</b><br>Runs before the view can leave. You must resolve(boolean) from custom action to let leave the page.</li></ul><p>You can add an <i>AppGuard</i> component under the <b><i>App</i></b> component.<br>The <code>event</code> object provided contains informations on current routing attempt:</p><ul><li><code>pageName</code><br>The page name being accessed or leaved.</li><li><code>route</code><br>The active route object with its <code>params</code> and <code>queryParams</code>.</li><li><code>state</code><br>The route state with its <code>url</code>.</li></ul><p><br> Within an <i>AppGuard</i> component, you can add and chain any type of <i>Action</i> component, redirect through <i>RootPage</i> action, finally resolve(boolean) from a <i>CustomAction</i>.</p><p>For more information: <a href='https://angular.io/guide/router-tutorial-toh#milestone-5-route-guards' target='_blank'>Route guards</a></p>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Guard type | Defines the guard type.
Is active | Defines whether the component is active.

