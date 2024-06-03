---
layout: page
title: Page
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/page-components/page/
metadesc: Defines a  Page  component.   This component helps creating pages for your application with all required files and references. To be displayed correct
ObjGroup: Page Components
ObjCatName: page-components
ObjName: PageComponent
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.PageComponent
ObjIcon: /images/beans/ngx/components/dynamic/images/pagecomponent_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Page</i> component. <br/>

 This component helps creating pages for your application with all required files and references.<br/>
To be displayed correctly, your <i>Page</i> component should contain:<br> • a <i>Header</i> component<br> • a <i>Content</i> component<br> • a <i>Footer</i> component<br/>
<br/>
<br>The <i>Header</i> is a root component that sits at the top of the page and may hold <i>NavBar</i> or <i>Toolbar</i> components.<br/>
The <i>Footer</i> is a root component that sits at the bottom of the page and may hold <i>Toolbar</i> component.<br/>
The <i>Content</i> is a root component that sits at the middle of the page and holds all other components.<br/>
You can also write some custom code by using the "Edit Page class" menu.<br>This will enable you to run some type script<br>between the markers<br><code>/* Begin_c8o_xxxxxxxxxxx */</code><br>and the markers<br><code>/* End_c8o_xxxxxxxxxxx */</code><br/>
  Within a page, you can access some object from any CustomAction or Action property or Action variable : <br> •  in a CustomAction use page["myObject"] to access a "myObject" declared in the page class <br> •  in an Action variable or property (TS Mode) use c8opage["MyObject"] a "myObject" declared in the page class <br> •  in an Action variable or property (TS Mode) use this.MyFunction() to invoke a 'MyFunction()' declared function in the page class <br> •  in a CustomAction use props.stack["root"].in.myIndex to access a 'myIndex' or 'myItem' variable configured in a 'ForEach' directive<br> •  in an Action variable or property (TS Mode) use stack["root"].in.myIndex to access a 'myIndex' or 'myItem' variable configured in a 'ForEach' directive<br/>


Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Include in auto menu | Defines whether the page should be included in any automatic menu. 
Is active | Defines whether the page is active. 
Menu icon | Defines the page icon to be displayed in menu. 
Menu icon position | Defines the menu icon position beside title text. 
Menu title | Defines the page title to be displayed in menu. 
Page end menu | Defines the specific end menu to use for this page instead of default first one. 
Page start menu | Defines the specific start menu to use for this page instead of default first one. 
Changes detection strategy | Defines the page's changes detection strategy.  For more information: <a href='https://angular.io/api/core/ChangeDetectionStrategy' target='_blank'>ChangeDetectionStrategy</a>.
Preloading | Defines the page's preloading priority at app bootstrap.  The following values are possible for priority: <code>high</code>, <code>low</code>, and <code>off</code>.<br/>All pages with their priority set to <code>high</code> will be loaded first. Upon completion, all pages with a priority of <code>low</code> will be loaded.<br/>If the priority is set to <code>off</code> the page will not be preloaded.
Segment | Defines the page segment for direct route. Syntax: some-part or some-part/another-part or some-part/:param-name 

