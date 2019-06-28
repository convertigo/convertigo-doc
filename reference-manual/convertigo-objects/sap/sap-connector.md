---
layout: page
title: SAP connector
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sap/sap-connector/
metadesc: Establishes connection with SAP Systems using the JCo Connectors.   A  SAP connector  enables Convertigo to connect to any SAP NetWeaver application (
ObjGroup: SAP
ObjCatName: 
ObjName: SAP connector
ObjClass: com.twinsoft.convertigo.beans.connectors.SapJcoConnector
ObjIcon: /images/beans/connectors/images/sapconnector_color_32x32.png
topnav: topnavobj
---
##### Establishes connection with SAP Systems using the JCo Connectors. 

A <i>SAP connector</i> enables Convertigo to connect to any SAP NetWeaver application (such as SAP ERP, etc.), execute BAPIs (Business APIs) and extract data into a proper XML document from them. <br/>The access to the target SAP application is configured using the <b>Application server host</b> property, the <b>System Number</b> property  and the <b>Client</b> property. Credentials are defined in the <b>User name</b> and the <b>User password</b> properties. The language can be configured using the <b>Language</b> property. 

Property | Type | Category | Description
--- | --- | --- | ---
Application server host | String | standard | Defines the host name or IP address of the SAP application server.<br/>This property defines the DNS name or IP address of the target SAP application server.
Client | String | standard | Defines the SAP client.<br/>This property defines the SAP client, allowing to target a client environment in the SAP server.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Group | String | standard | Defines the SAP group.<br/>This property defines the group of SAP application servers.
Language | String | standard | Defines the SAP language.<br/>This property defines the SAP language.
Message server host | String | standard | Defines the SAP message server host.<br/>This property defines the SAP message server host.
Message server port | String | standard | Defines the SAP message server port.<br/>This property defines the SAP message server port to use instead of the default one.
System id | String | standard | Defines the SAP system id.<br/>This property defines the SAP system id.
System number | String | standard | Defines the SAP system number.<br/>This property defines the SAP system number, also known as instance number, allowing to target the SAP instance to be accessed.
User name | String | standard | Defines the SAP user name.<br/>This property defines the SAP user.
User password | String | standard | Defines the SAP user password.<br/>This property defines the SAP user password. This password must correspond to user name defined in the <b>User name</b> property.
Billing Java class | String | expert | Defines the Java class name executed for billing pruposes.<br/>Convertigo supports a plugin architecture offering billing functionalities. Set the name of the billing class to be called by Convertigo for billing purposes.
Carioca authentication | boolean | expert | Defines whether the connector requires a Carioca authentication.<br/>Set to <span class="computer">true</span> if you require that only Carioca-authenticated users be able to use this connector.
End transaction | String | expert | Defines the transaction to execute before removing the context.<br/>When a Convertigo context is removed, the specified "End transaction" is executed. Place in this transaction any clean up code, for example a Logout transaction.
