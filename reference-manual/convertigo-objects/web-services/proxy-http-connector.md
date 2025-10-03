---
layout: page
title: Proxy HTTP connector
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web-services/proxy-http-connector/
metadesc: Defines a proxy-based HTTP connector.    The  Proxy HTTP connector  is similar to an  HTTP connector  and in addition simulates a proxy.   Note   This
ObjGroup: Web services
ObjCatName: 
ObjName: Proxy HTTP connector
ObjClass: com.twinsoft.convertigo.beans.connectors.ProxyHttpConnector
ObjIcon: /images/beans/connectors/images/proxyhttpconnector_color_32x32.png
topnav: topnavobj
---
##### Defines a proxy-based HTTP connector.

The *Proxy HTTP connector* is similar to an *HTTP connector* and in addition simulates a proxy.

**Note:** This connector is used for very specific applications and is not intended to be used by Convertigo standard users.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Dynamic content files | String | standard | Defines files exposing dynamic content (should not be cached).<br/>This property allows to specify the files that should not be cached by the *Proxy HTTP connector*.
Is HTTPS | boolean | standard | Defines whether the connection is secured (HTTPS).<br/>If set to `true`, the connection is SSL-based. Make sure the target SSL port (usually 443) is correctly set.
Port | int | standard | Defines the server port.
Removable headers | XMLVector | standard | Defines HTTP headers that should be removed from client request.<br/>This property allows to specify a list of HTTP headers that should not be forwarded by the *Proxy HTTP connector* to the target application.<br/><br/>**Note:** A new HTTP header can be added to the list using the blue keyboard icon. The HTTP headers defined in the list can be ordered using the arrow up and arrow down buttons, or deleted using the red cross icon.
Replacement strings | XMLVector | standard | Defines strings to be replaced on the fly.<br/>As simulating a proxy, the *Proxy HTTP connector* replaces "on-the-fly" strings in the HTTP flow. This property allows to specify the strings to replace and their replacements.<br/><br/>**Note:** A new string can be added to the list using the blue keyboard icon. The strings defined in the list can be ordered using the arrow up and arrow down buttons, or deleted using the red cross icon.
Root path | String | standard | Defines the root path.<br/>This is the first URI requested by the HTTP connector. Any other URI in the project is relative to this URI.
Server | String | standard | Defines the server name (or its IP address).<br/>This property defines the DNS name or IP address of the target application server.
Trust all certificates | boolean | standard | Defines whether trusted certificates must be checked. Reload the project to be effective.<br/>In SSL mode, the server sends existing certificates to Convertigo. In most cases, set this setting to `true` to automatically trust all server certificates. If set to `false `, target server certificates must be installed in Convertigo.
Authentication type | AuthenticationMode | expert | Defines the authentication type between basic and NTLM authentications.<br/>This property allows to define which type of authentication has to be used for the HTTP request. Default value is `Basic`.<br/><br/>If **Basic/NTLM authentication user** and **Basic/NTLM authentication password** properties are not filled, no authentication is performed.<br/><br/>**Note:**<br/><br/>- If you are using basic authentication setting, the target application should accept `WWW-Authenticate` header.<br/>- If you are using NTLM authentication setting, do not forget to also fill the **NTLM authentication domain** property.
Basic/NTLM authentication password | String | expert | Defines the user's password for basic or NTLM authentication.<br/>This property value is used as user password for basic or NTLM authentication.<br/><br/>**Note:**<br/><br/>- The type of authentication is chosen using the **Authentication type** property.<br/>- If you are using basic authentication setting, the target application should accept `WWW-Authenticate` header.<br/>- If you are using NTLM authentication setting, do not forget to also fill the **NTLM authentication domain** property.
Basic/NTLM authentication user | String | expert | Defines the user name for basic or NTLM authentication.<br/>This property value is used as user name for basic or NTLM authentication.<br/><br/>**Note:**<br/><br/>- The type of authentication is chosen using the **Authentication type** property.<br/>- If you are using basic authentication setting, the target application should accept `WWW-Authenticate` header.<br/>- If you are using NTLM authentication setting, do not forget to also fill the **NTLM authentication domain** property.
Billing Java class | String | expert | Defines the Java class name executed for billing pruposes.<br/>Convertigo supports a plugin architecture offering billing functionalities. Set the name of the billing class to be called by Convertigo for billing purposes.
Carioca authentication | boolean | expert | Defines whether the connector requires a Carioca authentication.<br/>Set to `true` if you require that only Carioca-authenticated users be able to use this connector.
Default URL charset encoding | String | expert | Defines the default charset encoding to use for the transactions variable values sent as parameters in HTTP requests.<br/>This property allows to define the charset encoding used to URL-encode the parameter values:<br/><br/>- GET parameters for the query string,<br/>- POST parameters in case of `application/x-www-form-urlencoded` content-type.<br/><br/>Default value is `UTF-8`.
End transaction | String | expert | Defines the transaction to execute before removing the context.<br/>When a Convertigo context is removed, the specified "End transaction" is executed. Place in this transaction any clean up code, for example a Logout transaction.
HTTP headers forwarding policy | XMLVector | expert | Defines the HTTP headers to forward and the policy to use to forward them.<br/>This property allows forwarding HTTP headers from the client browser to the target application.<br/><br/>This property allows to define a list of HTTP headers to forward and, for each header, the forwarding policy to use. For each header, two columns have to be set:<br/><br/>- **Header name**: defines the name of the header to forward,<br/>- **Forwarding policy**: defines how to replace the header value when forwarding it.<br/><br/>This second property can take the following values:<br/><br/>- `Merge`: If the forwarded header exists, its value is merged with existing one. If the forwarded header doesn't exist, it is added.<br/>- `Ignore`: If the forwarded header exists, its value is not replaced, it is ignored. If the forwarded header doesn't exist, it is added.<br/>- `Replace`: Replaces all headers without any condition by forwarded values.<br/><br/>**Note:** A new HTTP header can be added to the list using the blue keyboard icon. The HTTP headers defined in the list can be ordered using the arrow up and arrow down buttons, or deleted using the red cross icon.
NTLM authentication domain | String | expert | Defines the NTLM authentication domain in case of NTLM authentication.<br/>This property value is used as user domain for NTLM authentication.<br/><br/>**Note:**<br/><br/>- The type of authentication is chosen using the **Authentication type** property.<br/>- If you are using basic authentication setting, this property does not need to be filled.
