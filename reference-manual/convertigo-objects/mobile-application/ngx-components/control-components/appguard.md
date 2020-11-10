---
layout: page
title: AppGuard
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/appguard/
metadesc: Defines an  AppGuard  component.   Guards can prevent activating or deactivating specific pages in our applications. They can be used for authenticate
ObjGroup: Mobile Application
ObjCatName: control-components
ObjName: AppGuard
ObjClass: com.twinsoft.convertigo.beans.ngx.components.UIAppGuard
ObjIcon: /images/beans/ngx/components/images/uiappguard_color_32x32.png
topnav: topnavobj
---
##### Defines an <i>AppGuard</i> component. 

Guards can prevent activating or deactivating specific pages in our applications.<br>They can be used for authenticated views where you need to check permissions before the view can enter or leave:<br/> • <b>onCanActivate</b><br>Runs before the view can enter. You must resolve(boolean) from custom action to let enter in the page.<br/> • <b>onCanDeactivate</b><br>Runs before the view can leave. You must resolve(boolean) from custom action to let leave the page.<br/> You can add an <i>AppGuard</i> component under the <b><i>App</i></b> component.<br>The <code>event</code> object provided contains informations on current routing attempt:<br/> • <code>pageName</code><br>The page name being accessed or leaved.<br/> • <code>route</code><br>The active route object with its <code>params</code> and <code>queryParams</code>.<br/> • <code>state</code><br>The route state with its <code>url</code>.<br/> <br> Within an <i>AppGuard</i> component, you can add and chain any type of <i>Action</i> component, redirect through <i>RootPage</i> action, finally resolve(boolean) from a <i>CustomAction</i>.<br/>For more information: <a href='https://angular.io/guide/router-tutorial-toh#milestone-5-route-guards' target='_blank'>Route guards</a>   

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Guard type | AppGuardType | standard | Defines the guard type.<br/>
Is active | boolean | standard | Defines whether the component is active.<br/>
