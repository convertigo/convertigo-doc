---
layout: page
title: Handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/handler-statements/handler/
metadesc: Defines an event handler.   A  Handler  is similar to a <span class="computer">Function  except that it is automatically executed when the associated 
ObjGroup: Web
ObjCatName: handler-statements
ObjName: Handler
ObjClass: com.twinsoft.convertigo.beans.statements.HandlerStatement
ObjIcon: /images/beans/statements/images/handler_32x32.png
topnav: topnavobj
---
##### Defines an event handler. 

A <i>Handler</i> is similar to a <span class="computer">Function</span> except that it is automatically executed when the associated event occurs. Events that can be associated with it are:<br/><br/>• Transaction starting event, which is fired when Convertigo starts executing the client request to a transaction, <br/>• XML generated event, which is fired when Convertigo has generated the XML response, just before the transaction ends.<br/><br/><span class="orangetwinsoft">Notes:</span><br/><br/>• A <i>Handler</i> contains other statements that define the actions to be performed. It can return a result value (empty string by default). If <span class="computer">cancel</span> is returned by the <i>Transaction starting Handler</i>, the rest of the transaction execution is canceled.<br/>• <i>Handlers</i> can only be added to a transaction, one <i>Handler</i> of each event type per transaction.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Event type | String | standard | Defines the handler associated event type.<br/><i>Handlers</i> can be associated to the following event types:<br/><br/>• <span class="computer">TransactionStarted</span> event type: executed when the transaction start event occurs, <br/>• <span class="computer">XmlGenerated</span> event type: executed when the XML generated event occurs.<br/>
Infinite loop protection | boolean | standard | Defines whether the handler should be protected against infinite loops in transaction.<br/>If set to <span class="computer">true</span> (default value), the handler prevents infinite loops by throwing a Convertigo Engine exception when an infinite loop is detected. <br/>Default value should not be changed unless you specifically want the handler to authorize loops in transaction.
Is active | boolean | standard | Defines whether the statement is active.
Result | String | standard | Defines the handler's default resulting value.<br/>Depending on the <b>Event type</b>, this property can be chosen among several available values.<br/>For a <i>Transaction starting Handler</i>, this property can take the following values:<br/><br/>• <span class="computer">&lt;empty&gt;</span> or <span class="computer">""</span>: continues the transaction execution, <br/>• <span class="computer">cancel</span>: stops the transaction and cancels the rest of the transaction execution. <br/><br/><span class="orangetwinsoft">Note:</span> The <i>Handler</i>'s default return value defined thanks to this property can be overridden by a child <i>Return</i> statement.
