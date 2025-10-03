---
layout: page
title: Fragment
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/custom-components/fragment/
metadesc: Defines a  Fragment  component.    This component acts as a standard HTML fragment inside the HTML document.  You can use  Fragment  to write your own
ObjGroup: Customs
ObjCatName: custom-components
ObjName: UICustom
ObjClass: com.twinsoft.convertigo.beans.mobile.components.res.UICustom
ObjIcon: /images/beans/mobile/components/images/uicustom_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Fragment</i> component. <br/>

 <p>This component acts as a standard HTML fragment inside the HTML document.</p><p>You can use <i>Fragment</i> to write your own custom HTML code in a page. The code you write will be inserted in the page at the level the <i>Fragment</i> is defined.</p><p>To write the code, double-click on the <i>Fragment</i> component in your project to open the HTML editor.</p><p>You can directly write in the editor Ionic / Angular Template syntax such as : <br> <pre> &lt;ion-list&gt;</p><p>&nbsp;&nbsp; &lt;button ion-item *ngFor="let item of items" (click)="itemSelected(item)"&gt;</p><p>&nbsp;&nbsp;&nbsp;&nbsp; {{ item }}</p><p>&nbsp;&nbsp; &lt;/button&gt;</p><p>&lt;/ion-list&gt;</p><p></pre></p><p>You can add other components under a <i>Fragment</i> component, but you need to write some specific code to merge their template inside your fragment : <br> • add <pre>&lt;!--&lt;c8o-sub-bean id="xxx" /&gt;--&gt;</pre> to insert at this level the code of a given child component with id equals to its <i>priority</i> property <br> • add <pre>&lt;!--&lt;c8o-sub-beans /&gt;--&gt;</pre> to insert at this level the code of all or remaining child components</p><p>Fragments can help advanced developers to customize their applications with the full power of Ionic and Angular frameworks.</p><p>For more information: <a href='https://www.w3schools.com/html/html_elements.asp' target='_blank'>HTML Elements</a>, <a href='https://ionicframework.com/docs/v3/components/' target='_blank'>Ionic Components</a></p>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.

