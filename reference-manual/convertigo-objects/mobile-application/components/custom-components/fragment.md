---
layout: page
title: Fragment
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/custom-components/fragment/
metadesc: Defines a  Fragment  component.   This component acts as a standard HTML fragment inside the HTML document. You can use  Fragment  to write your own c
ObjGroup: Customs
ObjCatName: custom-components
ObjName: UICustom
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$3
ObjIcon: /images/beans/mobile/components/images/uicustom_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Fragment</i> component. 
 This component acts as a standard HTML fragment inside the HTML document.
You can use <i>Fragment</i> to write your own custom HTML code in a page. The code you write will be inserted in the page at the level the <i>Fragment</i> is defined.</br>To write the code, double-click on the <i>Fragment</i> component in your project to open the HTML editor.

You can directly write in the editor Ionic / Angular Template syntax such as : <br><pre>&lt;ion-list&gt; <br />&nbsp;&nbsp; &lt;button ion-item *ngFor="let item of items" (click)="itemSelected(item)"&gt; <br />&nbsp;&nbsp;&nbsp;&nbsp; {{ item }} <br /> &nbsp;&nbsp; &lt;/button&gt; <br />&lt;/ion-list&gt; <br /></pre> You can add other components under a <i>Fragment</i> component, but you need to write some specific code to merge their template inside your fragment : 

• add <pre>&lt;!--&lt;c8o-sub-bean id="xxx" /&gt;--&gt;</pre> to insert at this level the code of a given child component with id equals to its <i>priority</i> property 
• add <pre>&lt;!--&lt;c8o-sub-beans /&gt;--&gt;</pre> to insert at this level the code of all or remaining child components 

Fragments can help advanced developers to customize their applications with the full power of Ionic and Angular frameworks.
 For more information: <a href='https://www.w3schools.com/html/html_elements.asp' target='_blank'>HTML Elements</a>, <a href='https://ionicframework.com/docs/v3/components/' target='_blank'>Ionic Components</a> 

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

