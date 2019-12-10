---
layout: page
title: Page
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/page-components/page/
metadesc: Defines a  Page  component.   This component helps creating pages for your application with all required files and references. To be displayed correct
ObjGroup: Mobile Application
ObjCatName: page-components
ObjName: Page
ObjClass: com.twinsoft.convertigo.beans.mobile.components.PageComponent
ObjIcon: /images/beans/mobile/components/images/pagecomponent_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Page</i> component. 

This component helps creating pages for your application with all required files and references.<br/>To be displayed correctly, your <i>Page</i> component should contain:<br> • a <i>Header</i> component<br> • a <i>Content</i> component<br> • a <i>Footer</i> component<br/><br/><br>The <i>Header</i> is a root component that sits at the top of the page and may hold <i>NavBar</i> or <i>Toolbar</i> components.<br/>The <i>Footer</i> is a root component that sits at the bottom of the page and may hold <i>Toolbar</i> component.<br/>The <i>Content</i> is a root component that sits at the middle of the page and holds all other components.<br/>You can also write some custom code by using the "Edit Page class" menu.<br>This will enable you to run some type script<br>between the markers<br><code>/* Begin_c8o_xxxxxxxxxxx */</code><br>and the markers<br><code>/* End_c8o_xxxxxxxxxxx */</code><br/>  Within a page, you can access some object from any CustomAction or Action property or Action variable : <br> •  in a CustomAction use page["myObject"] to access a "myObject" declared in the page class <br> •  in an Action variable or property (TS Mode) use c8opage["MyObject"] a "myObject" declared in the page class <br> •  in an Action variable or property (TS Mode) use this.MyFunction() to invoke a 'MyFunction()' declared function in the page class <br> •  in a CustomAction use props.stack["root"].scope.myIndex to access a 'myIndex' or 'myItem'  variable configured in a 'ForEach' directive<br> •  in an Action variable or property (TS Mode) use stack["root"].scope.myIndex to access a 'myIndex' or 'myItem'  variable configured in a 'ForEach' directive<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Include in auto menu | boolean | standard | Defines whether the page should be included in any automatic menu.<br/>
Is active | boolean | standard | Defines whether the page is active.<br/>
Menu icon | String | standard | Defines the page icon to be displayed in menu.<br/>
Menu icon position | String | standard | Defines the menu icon position beside title text.<br/>
Menu title | String | standard | Defines the page title to be displayed in menu.<br/>
Page menu | String | standard | Defines the specific menu to use for this page instead of default root one.<br/>
Changes detection strategy | ChangeDetection | expert | Defines the page's changes detection strategy.<br/>For more information: <a href='https://angular.io/api/core/ChangeDetectionStrategy' target='_blank'>ChangeDetectionStrategy</a>.
Preloading | String | expert | Defines the page's preloading priority at app bootstrap.<br/>The following values are possible for priority: <code>high</code>, <code>low</code>, and <code>off</code>.<br/>All pages with their priority set to <code>high</code> will be loaded first. Upon completion, all pages with a priority of <code>low</code> will be loaded.<br/>If the priority is set to <code>off</code> the page will not be preloaded.
Segment | String | expert | Defines the page segment for direct route. Syntax: some-part or some-part/another-part or some-part/:param-name<br/>
