---
layout: page
title: Exception
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/others/exception/
metadesc: Raises a Convertigo Engine exception.   In some circumstances, it is necessary to explicitly raise a Convertigo Engine exception. This is reflected as
ObjGroup: Web
ObjCatName: others
ObjName: Exception
ObjClass: com.twinsoft.convertigo.beans.statements.ExceptionStatement
ObjIcon: /images/beans/statements/images/exception_32x32.png
topnav: topnavobj
---
##### Raises a Convertigo Engine exception. 

In some circumstances, it is necessary to explicitly raise a Convertigo Engine exception. This is reflected as a <span class="computer">SoapException</span> for SOAP web service callers or by an XML error for any other caller.<br/><b>Expression</b> property can be set to a complex JavaScript expression, mixing text strings and data from variables. This expression will be evaluated during the transaction execution and will build a dynamic message output in the raised exception. 

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Expression | JS expression | standard | Defines the expression evaluated to give the statement value.<br/>This property is a JavaScript expression that is evaluated during the transaction execution and gives the statement's result.
Is active | boolean | standard | Defines whether the statement is active.
