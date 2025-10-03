---
layout: page
title: Javelin connector
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/javelin-connector/
metadesc: Establishes connections with a legacy screen application ( IBM 3270 ,  IBM 5250 ,  Bull DKU 7107  or  Videotex ).    A  Javelin connector , also named
ObjGroup: Legacy
ObjCatName: 
ObjName: Javelin connector
ObjClass: com.twinsoft.convertigo.beans.connectors.JavelinConnector
ObjIcon: /images/beans/connectors/images/javelinconnector_color_32x32.png
topnav: topnavobj
---
##### Establishes connections with a legacy screen application (`IBM 3270`, `IBM 5250`, `Bull DKU 7107` or `Videotex`).

A *Javelin connector*, also named *Legacy connector*, represents a connection to a legacy system, based on a terminal emulation session. It allows Convertigo to connect to a mainframe application to perform transactions, that is to say navigate through legacy screens and either:

- extract data into a proper XML document (CLI),
- on-the-fly webize legacy screens (CLP).

*Javelin connector* is needed by Convertigo to connect to legacy applications. Once connected, all tasks (screen classes detection, data extraction, browsing, etc.) associated with the *Javelin connector* can be carried out as defined in the project thanks to several objects:

- Screen classes,
- Criteria,
- Extraction rules,
- Javelin transactions,
- Screen classes handlers.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Connection address | String | standard | Defines the connection address.<br/>The connection address of a *Javelin connector* is composed of:<br/><br/>- a **destination address**, as a hostname (or IP adress) and optionally a port,<br/>- a **connection type**: most often `DIR` for direct connection, it can also take `EIC` or `TCP` as value,<br/>- a **connection parameter**, optional.<br/><br/>The **connection parameter** has different meanings according to the emulator:<br/><br/>- 3270: TN3270 device name,<br/>- 5250: TN5250 device name,<br/>- DKU: MAILBOX,<br/>- Minitel: service code (e.g. '3615SNCF').<br/><br/>It can be defined using an automatic numbering syntax managed by Convertigo engine: `PREFIX<POOL:x-y/z>SUFFIX`.<br/><br/>This syntax will automatically generate a pool of "auto-numbered connection parameters", the *Javelin connector* will use one of them when a new connection starts.<br/><br/>This syntax is composed of the following elements:<br/><br/>- `PREFIX`: any prefix string to start the device name or service code,<br/>- `<POOL:x-y/z>`: incremental number from x to y on z digits (for example `<POOL:1-99/2>` meaning an incremental number from 1 to 99 on 2 digits, i.e. from `01` to `99`),<br/>- `SUFFIX`: any suffix string to end the device name or service code.<br/><br/>**Note:**<br/><br/>- When a connection using an "auto-numbered connection parameter" is closed, the parameter is released in the pool and can be used again.<br/>- This pool of "auto-numbered connection parameters" works like a round robin: when released, an "auto-numbered connection parameter" is queued at the end of the pool. It will be re-used only when all others have been used before.<br/>- The pool of "auto-numbered connection parameters" will not work in Convertigo Studio context, only works in Convertigo server.
Emulator | String | standard | Defines the emulator associated with the connector.<br/>This property takes one of the following values:<br/><br/>- `Bull DKU 7107`,<br/>- `IBM 3270`,<br/>- `IBM 5250 (AS/400)`,<br/>- `Videotex (Minitel)`,<br/>- `Unix (VT220)`.
Billing Java class | String | expert | Defines the Java class name executed for billing pruposes.<br/>Convertigo supports a plugin architecture offering billing functionalities. Set the name of the billing class to be called by Convertigo for billing purposes.
Carioca authentication | boolean | expert | Defines whether the connector requires a Carioca authentication.<br/>Set to `true` if you require that only Carioca-authenticated users be able to use this connector.
Connection synchronization code | String | expert | Defines the code to execute for synchronization purposes after connecting the emulator to the host.<br/>This property allows the developer to program a code to be executed to synchronize the emulator after its connection, before executing any transaction. It uses JavaScript code as *Javelin transaction* core.
Enable SSL | boolean | expert | Defines whether a SSL connection should be used.
End transaction | String | expert | Defines the transaction to execute before removing the context.<br/>When a Convertigo context is removed, the specified "End transaction" is executed. Place in this transaction any clean up code, for example a Logout transaction.
IBM terminal type | String | expert | Defines the IBM terminal type.<br/>This property allows to override the value of the **TerminalType** configuration property.<br/><br/>Depending on the **Emulator** property value, this overridden configuration property is present in different files, and this **IBM terminal type** property can take different values.<br/><br/>For `IBM 3270` emulator:<br/><br/>- the **TerminalType** configuration property is defined in "TerminalSNA.txt" configuration file,<br/>- its default value is positioned to "IBM-3278",<br/>- it can be overridden by **IBM terminal type** property to `IBM-3278` (corresponding to old 3270),<br/>- or it can be overridden by **IBM terminal type** property to `IBM-3279` (default value for 3270).<br/><br/>For `IBM 5250` emulator:<br/><br/>- the **TerminalType** configuration property is defined in "TerminalAS400.txt" configuration file,<br/>- its default value is positioned to "IBM-5250",<br/>- it can be overridden by **IBM terminal type** property to `IBM-3179` (default value for 5250).
Language | int | expert | Defines the language used within the emulator.<br/>This property value has to be chosen amongst a list of available values.
Trust all SSL server certificates | boolean | expert | Defines if all server certificates should be automatically trusted for SSL connections.
Virtual server | String | expert | Defines the name of the virtual server to use (if left empty, the primary virtual server is used).
