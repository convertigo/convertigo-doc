---
layout: page
title: Modal Page
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/action-components/modal-page/
metadesc: Displays a Modal Page.   A Modal is a content pane that goes over the user's current page. Usually it is used for making a choice or editing an item. 
ObjGroup: Actions
ObjCatName: action-components
ObjName: ModalAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/modalaction_32x32.png
topnav: topnavobj
---
Displays a Modal Page. <br/>

 A Modal is a content pane that goes over the user's current page. Usually it is used for making a choice or editing an item.<br/>
You can use the <i>Close Modal</i> action  to dismiss a Modal Page.<br/>
You can also pass data to the page, the passed data will be available in the <i>NavParams</i> Object.<br/>
<br/>
By default, Modal pages will be displayed as full screen on small devices (SmartPhones) or as an Popup overlays on larget Devices (Tablets). If you want to change this behavior, you can customize the following parameters for your app in the <i>Theme</i> Component:<br/>
<br/>
 • $modal-inset-min-width:768px;        //Minimum width of the modal inset. Any device screen width larger than this value will display the page as a popup<br/>
 • $modal-inset-min-height-small:600px; //Minimum height of the small modal inset<br/>
 • $modal-inset-min-height-large:768px; //Minimum height of the large modal inset<br/>
 • $modal-inset-width:600px;            //Width of the large modal inset<br/>
 • $modal-inset-height-small:500px;     //Height of the small modal inset<br/>
 • $modal-inset-height-large:600px;     //Height of the large modal inset.

Name | Description 
--- | ---
Animated | If true, the modal will animate
Animation (enter) | Animation to use when the modal is presented. ((baseEl: any, opts?: any) => Animation).
Animation (leave) | Animation to use when the modal is dismissed. ((baseEl: any, opts?: any) => Animation).
Block while displayed | Define if execution of next actions has to be blocked while modal page is displayed
Can dismiss | Determines whether or not a modal can dismiss when calling the dismiss method.If the value is true or the value's function returns true, the modal will close when trying to dismiss.If the value is false or the value's function returns false, the modal will not close when trying to dismiss.See https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/troubleshooting/runtime#accessing-this if you need to access this from within the callback.Type: ((data?: any, role?: string ｜ undefined) => Promise<boolean>) ｜ boolean
Css Classes | Additional classes for custom styles. Type: string | string[]
Enable backdrop dismiss | If true, tapping on the back drop will dismiss the page.
Html Attributes | Additional attributes to pass to the modal. Type: { [key: string]: any }
Id | The modal id.
Keyboard close | If true, the keyboard will be automatically dismissed when the overlay is presented
Mode | Specifies ionic mode.
Page | The page to be displayed as a modal.
Page data | Additional page data Object (be sure to use an object not a string) passed to the modal page. You can access this data in the modal page by using a (TS) expression <code>this.navParams.data</code>.
Presenting element | The HTMLElement that presented the modal. This is used for card presentation effects and for stacking multiple modals on top of each other. Only applies in iOS mode.
Sheet backdrop breakpoint | A decimal value between 0 and 1 that indicates the point after which the backdrop will begin to fade in when using a sheet modal. Prior to this point, the backdrop will be hidden and the content underneath the sheet can be interacted with. This value is exclusive meaning the backdrop will become active after the value specified.
Sheet breakpoints | (TS mode) The breakpoints to use when creating a sheet modal. Each value in the array must be a decimal between 0 and 1 where 0 indicates the modal is fully closed and 1 indicates the modal is fully open. Values are relative to the height of the modal, not the height of the screen. One of the values in this array must be the value of the initialBreakpoint property. For example: [0, .25, .5, 1]
Sheet handle | The horizontal line that displays at the top of a sheet modal. It is true by default when setting the breakpoints and initialBreakpoint properties.
Sheet initial breakpoint | A decimal value between 0 and 1 that indicates the initial point the modal will open at when creating a sheet modal. This value must also be listed in the breakpoints array.
Show Backdrop | Show a backdrop (dark background) behind the page. This will only occur if the page is displayed as popup as defined in the <i>Theme</i> component. See <code>$modal-inset-min-width</code>.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

