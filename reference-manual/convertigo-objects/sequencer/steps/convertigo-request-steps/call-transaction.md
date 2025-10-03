---
layout: page
title: Call Transaction
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sequencer/steps/convertigo-request-steps/call-transaction/
metadesc: Defines a step invoking a transaction.    The  Call Transaction  step enables to call any existing transaction from the same project or another. It pr
ObjGroup: Sequencer
ObjCatName: convertigo-request-steps
ObjName: Call Transaction
ObjClass: com.twinsoft.convertigo.beans.steps.TransactionStep
ObjIcon: /images/beans/steps/images/transactionstep_32x32.png
topnav: topnavobj
---
##### Defines a step invoking a transaction.

The *Call Transaction* step enables to call any existing transaction from the same project or another. It provides input variables to the target transaction, and returns XML data from the call.

Variables to be used for the call must be described at step level by adding *Variables* child objects. You can manually set variables or use the **Import variables from the target transaction** contextual menu to automatically copy the variable definitions from the target transaction.

The target transaction returns structured XML data, its XML schema has to be generated while developing the transaction and is automatically imported to the *Call Transaction* step while configuring its **Transaction** property. Thus, the transaction's schema is known by the calling step and elements from the transaction result can be correctly sourced from it.

**Note:**

- A *Call Transaction* step with all its properties filled and including the target variables can be easily created at once in the Convertigo Studio **Projects** view. To do so, drag-and-drop with `Ctrl` key pressed a transaction from its parent connector to a sequence or a block step where the *Call Transaction* step has to be created.
- The client/server HTTP session of parent sequence is spread to the called transaction context, even if it is called internally (**Internal invoke** property set to `true`).


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Context name | JS expression | standard | Defines the specific context name to use (one is automatically created otherwise).<br/>This property is a JavaScript expression that is evaluated at sequence execution. If not empty, the computed context name is appended to current session's `JSessionID` to define the context ID of the context that is created.<br/><br/>The execution context of called transaction / sequence is named:<br/><br/>- after the **Context name** property of the *Call Transaction* / *Call Sequence* step,<br/>- automatically thanks to parent sequence parameters, if the **Context name** property is not specified.<br/><br/>Every automatically named context will be deleted at the end of the sequence execution. Explicitly named contexts will remain for further transaction or sequence use.<br/><br/>To re-use a named context, call the transaction / sequence in the same session and pass the context name through:<br/><br/>- the **Context name** property of *Call Transaction* / *Call Sequence* step,<br/>- the `__context` parameter sent to Convertigo while calling the transaction / sequence.<br/><br/>**Note:** The creation or the destruction of context is effective in server mode only.
Internal invoke | boolean | standard | Defines if the called transaction/sequence should be called internally (through the Convertigo engine) or externally (i.e. via the web application server, in HTTP).<br/>Since version 6.3.3 of Convertigo, the HTTP session of parent sequence is spread to called transaction/sequence context even if the transaction/sequence is called using internal invoke.
Is active | boolean | standard | Defines whether the step is active.
Transaction | String | standard | Defines the target project, connector from this project and transaction to request.<br/>The target transaction must be one of the transactions of one of the connectors from an existing project, the project in which the *Call Sequence* step is added or another project opened in the same Convertigo.<br/><br/>This property is set by selecting the target transaction in a list of values of the following form: `<project_name>.<connector_name>.<transaction_name>` to avoid mistakes in case of transactions with the same name in several projects.
Connection string | XMLVector | expert | Replaces the connection parameters of target connector.<br/>The connection string represents different data depending on connector type:<br/><br/>- *HTTP / HTML connector*: replaces the connector URL string made up of the connector's **Server** name, server **Port**, **Root path** and transaction's **Sub path** properties.<br/>- *Javelin connector*: replaces the address set in the **Connection address** property, made up of **Connection parameter**, **Host name**, host **Port** and **Connection type** sub properties.
Output | boolean | expert | Defines whether the XML generated by this step should be appended to the resulting XML.<br/>Set this property to `true` to add the step's resulting XML to the sequence's output XML (default value for steps generating XML). Set this property to `false` to prevent the steps's XML result to appear in the sequence's output XML.<br/><br/>Setting this property to `false` does not prevent the step's generated XML from being used as a source by other steps.
