---
layout: page
title: Popover Page
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/action-components/popover-page/
metadesc: Displays a Popover Page.   The Popover is a view that floats above an app’s content. Popovers provide an easy way to present or gather information fro
ObjGroup: Actions
ObjCatName: action-components
ObjName: PopoverAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/popoveraction_color_32x32.png
topnav: topnavobj
---
Displays a Popover Page. 
 The Popover is a view that floats above an app’s content. Popovers provide an easy way to present or gather information from the user and are commonly used in the following situations:

<br> • Show more info about the current view<br> • Select a commonly used tool or configuration<br> • Present a list of actions to perform inside one of your views.

Name | Description 
--- | ---
Css Class | Additional classes for custom styles, separated by spaces.
Enable Backdrop Dismiss | If true, tapping on the back drop will dismiss the page.
Page | The page to be displayed as a Popover.
Page data | Additional page data Object (be sure to use an object not a string) passed to the modal page. You can access this data in the modal page by using a (TS) expression <code>this.navParams.data</code>.
Show Backdrop | Show a backdrop (dark background) behind the page. This will only occur if the page is displayed as popup as defined in the <i>Theme</i> component. See <code>$modal-inset-min-width</code>.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

