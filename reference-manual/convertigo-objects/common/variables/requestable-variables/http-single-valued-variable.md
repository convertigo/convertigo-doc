---
layout: page
title: HTTP single-valued variable
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/variables/requestable-variables/http-single-valued-variable/
metadesc: Defines a single-valued variable for an HTTP-based transaction.    An  HTTP single-valued variable  declares a variable which accepts a unique value t
ObjGroup: Common
ObjCatName: requestable-variables
ObjName: HTTP single-valued variable
ObjClass: com.twinsoft.convertigo.beans.variables.RequestableHttpVariable
ObjIcon: /images/beans/variables/images/variable_color_32x32.png
topnav: topnavobj
---
##### Defines a single-valued variable for an HTTP-based transaction.

An *HTTP single-valued variable* declares a variable which accepts a unique value to an HTTP-based transaction.

This variable is dedicated to HTTP-based transactions only:

- *HTTP transaction*,
- *XML HTTP transaction*,
- *JSON HTTP transaction*,
- *HTML transaction*.

This variable object allows defining HTTP request parameter through the **HTTP name** and **HTTP method** properties.

It can define a default value, specified in the **Default value** property, that is used as HTTP parameter value if no value is found for this variable.

At runtime, the HTTP parameter value is calculated by Convertigo through the following steps:

- the value is received in the request to the transaction,
- if no value is received for this variable, the JavaScript value of the variable is chosen, if a variable of the same name exists in the JavaScript scope of current context,
- if no JavaScript value is defined, the context value of the variable is chosen, if a variable of the same name is stored in current context,
- if none of the previous methods gives a value, the default value is used,
- if no default value is specified, the variable is not defined and an Exception can be thrown when trying to access its value in the core of the transaction.

**Note:**

- In Convertigo Studio, when an *HTTP single-valued variable* is created in a transaction/sequence, it can be easily replaced by an *HTTP multi-valued variable*, using the right-click menu on the variable and choosing the option **Change to** > **MultiValued variable**.
- *HTTP connector* supports OAuth authentication. To enable OAuth, you simply need to provide four variables to any kind of *HTTP transaction*: `__header_oAuthKey`, `__header_oAuthSecret`, `__header_oAuthToken` and `__header_oAuthTokenSecret`. For more information about OAuth in *HTTP connector*, refer to the following article in our Technical Blog: *http://www.convertigo.com/en/how-to/technical-blog/entry/using-oauth-with-convertigo-http-connector.html*
- To send an *HTTP Message Body*, add the `__body` and the `__contentType` reserved variables to an **POST** or **PUT** HTTP-based transaction. If the `Content-Type` is set to `application/json` and the `__body` source is automatically converted to a JSON string When setting `none` as the *Do File Upload Mode*, the data will be sent as text to the target server: `__body=000457username __contentType=text/xml`. When setting `multipartFormData` as the *Do File Upload Mode*, the data will be uploaded as file to the target server: `__body=.//MyLocalData.xml __contentType=text/xml`. In this case the value of the `__body` is the path of the file to upload.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Default value | Object | standard | Defines the variable's default value(s).<br/>This property allows defining a default value or default list of values to use when no variable value is provided to the parent transaction (or sequence).<br/><br/>A variable is always created with a default value set to `null`, which means that the variable is only declared and has no default value.<br/><br/>At run time, Convertigo looks for the variable among the query parameters, the JavaScript scope or the objects in the context to retrieve its value. If the variable is found, its value is used, if not found, the default value specified by this property is used.<br/><br/>In this last case, and if the default value of the variable is not set (**Default value** property set to `null`), an exception can be thrown by any object or JavaScript code trying to use the undefined variable.<br/><br/>It is up to the Convertigo developer to unset the variable's `null` value, i.e. to set a default value to the variable. He should prefer using a *Test Case* to test specific values for the variable or pass a variable value directly when invoking the transaction (or sequence).<br/><br/>**Note:** To unset the `null` value of the property, click on the cross-shaped button in the field. Then, the default value is an empty string. You can use it as is or add a value.
Description | String | standard | Describes the variable.<br/>This property is used to describe the variable in the widget generated from its parent transaction (or sequence) in Convertigo Mashup Composer.
HTTP method | String | standard | Defines the HTTP method to use for this variable.<br/>This property allows choosing which HTTP method has to be used to send the variable in the HTTP request. The following values are available:<br/><br/>- `GET`: the transaction is executed as an HTTP GET request and the variable is added to the query string as follows: `?<initial_query_string>&<variable_name>=<variable_value>`.<br/>- `POST`: the variable is added to the data sent in the HTTP request as a standard `POST FORM`.<br/><br/>`GET` and `POST` method variables can be mixed in a same transaction. If at least one `POST` variable is used, the transaction's HTTP verb is overridden to `POST` by Convertigo.
HTTP name | String | standard | Defines the HTTP parameter name.<br/>This property allows defining the name of the HTTP variable sent in the request by Convertigo executing the parent transaction.<br/><br/>If the HTTP-based transaction emulates a form submission, this property can match the `name` attribute of an HTML input field. If the HTTP-based transaction emulates a resource access by URL, this property can match one of the variables names from the query string (between "`&`" and "`=`" characters).
Visibility | int | standard | Defines the variable's visibility.<br/>This property allows defining whether the variable's value is masked or not in:<br/><br/>- `log files`: selecting this option will mask the variable's value that may be printed in all loggers,<br/>- `studio user interface`: selecting this option will mask the variable's value in the **Properties** view from the Studio, as well as in the tree of the **Projects** view,<br/>- `platform user interface`: selecting this option will mask the variable's value in the test platform of the project and when editing the project in Convertigo web administration,<br/>- `project's XML files`: selecting this option will mask the variable's value in the project's XML files generated on the file system when saving the objects from the project.<br/><br/>Any combination of these options can be chosen, it allows to customize precisely the variable's value display. A last option is available: `Mask value in all`. Selecting this option will mask the variable's value in all previously described cases.
isRequired | Boolean | standard | Defines whether the variable is required.
Cache key | boolean | expert | Defines whether the variable should be part of the cache key.<br/>If set to `true`, the variable and its value are added to the cache key which is used to determine whether the transaction's response (or sequence's response) should be pulled from the cache or not.<br/><br/>A transaction's cached response (or sequence's cached response) is pulled from the cache when all cache key values are corresponding to a stored cache entry (may contain other data that variables, for example the certificate group defined by some transactions).
Customizable | boolean | expert | Defines whether the variable is customizable.<br/>If set to `true`, the variable is used as a customizable preference field in the widget generated from the parent transaction (or sequence) in Convertigo Mashup Composer or any other portal.<br/><br/>**Note:** This property is used when applicable, i.e. when the widget is declared in a portal including customizable preference fields feature.
Do File Upload Charset | String | expert | Set the Charset of the file in case of multipartFormData.<br/>This property set the ContentType of the file in case of `Do File Upload Mode` is `multipartFormData`.<br/><br/>This property have sense for ContentType text/plain.
Do File Upload ContentType | String | expert | Set the ContentType of the file in case of multipartFormData.<br/>This property set the ContentType of the file in case of `Do File Upload Mode` is `multipartFormData`.<br/><br/>With an empty value, the ContentType is extracted from the file extension.
Do File Upload Mode | DoFileUploadMode | expert | Enable and select the mode to perform a file upload (POST or PUT).<br/>This property indicates if the value is a filepath of an existing file and the way to handle it. Works only for POST or PUT http transaction.<br/><br/>- `none`: default mode, doesn't process the value as a filepath.<br/>- `base64`: (only text/xml) substitute the variable value with the file content encoded in base64 (can produce huge data).<br/>- `MTOM`: (only text/xml) substitute the variable value with a <xop:Include> element that refer to the MTOM attachment part. If their is one MTOM variable, the request is send as MTOM.<br/>- `multipartFormData`: (only application/x-www-form-urlencoded) the request send a multipart/formData Content-Type and send the file as a file part.<br/><br/>**Note:** if the variable name is `__body` and set with `multipartFormData`, the file content is sent as body.Relative paths starting with:<br/><br/>- `./` are relative to Convertigo workspace,<br/>- `.//` are relative to current project folder.
Is a file upload | boolean | expert | Defines whether the variable is an uploaded file.<br/>When set to `true`, this property indicates that the transaction/sequence should receive an uploaded file in this variable.<br/><br/>When received, the uploaded file is stored in a temporary folder and deleted at the end of the transaction/sequence. In the transaction/sequence execution context, the variable contains the path of the temporary file.<br/><br/>**Note:** This property value is used only by the *Test Platform* to allow the developer testing the transaction/sequence. When receiving a multi-part request, Convertigo can set any variable as an uploaded file.
Schema type QName | XmlQName | expert | Assigned schema type qualified name
WSDL exposed | boolean | expert | Defines whether the variable is exposed in web service.<br/>If set to `true`, variable definition is inserted in the project's WSDL as a method parameter.<br/><br/>**Note:** The **Accessibility** property of the parent transaction (or sequence) defines how the method itself is exposed in the web service.
