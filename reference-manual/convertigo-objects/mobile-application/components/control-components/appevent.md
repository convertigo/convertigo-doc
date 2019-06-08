---
layout: page
title: AppEvent
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/control-components/appevent/
metadesc: Defines an  AppEvent  component.   App lifecycle events are fired during various stages of navigation. You may add an  AppEvent  component under the  
ObjGroup: Controls
ObjCatName: control-components
ObjName: UIAppEvent
ObjClass: com.twinsoft.convertigo.beans.mobile.components.res.UIAppEvent
ObjIcon: /images/beans/mobile/components/images/uiappevent_color_32x32.png
topnav: topnavobj
---
##### Defines an <i>AppEvent</i> component. <br/>

 App lifecycle events are fired during various stages of navigation.</br>You may add an <i>AppEvent</i> component under the <b>Application</b> and chain in it any type of <b>action</b> such as <i>CallSequence<i>, <i>CallFulSync<i> or <i>CustomAction<i> components.<br/>
For more information about Ionic events: <a href='https://ionicframework.com/docs/v3/api/platform/Platform/' target='_blank'>Platform</a><br/>
For more information about C8oSdk events: <a href='#' target='_blank'>C8oSdk</a><br /><br />Application Events can be:<br />• onAppPause : Will be fired when the app is pushed to the background, and not displayed anymore on the screen.<br />• onAppResume : Will be fired when the app is restored from the backround, and displayed again.<br />• onAppResize : When the app is resized, for example by swiching to portrait orientation.<br />• onSessionLost: When the app looses the session the Convertigo server. This may occur if the devices gets in offline mode for a time greater than the session timeout property in the Convertigo server project object. If this occurs you must ensure that you re-execute a 'Login' sequence on the server.<br />• onNetworkReachable : This will fire as soon as the app starts and that network connectivity has been tested against Convertigo serverendpoint. From this event you can start a login sequence and execute a FullSync 'Sync' Action to sync your data. You are sure that you have network connectivity. This event can be fired again each time lost connectivity is restored and tested again.<br />• onNetworkUnreachable : This will fire if you do have network connectivity but that the Convertigo server  end point is unreachable.For example, connected on a Wifi network unable to rout to the server endpoint, or that the Server is not available for any other reason. You shoud warn the user about this state.<br />• onNetworkOffline: Will be fired as soon as the device looses network connectivity (Plane mode, or no WIFI/3G/4G network).

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Event type | Defines the event type.  
Is active | Defines whether the component is active. 

