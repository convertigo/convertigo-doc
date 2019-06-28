---
layout: page
title: Windows Phone 8
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/platforms/mobile-platforms/windows-phone-8/
metadesc: Windows Phone 8 mobile platform    Windows Phone 8  mobile platform allows creating a Windows Phone 8 application from the  Mobile application  below 
ObjGroup: Mobile Application
ObjCatName: mobile-platforms
ObjName: Windows Phone 8
ObjClass: com.twinsoft.convertigo.beans.mobileplatforms.WindowsPhone8
ObjIcon: /images/beans/mobileplatforms/images/windowsphone8_color_32x32.png
topnav: topnavobj
---
##### Windows Phone 8 mobile platform 

<i>Windows Phone 8</i> mobile platform allows creating a Windows Phone 8 application from the <i>Mobile application</i> below which it is added. <br/>The mobile application dedicated to the platform is built from: <br/><br/>• the common resources of the <i>Mobile application</i>, located in <span class="computer">&lt;project_folder&gt;/DisplayObjects/mobile</span> (with <span class="computer">&lt;project_folder&gt;</span> the root folder of your mobile project resources), <br/>• and are possibly completed by the resources dedicated to the platform, located in <span class="computer">&lt;project_folder&gt;/DisplayObjects/platforms/&lt;platform_object_name&gt;</span> (with <span class="computer">&lt;project_folder&gt;</span> the root folder of your mobile project resources, and with <span class="computer">&lt;platform_object_name&gt;</span> the resources folder named after your mobile platform object name).<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Cordova Platform | String | standard | Cordova Platform description
Windows Phone publisher ID title | String | expert | Defines Windows Phone publisher ID title to use for building the Windows Phone 8 application from this application.<br/>When building a mobile application for Windows Phone platform, a Window Phone publisher ID (including its title) is mandatory. Convertigo provides one by default, this Window Phone publisher ID is used by default in Convertigo engine. <br/>This default Window Phone publisher ID can be configured at engine level, in the <i>Mobile builder</i> tab of the <i>Administration Console</i>'s <i>Configuration</i> page. This engine level Window Phone publisher ID will be used by default for all Windows Phone dedicated applications built by the Convertigo. <br/>The <b>Window Phone publisher ID title</b> property allows to override the Window Phone publisher ID title for this mobile application's build. If left empty, the common Window Phone publisher ID title defined at Convertigo engine level is used. <br/><span class="orangetwinsoft">Note:</span> The Windows Phone publisher ID is linked to a PhoneGap build account. If a <b>Mobile builder authentication token</b> is configured in the <i>Mobile application</i> or at Convertigo engine level, the Windows Phone publisher ID (defined here or at Convertigo engine level) must be one of the "Signing keys" declared in this PhoneGap build account.
