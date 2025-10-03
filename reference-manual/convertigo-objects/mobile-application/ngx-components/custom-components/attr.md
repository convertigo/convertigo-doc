---
layout: page
title: Attr
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/custom-components/attr/
metadesc: Defines a  Attr  component.    This component acts as a standard HTML attribute.   Attr  components can be added to any component. You can add your cu
ObjGroup: Customs
ObjCatName: custom-components
ObjName: UIAttribute
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UIAttribute
ObjIcon: /images/beans/ngx/components/dynamic/images/uiattribute_32x32.png
topnav: topnavobj
---
##### Defines a <i>Attr</i> component. <br/>

 <p>This component acts as a standard HTML attribute.</p><p><i>Attr</i> components can be added to any component.<br>You can add your custom attributes to customize a component behavior. For example you can add a <code>class</code> attribute to set a custom CSS class name to this component. When you set explicitly a class name attribute on a component, the class will be merged with any <i>Style</i> component positioned for  this component</p><p><i>Attr</i> components have two properties : <br> • name : the name of the attribute such as <code>class</code>, <code>width</code>, <code>src</code>, ... <br> • value : the value of the attribute</p><p>You can also use attributes to control some explicit behavior using Angular binding syntax. It is thus possible to propagate data from the component to the DOM, from the DOM to the component and in both directions : <br> • [attribute] for property binding : DOM element &larr; Component data (one way binding) <br> • (attribute) for event binding : DOM emitted event &rarr; Component function execution (one way binding) <br> • [(attribute)] for model binding: DOM element &harr; Component data (two way binding)</p><p>Attribute values can be constants, typescript data declared in page or sources on data retrieved from page.</p><p>For more information: <a href='https://www.w3schools.com/html/html_attributes.asp' target='_blank'>HTML Attributes</a>, <a href='https://ionicframework.com/docs/components' target='_blank'>Ionic Components</a></p>

Name | Description 
--- | ---
Attr name | Defines the attribute name.
Attr value | Defines the attribute value.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.

