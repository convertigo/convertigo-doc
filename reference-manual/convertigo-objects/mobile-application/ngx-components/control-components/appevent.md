---
layout: page
title: AppEvent
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/appevent/
metadesc: Defines an  AppEvent  component.   App lifecycle events are fired during various stages of navigation. You may add an  AppEvent  component under the  
ObjGroup: Mobile Application
ObjCatName: control-components
ObjName: AppEvent
ObjClass: com.twinsoft.convertigo.beans.ngx.components.UIAppEvent
ObjIcon: /images/beans/ngx/components/images/uiappevent_color_32x32.png
topnav: topnavobj
---
##### Defines an <i>AppEvent</i> component. 

App lifecycle events are fired during various stages of navigation. You may add an <i>AppEvent</i> component under the <b>Application</b> and chain in it any type of <b>action</b> such as <i>CallSequence</i>, <i>CallFulSync</i> or <i>CustomAction</i> components.<br/>For more information about Ionic events: <a href='https://ionicframework.com/docs/angular/platform#events' target='_blank'>Platform</a><br/>For more information about C8oSdk events: <a href='https://doc.convertigo.com/documentation/latest/reference-manual/convertigo-mbaas-server/convertigo-client-sdk/' target='_blank'>Convertigo Client SDK</a><br /><br />Application Events can be:<br /><br />• <b>onAppPause</b>: Will be fired when the app is pushed to the background, and not displayed anymore on the screen.<br /><br />• <b>onAppResume</b>: Will be fired when the app is restored from the backround, and displayed again.<br /><br />• <b>onAppResize</b>: When the app is resized, for example by swiching to portrait orientation.<br /><br />• <b>onAutoLogin</b>: Will be fired when performing an automatic 'login' on the server. The resulting data is a Json structure <code>{status:true, response: response, error: null}</code>. If the <code>status</code> is <code>true</code>, you have successfully logged in.<br /><br />• <b>onSessionLost</b>: When the app looses the session to the Convertigo server. This may occurs if the device gets in offline mode for a time greater than the session timeout property in the Convertigo server project object. If this occurs, you must ensure that you re-execute a 'Login' sequence on the server to re-authenticate the user.<br /><br />• <b>onNetworkReachable</b>: Will be fired as soon as the app starts and that network connectivity has been tested against Convertigo server endpoint. From this event you can start a login sequence and execute a FullSync 'Sync' Action to sync your data. You are sure that you have network connectivity. This event can be fired again each time lost connectivity is restored and tested again.<br /><br />• <b>onNetworkUnreachable</b>: Will be fired if you do have network connectivity but that the Convertigo server endpoint is unreachable. For example, connected on a Wifi network unable to route to the server endpoint, or that the Server is not available for any other reason. You should warn the user about this state.<br /><br />• <b>onNetworkOffline</b>: Will be fired as soon as the device looses network connectivity (Plane mode, or no WIFI/3G/4G network).

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Event type | AppEvent | standard | Defines the event type.<br/>
Is active | boolean | standard | Defines whether the component is active.<br/>
