---
layout: page
title: ControlValidator
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/controlvalidator/
metadesc: Defines a  ControlValidator  component.   The  ControlValidator  is a component which helps to validate user input for a given form's input such as  T
ObjGroup: Mobile Application
ObjCatName: form-components
ObjName: ControlValidator
ObjClass: com.twinsoft.convertigo.beans.ngx.components.UIFormControlValidator
ObjIcon: /images/beans/ngx/components/images/uiformvalidator_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>ControlValidator</i> component. 

The <i>ControlValidator</i> is a component which helps to validate user input for a given form's input such as <i>Text Input</i>, <i>Toogle Button</i>,...<br/>It is a set of Angular's built-in synchronous functions called whenever the value of the control changes.<br/>Add a <i>ControlValidator</i> to a form's input component and select required validation through 'check' properties.<br/>Also, you can add a <i>Submit Button</i> to your <i>Form</i> with its <code>Auto disable</code> property set to <code>true</code> to avoid form submission by disabling the button whenever form data are not valid.<br/>For more information: <a href='https://angular.io/guide/form-validation#reactive-form-validation' target='_blank'>Reactive form validation</a>.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the component is active.<br/>
Check equals true | String | expert | Checks whether value is equals to true.<br/>
Check length maximum | String | expert | Checks whether value's maximum length is equals to a given number.<br/>
Check length minimum | String | expert | Checks whether value's minimum length is equals to a given number.<br/>
Check match pattern | String | expert | Checks whether value match a given regex pattern.<br/>
Check not empty | String | expert | Checks whether value is not empty.<br/>
Check valid email | String | expert | Checks whether value is a valid email.<br/>
