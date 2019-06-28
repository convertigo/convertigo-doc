---
layout: page
title: Windows
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/platforms/mobile-platforms/windows/
metadesc: Windows platform    Windows  platform allows creating a Windows application from the  Mobile application  below which it is added.  The mobile applica
ObjGroup: Mobile Application
ObjCatName: mobile-platforms
ObjName: Windows
ObjClass: com.twinsoft.convertigo.beans.mobileplatforms.Windows
ObjIcon: /images/beans/mobileplatforms/images/windows_color_32x32.png
topnav: topnavobj
---
##### Windows platform 

<i>Windows</i> platform allows creating a Windows application from the <i>Mobile application</i> below which it is added. <br/>The mobile application dedicated to the platform is built from: <br/><br/>• the common resources of the <i>Mobile application</i>, located in <span class="computer">&lt;project_folder&gt;/DisplayObjects/mobile</span> (with <span class="computer">&lt;project_folder&gt;</span> the root folder of your mobile project resources), <br/>• and are possibly completed by the resources dedicated to the platform, located in <span class="computer">&lt;project_folder&gt;/DisplayObjects/platforms/&lt;platform_object_name&gt;</span> (with <span class="computer">&lt;project_folder&gt;</span> the root folder of your mobile project resources, and with <span class="computer">&lt;platform_object_name&gt;</span> the resources folder named after your mobile platform object name).<br/><br/>The <b>windows</b> platform handles all windows family mobile platforms:<br/><br/>• Windows Universal Windows Apps (Windows 10, Windows Mobile 10) : use appx="uap" in config.xml.<br/>• Windows 8.1 "Modern UI" Apps: use appx="8.1-win" in config.xml.<br/>• Windows Phone 8.1 apps: use appx="8.1-phone" in config.xml.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Cordova Platform | String | standard | Cordova Platform description
