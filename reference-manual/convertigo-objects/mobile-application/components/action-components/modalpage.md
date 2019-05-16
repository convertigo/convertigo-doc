---
layout: page
title: ModalPage
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/action-components/modalpage/
metadesc: Displays a Modal Page.   A Modal is a content pane that goes over the user's current page. Usually it is used for making a choice or editing an item. 
ObjGroup: Actions
ObjCatName: action-components
ObjName: ModalAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/modalaction_color_32x32.png
topnav: topnavobj
---
Displays a Modal Page. 
 A Modal is a content pane that goes over the user's current page. Usually it is used for making a choice or editing an item. You can use the <i>PopPage</i> action  to dismiss a Modal Page. You can also pass data to the page, the passed data will be available in the <i>NavParams</i> Object.

By default, Modal pages will be displayed as full screen on small devices (SmartPhones) or as an Popup overlays on larget Devices (Tablets). If you want to change this behavior, you can customize the following parameters for your app in the <i>Theme</i> Component:
<br> • $modal-inset-min-width:768px; //Minimum width of the modal inset. Any device screen width larger than this value will display the page as a popup<br> • $modal-inset-min-height-small:600px; 	//Minimum height of the small modal inset<br> • $modal-inset-min-height-large:768px; 	//Minimum height of the large modal inset<br> • $modal-inset-width:600px; 	//Width of the large modal inset<br> • $modal-inset-height-small:500px;  //Height of the small modal inset<br> • $modal-inset-height-large:600px;  //Height of the large modal inset.

Name | Description 
--- | ---
Block while displayed | Define if execution of next actions has to be blocked while modal page is displayed
Css Class | Additional classes for custom styles, separated by spaces.
Enable Backdrop Dismiss | If true, tapping on the back drop will dismiss the page.
Page | The page to be displayed as a modal.
Page data | Additional page data Object (be sure to use an object not a string) passed to the modal page. You can access this data in the modal page by using a (TS) expression <code>this.navParams.data</code>.
Show Backdrop | Show a backdrop (dark background) behind the page. This will only occur if the page is displayed as popup as defined in the <i>Theme</i> component. See <code>$modal-inset-min-width</code>.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

