---
layout: page
title: iOS
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/platforms/mobile-platforms/ios/
metadesc: iOS mobile platform    iOS  mobile platform allows creating an iOS application from the  Mobile application  below which it is added.  The mobile appl
ObjGroup: Mobile Application
ObjCatName: mobile-platforms
ObjName: iOS
ObjClass: com.twinsoft.convertigo.beans.mobileplatforms.IOs
ObjIcon: /images/beans/mobileplatforms/images/ios_color_32x32.png
topnav: topnavobj
---
##### iOS mobile platform 

<i>iOS</i> mobile platform allows creating an iOS application from the <i>Mobile application</i> below which it is added. <br/>The mobile application dedicated to the platform is built from: <br/><br/>• the common resources of the <i>Mobile application</i>, located in <span class="computer">&lt;project_folder&gt;/DisplayObjects/mobile</span> (with <span class="computer">&lt;project_folder&gt;</span> the root folder of your mobile project resources), <br/>• and are possibly completed by the resources dedicated to the platform, located in <span class="computer">&lt;project_folder&gt;/DisplayObjects/platforms/&lt;platform_object_name&gt;</span> (with <span class="computer">&lt;project_folder&gt;</span> the root folder of your mobile project resources, and with <span class="computer">&lt;platform_object_name&gt;</span> the resources folder named after your mobile platform object name).<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Cordova Platform | String | standard | Cordova Platform description
iOS certificate password | String | expert | Defines iOS certificate password to use for building the iOS application from this application.<br/>When building a mobile application for iOS platform, an iOS certificate (including title and password) is mandatory. Convertigo provides one by default, this iOS certificate is used by default in Convertigo engine. <br/>This default iOS certificate can be configured at engine level, in the <i>Mobile builder</i> tab of the <i>Administration Console</i>'s <i>Configuration</i> page. This engine level iOS certificate will be used by default for all iOS dedicated applications built by the Convertigo. <br/>The <b>iOS certificate password</b> property allows to override the iOS certificate password for this mobile application's build. If left empty, the common iOS certificate password defined at Convertigo engine level is used. <br/><span class="orangetwinsoft">Note:</span> The iOS certificate is linked to a PhoneGap build account. If a <b>Mobile builder authentication token</b> is configured in the <i>Mobile application</i> or at Convertigo engine level, the iOS certificate (defined here or at Convertigo engine level) must be one of the "Signing keys" declared in this PhoneGap build account.
iOS certificate title | String | expert | Defines iOS certificate title to use for building the iOS application from this application.<br/>When building a mobile application for iOS platform, an iOS certificate (including title and password) is mandatory. Convertigo provides one by default, this iOS certificate is used by default in Convertigo engine. <br/>This default iOS certificate can be configured at engine level, in the <i>Mobile builder</i> tab of the <i>Administration Console</i>'s <i>Configuration</i> page. This engine level iOS certificate will be used by default for all iOS dedicated applications built by the Convertigo. <br/>The <b>iOS certificate title</b> property allows to override the iOS certificate title for this mobile application's build. If left empty, the common iOS certificate title defined at Convertigo engine level is used. <br/><span class="orangetwinsoft">Note:</span> The iOS certificate is linked to a PhoneGap build account. If a <b>Mobile builder authentication token</b> is configured in the <i>Mobile application</i> or at Convertigo engine level, the iOS certificate (defined here or at Convertigo engine level) must be one of the "Signing keys" declared in this PhoneGap build account.
