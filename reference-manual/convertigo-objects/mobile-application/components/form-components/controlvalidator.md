---
layout: page
title: ControlValidator
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/form-components/controlvalidator/
metadesc: Defines a  ControlValidator  component.   The  ControlValidator  is a component which helps to validate user input for a given form's input such as  T
ObjGroup: Forms
ObjCatName: form-components
ObjName: UIFormControlValidator
ObjClass: com.twinsoft.convertigo.beans.mobile.components.res.UIFormControlValidator
ObjIcon: /images/beans/mobile/components/images/uiformvalidator_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>ControlValidator</i> component. <br/>

 The <i>ControlValidator</i> is a component which helps to validate user input for a given form's input such as <i>Text Input</i>, <i>Toogle Button</i>,...<br/>
It is a set of Angular's built-in synchronous functions called whenever the value of the control changes.<br/>
Add a <i>ControlValidator</i> to a form's input component and select required validation through 'check' properties.<br/>
Also, you can add a <i>Submit Button</i> to your <i>Form</i> with its <code>Auto disable</code> property set to <code>true</code> to avoid form submission by disabling the button whenever form data are not valid.<br/>
For more information: <a href='https://angular.io/guide/form-validation#reactive-form-validation' target='_blank'>Reactive form validation</a>.

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Check equals true | Checks whether value is equals to true.  
Check length maximum | Checks whether value's maximum length is equals to a given number. 
Check length minimum | Checks whether value's minimum length is equals to a given number.   
Check match pattern | Checks whether value match a given regex pattern.   
Check not empty | Checks whether value is not empty.  
Check valid email | Checks whether value is a valid email. 

