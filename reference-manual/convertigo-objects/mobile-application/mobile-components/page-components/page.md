---
layout: page
title: Page
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/page-components/page/
metadesc: Defines a  Page  component.    This component helps creating pages for your application with all required files and references.  To be displayed corre
ObjGroup: Mobile Application
ObjCatName: page-components
ObjName: Page
ObjClass: com.twinsoft.convertigo.beans.mobile.components.PageComponent
ObjIcon: /images/beans/mobile/components/images/pagecomponent_color_32x32.png
topnav: topnavobj
---
##### Defines a *Page* component.

This component helps creating pages for your application with all required files and references.

To be displayed correctly, your *Page* component should contain:  • a *Header* component  • a *Content* component  • a *Footer* component

The *Header* is a root component that sits at the top of the page and may hold *NavBar* or *Toolbar* components.

The *Footer* is a root component that sits at the bottom of the page and may hold *Toolbar* component.

The *Content* is a root component that sits at the middle of the page and holds all other components.

You can also write some custom code by using the "Edit Page class" menu. This will enable you to run some type script between the markers `/* Begin_c8o_xxxxxxxxxxx */` and the markers `/* End_c8o_xxxxxxxxxxx */`

Within a page, you can access some object from any CustomAction or Action property or Action variable :  •  in a CustomAction use page["myObject"] to access a "myObject" declared in the page class  •  in an Action variable or property (TS Mode) use c8opage["MyObject"] a "myObject" declared in the page class  •  in an Action variable or property (TS Mode) use this.MyFunction() to invoke a 'MyFunction()' declared function in the page class  •  in a CustomAction use props.stack["root"].in.myIndex to access a 'myIndex' or 'myItem' variable configured in a 'ForEach' directive  •  in an Action variable or property (TS Mode) use stack["root"].in.myIndex to access a 'myIndex' or 'myItem' variable configured in a 'ForEach' directive


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Include in auto menu | boolean | standard | Defines whether the page should be included in any automatic menu.
Is active | boolean | standard | Defines whether the page is active.
Menu icon | String | standard | Defines the page icon to be displayed in menu.
Menu icon position | String | standard | Defines the menu icon position beside title text.
Menu title | String | standard | Defines the page title to be displayed in menu.
Page menu | String | standard | Defines the specific menu to use for this page instead of default root one.
Changes detection strategy | ChangeDetection | expert | Defines the page's changes detection strategy.<br/>For more information: ChangeDetectionStrategy.
Preloading | String | expert | Defines the page's preloading priority at app bootstrap.<br/>The following values are possible for priority: `high`, `low`, and `off`.<br/><br/>All pages with their priority set to `high` will be loaded first. Upon completion, all pages with a priority of `low` will be loaded.<br/><br/>If the priority is set to `off` the page will not be preloaded.
Segment | String | expert | Defines the page segment for direct route. Syntax: some-part or some-part/another-part or some-part/:param-name
