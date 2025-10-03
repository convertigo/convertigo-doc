---
layout: page
title: Android
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/platforms/mobile-platforms/android/
metadesc: Android mobile platform     Android  mobile platform allows creating an Android application from the  Mobile application  below which it is added.  Th
ObjGroup: Mobile Application
ObjCatName: mobile-platforms
ObjName: Android
ObjClass: com.twinsoft.convertigo.beans.mobileplatforms.Android
ObjIcon: /images/beans/mobileplatforms/images/android_color_32x32.png
topnav: topnavobj
---
##### Android mobile platform

*Android* mobile platform allows creating an Android application from the *Mobile application* below which it is added.

The mobile application dedicated to the platform is built from:

- the common resources of the *Mobile application*, located in `<project_folder>/DisplayObjects/mobile` (with `<project_folder>` the root folder of your mobile project resources),
- and are possibly completed by the resources dedicated to the platform, located in `<project_folder>/DisplayObjects/platforms/<platform_object_name>` (with `<project_folder>` the root folder of your mobile project resources, and with `<platform_object_name>` the resources folder named after your mobile platform object name).


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Cordova Platform | String | standard | Cordova Platform description
Android certificate password | String | expert | Defines Android certificate password to use for building the Android application from this application.<br/>When building a mobile application for Android platform, an Android certificate (including title, password and keystore password) is mandatory. Convertigo provides one by default, this Android certificate is used by default in Convertigo engine.<br/><br/>This default Android certificate can be configured at engine level, in the *Mobile builder* tab of the *Administration Console*'s *Configuration* page. This engine level Android certificate will be used by default for all Android dedicated applications built by the Convertigo.<br/><br/>The **Android certificate password** property allows to override the Android certificate password for this mobile application's build. If left empty, the common Android certificate password defined at Convertigo engine level is used.<br/><br/>**Note:** The Android certificate is linked to a PhoneGap build account. If a **Mobile builder authentication token** is configured in the *Mobile application* or at Convertigo engine level, the Android certificate (defined here or at Convertigo engine level) must be one of the "Signing keys" declared in this PhoneGap build account.
Android certificate title | String | expert | Defines Android certificate title for building the Android application from this application.<br/>When building a mobile application for Android platform, an Android certificate (including title, password and keystore password) is mandatory. Convertigo provides one by default, the Convertigo Android certificate is used by default in Convertigo engine, .<br/><br/>This default Android certificate can be configured at engine level, in the *Mobile builder* tab of the *Administration Console*'s *Configuration* page. This engine level Android certificate will be used by default for all Android dedicated applications built by the Convertigo.<br/><br/>The **Android certificate title** property allows to override the Android certificate title for this mobile application's build. If left empty, the common Android certificate title defined at Convertigo engine level is used.<br/><br/>**Note:** The Android certificate is linked to a PhoneGap build account. If a **Mobile builder authentication token** is configured in the *Mobile application* or at Convertigo engine level, the Android certificate (defined here or at Convertigo engine level) must be one of the "Signing keys" declared in this PhoneGap build account.
Android keystore password | String | expert | Defines Android keystore password to use for building the Android application from this application.<br/>When building a mobile application for Android platform, an Android certificate (including title, password and keystore password) is mandatory. Convertigo provides one by default, this Android certificate is used by default in Convertigo engine.<br/><br/>This default Android certificate can be configured at engine level, in the *Mobile builder* tab of the *Administration Console*'s *Configuration* page. This engine level Android certificate will be used by default for all Android dedicated applications built by the Convertigo.<br/><br/>The **Android keystore password** property allows to override the Android keystore password for this mobile application's build. If left empty, the common Android keystore password defined at Convertigo engine level is used.<br/><br/>**Note:** The Android certificate is linked to a PhoneGap build account. If a **Mobile builder authentication token** is configured in the *Mobile application* or at Convertigo engine level, the Android certificate (defined here or at Convertigo engine level) must be one of the "Signing keys" declared in this PhoneGap build account.
Release package type | AndroidPackageType | expert | Defines Android package type for release build.<br/>When building a mobile application in release mode for Android platform (local or gradle build), the build output is an Android Package (.apk) or can be a Android Bundle (.aab) for publishing to the Store. 'apk' package can be installed directly on Android devices, while 'aab' bundle is a new format that includes all the compiled code and resources of an app, but defers APK generation and signing to the Google Play Store.<br/><br/>The **Release package type** property allows to choose the package type for the release build of this mobile application. The default value is **apk**.
