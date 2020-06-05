---
layout: page
title: CustomValidator
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/customvalidator/
metadesc: Defines a  CustomValidator  component.   The  CustomValidator  is a component which give you the ability to customize the validation for a given form 
ObjGroup: Mobile Application
ObjCatName: form-components
ObjName: CustomValidator
ObjClass: com.twinsoft.convertigo.beans.ngx.components.UIFormCustomValidator
ObjIcon: /images/beans/ngx/components/images/uiformvalidator_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>CustomValidator</i> component. 

The <i>CustomValidator</i> is a component which give you the ability to customize the validation for a given form input or for the whole form.<br/>Add a <i>CustomValidator</i> component under a <i>Form</i> or an input component such as <i>Text Input</i>.<br>Specify whether your validation function is asynchronous or not through the <i>Asynchronous</i> property of your <i>CustomValidator</i>.<br/>Double click on the validator to open the Typescript editor and write the required code for your validation function.<br>It has one parameter to allow you to access controls values:<br> • when validator is under a form:<br/><code>g:FormGroup</code> the form, use <code>g.get('&lt;control_name&gt;').value</code> to retrieve a control's value<br> • when validator is under a control:<br/><code>c:FormControl</code> the control, use <code>c.value</code> to retrieve control's value<br/><br>For a synchronous validator, your validation function should return <code>null</code> when valid, otherwise it should return any <code>json</code> object filled with error informations.<br/>For an asynchronous validator, your validation function should return a typescript <code>Promise</code> as below:<pre><code><br>function validate1502270851880(c: FormControl) {<br>/*Begin_c8o_function:validate1502270851880*/<br>	return new Promise(resolve => {<br>		//Fake a slow response from server<br>		setTimeout(() => {<br>		  if(c.value.toLowerCase() === "user"){<br>			resolve({<br>			  "username taken": true<br>			});<br>		  } else {<br>			resolve(null);<br>		  }<br>		}, 2000);<br>	});<br>/*End_c8o_function:validate1502270851880*/<br>}</code></pre><br/>Also, you can add a <i>Submit Button</i> to your <i>Form</i> with its <code>Auto disable</code> property set to <code>true</code> to avoid form submission by disabling the button whenever form data are not valid.<br/>For more information: <a href='https://angular.io/guide/form-validation#reactive-form-validation' target='_blank'>Reactive form validation</a>.

Property | Type | Category | Description
--- | --- | --- | ---
Asynchronous | boolean | standard | Specifies whether validation is asynchronous.<br/>
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the component is active.<br/>
