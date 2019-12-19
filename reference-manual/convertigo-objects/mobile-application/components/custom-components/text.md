---
layout: page
title: Text
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/custom-components/text/
metadesc: Defines a  Text  component.   This component acts as a standard HTML Text node which is mostly the inner content of an HTML element. The  Text  compon
ObjGroup: Customs
ObjCatName: custom-components
ObjName: UIText
ObjClass: com.twinsoft.convertigo.beans.mobile.components.res.UIText
ObjIcon: /images/beans/mobile/components/images/uitext_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Text</i> component. <br/>

 This component acts as a standard HTML Text node which is mostly the inner content of an HTML element.<br/>
The <i>Text</i> component is the base component to display text.<br/>
You can add a <i>Text</i> component to any other component, for example to a <i>Button</i> or an HTML component such as <i>P</i> or <i>H1</i>. If you add several <i>Text</i> to the same component, they will be concatenated. <br /><br /><i>Text</i> components have a <i>Text value</i> property. As any other property, its value can be set from:<br> • A Static expression : click the <b>TX</b> button in the property editor, and enter a static expression: <code>Welcome!</code>, <code>2018</code>, <code>true</code><br> • A TypeScript expression : click the <b>TS</b> button in the property editor, and enter a typescript expression: <code>'some text'</code>, <code>this.options.titleText</code><br> • A Source expression : click the <b>SC</b> button in the property editor, and select the source by clicking the <b>...</b> button<br/>
<br /><br/>
 For more information: <a href='https://www.w3schools.com/html/html_elements.asp' target='_blank'>HTML Elements</a>, <a href='https://ionicframework.com/docs/v3/components/' target='_blank'>Ionic Components</a>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Text value | Defines the text to be  displayed  

