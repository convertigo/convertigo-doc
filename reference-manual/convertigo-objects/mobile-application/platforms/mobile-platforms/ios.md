---
layout: page
title: iOS
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/platforms/mobile-platforms/ios/
metadesc: iOS mobile platform     iOS  mobile platform allows creating an iOS application from the  Mobile application  below which it is added.  The mobile app
ObjGroup: Mobile Application
ObjCatName: mobile-platforms
ObjName: iOS
ObjClass: com.twinsoft.convertigo.beans.mobileplatforms.IOs
ObjIcon: /images/beans/mobileplatforms/images/ios_color_32x32.png
topnav: topnavobj
---
##### iOS mobile platform

*iOS* mobile platform allows creating an iOS application from the *Mobile application* below which it is added.

The mobile application dedicated to the platform is built from:

- the common resources of the *Mobile application*, located in `<project_folder>/DisplayObjects/mobile` (with `<project_folder>` the root folder of your mobile project resources),
- and are possibly completed by the resources dedicated to the platform, located in `<project_folder>/DisplayObjects/platforms/<platform_object_name>` (with `<project_folder>` the root folder of your mobile project resources, and with `<platform_object_name>` the resources folder named after your mobile platform object name).


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Cordova Platform | String | standard | Cordova Platform description
iOS certificate password | String | expert | Defines iOS certificate password to use for building the iOS application from this application.<br/>When building a mobile application for iOS platform, an iOS certificate (including title and password) is mandatory. Convertigo provides one by default, this iOS certificate is used by default in Convertigo engine.<br/><br/>This default iOS certificate can be configured at engine level, in the *Mobile builder* tab of the *Administration Console*'s *Configuration* page. This engine level iOS certificate will be used by default for all iOS dedicated applications built by the Convertigo.<br/><br/>The **iOS certificate password** property allows to override the iOS certificate password for this mobile application's build. If left empty, the common iOS certificate password defined at Convertigo engine level is used.<br/><br/>**Note:** The iOS certificate is linked to a PhoneGap build account. If a **Mobile builder authentication token** is configured in the *Mobile application* or at Convertigo engine level, the iOS certificate (defined here or at Convertigo engine level) must be one of the "Signing keys" declared in this PhoneGap build account.
iOS certificate title | String | expert | Defines iOS certificate title to use for building the iOS application from this application.<br/>When building a mobile application for iOS platform, an iOS certificate (including title and password) is mandatory. Convertigo provides one by default, this iOS certificate is used by default in Convertigo engine.<br/><br/>This default iOS certificate can be configured at engine level, in the *Mobile builder* tab of the *Administration Console*'s *Configuration* page. This engine level iOS certificate will be used by default for all iOS dedicated applications built by the Convertigo.<br/><br/>The **iOS certificate title** property allows to override the iOS certificate title for this mobile application's build. If left empty, the common iOS certificate title defined at Convertigo engine level is used.<br/><br/>**Note:** The iOS certificate is linked to a PhoneGap build account. If a **Mobile builder authentication token** is configured in the *Mobile application* or at Convertigo engine level, the iOS certificate (defined here or at Convertigo engine level) must be one of the "Signing keys" declared in this PhoneGap build account.
