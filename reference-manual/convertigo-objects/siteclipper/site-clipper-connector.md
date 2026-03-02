---
layout: page
title: Site Clipper connector
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/site-clipper-connector/
metadesc: Establishes connections and clips entire websites through Convertigo.     Site Clipper connector  gives access to websites through Convertigo and allo
ObjGroup: SiteClipper
ObjCatName: 
ObjName: Site Clipper connector
ObjClass: com.twinsoft.convertigo.beans.connectors.SiteClipperConnector
ObjIcon: /images/beans/connectors/images/siteclipperconnector_color_32x32.png
topnav: topnavobj
---
##### Establishes connections and clips entire websites through Convertigo.

*Site Clipper connector* gives access to websites through Convertigo and allows dynamically transforming its pages or resources. It can access websites from several domains.

All tasks (screen classes detection, data transformation, etc.) associated with the *Site Clipper connector* are carried out as defined in the project thanks to several objects:

- Screen classes,
- Criteria,
- Rules,
- Site Clipper transactions.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Default response charset | String | standard | Defines the default charset used to decode/encode data.<br/>Response data specify their charset in a dedicated header: `Content-Type`. This header includes a MIME type and possibly a charset.<br/><br/>The **Default response charset** property defines a default charset to use when response data don't specify their charset. Several values are possible, for example `ISO-8859-1` or `UTF-8`.
Domains listing | XMLVector | standard | Defines a white and/or black list of domains.<br/>The *Site Clipper connector* can access websites from several domains. This property allows the Convertigo developer to define a list of domains he wants to filter.<br/><br/>For each domain of the list, the **Domains listing** table contains two columns:<br/><br/>- **Domain**: This property is a regular expression tested against the accessed data or resources' domain. If the domain matches the regular expression defined, the behavior depends on the second column's value, i.e. if the domain is black-listed or white-listed.<br/>- **Black listed**: This property can be `true` for black-listed domain or `false` for white-listed domain.<br/><br/>**Note:**<br/><br/>A new domain can be added to the list using the blue keyboard icon. The domains defined in the list can be ordered using the arrow up and arrow down buttons, or deleted using the red cross icon.<br/><br/>For each resource or piece of data accessed, Convertigo tests its domain against each regular expression defined in the list, one by one. When one regular expression matches, Convertigo stops its tests and acts, depending on the **Black-listed** column value. You can use the "up" and "down" arrows to reorder domains tests priorities.<br/><br/>Two behaviors can be defined thanks to this **Domains listing** property:<br/><br/>- Default behavior of the *Site Clipper connector* is to white-list all unfiltered domains: every browsing in the accessed website passes through Convertigo. Resources and data matching black-listed domains will be accessed directly, not through Convertigo.<br/>- The opposite behavior can be obtained by defining a black-listing regular expression matching all domains. Then, resources and data matching white-listed domains will be the only ones to be accessed through Convertigo.**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
Trust all certificates | boolean | standard | Defines whether trusted certificates must be checked.<br/>In SSL mode, the server sends existing certificates to Convertigo. In most cases, set this setting to `true` to automatically trust all server certificates. If set to `false `, target server certificates must be installed in Convertigo.
Authentication type | AuthenticationMode | expert | Defines the authentication type between basic and NTLM authentications.<br/>This property allows to define which type of authentication has to be used for the HTTP request. Default value is `Basic`.<br/><br/>If `Basic/NTLM authentication user` and `Basic/NTLM authentication password` properties are not filled, no authentication is performed.<br/><br/>**Note:**<br/><br/>- If you are using basic authentication setting, the target application should accept `WWW-Authenticate` header.<br/>- If you are using NTLM authentication setting, do not forget to also fill the `NTLM authentication domain` property.
Basic/NTLM authentication password | String | expert | Defines the user's password for basic or NTLM authentication.<br/>This property value is used as user password for basic or NTLM authentication.<br/><br/>**Note:**<br/><br/>- The type of authentication is chosen using the `Authentication type` property.<br/>- If you are using basic authentication setting, the target application should accept `WWW-Authenticate` header.<br/>- If you are using NTLM authentication setting, do not forget to also fill the `NTLM authentication domain` property.
Basic/NTLM authentication user | String | expert | Defines the user name for basic or NTLM authentication.<br/>This property value is used as user name for basic or NTLM authentication.
Billing Java class | String | expert | Defines the Java class name executed for billing pruposes.<br/>Convertigo supports a plugin architecture offering billing functionalities. Set the name of the billing class to be called by Convertigo for billing purposes.
Carioca authentication | boolean | expert | Defines whether the connector requires a Carioca authentication.<br/>Set to `true` if you require that only Carioca-authenticated users be able to use this connector.
End transaction | String | expert | Defines the transaction to execute before removing the context.<br/>When a Convertigo context is removed, the specified "End transaction" is executed. Place in this transaction any clean up code, for example a Logout transaction.
NTLM authentication domain | String | expert | Defines the NTLM authentication domain in case of NTLM authentication.<br/>This property value is used as user domain for NTLM authentication.<br/><br/>**Note:**<br/><br/>- The type of authentication is chosen using the `Authentication type` property.<br/>- If you are using basic authentication setting, this property does not need to be filled.
