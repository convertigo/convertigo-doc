---
layout: page
title: NgxApp
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/application-components/ngxapp/
metadesc: Defines the mobile  NgxApp  component.    An application represents the whole application with all the components needed to build it (pages, menus, ro
ObjGroup: Mobile Application
ObjCatName: application-components
ObjName: NgxApp
ObjClass: com.twinsoft.convertigo.beans.ngx.components.ApplicationComponent
ObjIcon: /images/beans/ngx/components/images/applicationcomponent_color_32x32.png
topnav: topnavobj
---
##### Defines the mobile *NgxApp* component.

An application represents the whole application with all the components needed to build it (pages, menus, routes, styles and theme).

The *NgxApp* component is also used to control how the application viewer is launched (Right click) :  • Execute : runs the application in the App viewer. Will use the current build mode (Fast, Debug, Debug plus, production)  • Update packages and Execute : Will update NPM dependencies for your project and run the app. Use this if you want to be sure your NPM dependencies is up to date  • Re-install packages and Execute : Will remove all NPM dependencies and re-install from scratch, then runs the app. Use this to clean your project node_modules directory is case of corrupted NPM installs

You can also write some Custom Ionic application component code by using the "Edit Application class" menu. This will enable you to run some type script between the marker `/* Begin_c8o xxxxxxxxxxx */ ` and the marker

`/* End_c8o xxxxxxxxxxx */ `The *NgxApp* component also defines the *Template project* property. This represents the Ionic Template your project is based on. A template defines a basic project Convertigo Mobile Builder will use to generate your app. Templates are standard Convertigo projects (.CAR files) installed in your workspace. You can have more than one template installed and you can choose the one you want to use for your project.By default Convertigo Studio will use the "mobilebuilder_tpl_7_6_0" template for your project.

A template also defines all the required basic Framework components and versions your app will require. (Angular, Ionic, components etc ...) so, switching templates will enable you to base your app on newer versions of the frameworks just by selecting the required template. Be sure to use the "Update packages and Execute" option to run your app after a template change.

You can Write your own templates based on the "mobilebuilder_tpl_x_x_x" your application use. Just edit the files in the "ionicTpl" folder (packages.json, or any other source file). This way you will have full control on the app and add any required custom code at the place you want.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Progressive Web App | boolean | standard | Defines whether the application is or not a progressive web application. You have to build your application in "production" mode after update to activate PWA.<br/>A PWAs runs in Mobile browser or on a Desktop browser and can be installed locally on the device so it can run offline. PWAs are supported by most browsers on Android and Windows (Chrome for example). PWAs can only be installed on the device if the app's url is secured (https://). PWAs can access most of the devices hardware features such as Camera, GPS or Sensors.
Split pane layout | String | standard | Defines a split pane layout.<br/>Shows a split-pane when the min-width is xs:0px, sm:576px, md:768px (default), lg:992px, xl: 1200px or a custom expression.<br/><br/>See SplitPane for more informations.
Template project | String | standard | Name of the project that contains the ionicTpl folder to build application.<br/>Templates projects car standard Convertigo projects with an ionicTpl folder containing all the basic needed files to build a standard Ionic project.
Throttled events | XMLVector | expert | Defines the control events that operate with a throttle.
Use click for tap | boolean | expert | Defines whether tap events should be replaced by click events.
