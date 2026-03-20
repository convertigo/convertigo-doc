---
layout: page
title: CICS connector
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/cics/cics-connector/
metadesc: Establishes connections with a CICS application.   A CICS Transaction Gateway can host several servers running different applications. In a CICS appli
ObjGroup: CICS
ObjCatName: 
ObjName: CICS connector
ObjClass: com.twinsoft.convertigo.beans.connectors.CicsConnector
ObjIcon: /images/beans/connectors/images/cicsconnector_color_32x32.png
topnav: topnavobj
---
##### Establishes connections with a CICS application. 

A CICS Transaction Gateway can host several servers running different applications. In a CICS application, the display and business logics are usually managed in distinct programs. <br/>Programs exchange input and output data through a memory pool called COMMAREA (COMMON AREA). The COMMAREA is usually mapped by a definition of COBOL data included in communicating programs. This definition can be stored in two ways:<br/><br/>•  built in the source code of the CICS program,<br/>•  stored in a separate file, called <span class="computer">copybook</span>, that is copied when compiling.<br/><br/>From a Convertigo point of view, a <i>CICS connector</i> represents a gateway server.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Mainframe | String | standard | Defines the mainframe name (or its IP address).
Port | int | standard | Defines the server port number.
Server | String | standard | Defines the server name (or its IP address).
User id | String | standard | Defines the user identification for connecting to the CICS server.
User password | String | standard | Defines the user password for connecting to the CICS server.
Billing Java class | String | expert | Defines the Java class name executed for billing pruposes.<br/>Convertigo supports a plugin architecture offering billing functionalities. Set the name of the billing class to be called by Convertigo for billing purposes.
Carioca authentication | boolean | expert | Defines whether the connector requires a Carioca authentication.<br/>Set to <span class="computer">true</span> if you require that only Carioca-authenticated users be able to use this connector.
End transaction | String | expert | Defines the transaction to execute before removing the context.<br/>When a Convertigo context is removed, the specified "End transaction" is executed. Place in this transaction any clean up code, for example a Logout transaction.
