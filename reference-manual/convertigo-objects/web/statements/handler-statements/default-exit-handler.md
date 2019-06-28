---
layout: page
title: Default exit handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/handler-statements/default-exit-handler/
metadesc: Defines a transaction default exit handler.   A  Handler  is similar to a <span class="computer">Function  except that it is automatically executed wh
ObjGroup: Web
ObjCatName: handler-statements
ObjName: Default exit handler
ObjClass: com.twinsoft.convertigo.beans.statements.ScExitDefaultHandlerStatement
ObjIcon: /images/beans/statements/images/handler_exit_32x32.png
topnav: topnavobj
---
##### Defines a transaction default exit handler. 

A <i>Handler</i> is similar to a <span class="computer">Function</span> except that it is automatically executed when the associated event occurs. The <i>Default exit handler</i> is an exit screen class handler, associated with an exit from a screen class event. If present in a transaction, it is executed when no specific screen class exit handler is defined for the currently detected screen class. In other words, it is a generic screen class exit handler.<br/>Thus, <i>Default exit handler</i> can be defined for multiple screen classes on which the programmer knows that the same actions are to be done.<br/>Beware that this handler will be executed for the <span class="computer">Default_screen_class</span> screen class if no specific handler is defined for this screen class. As the <span class="computer">Default_screen_class</span> screen class matches every page that is not defined in the connector, this handler can potentially be executed on a lot of unmanaged pages. Such behaviors can lead to infinite loop transactions.<br/><span class="orangetwinsoft">Notes:</span> <br/><br/>• A <i>Default exit handler</i> contains other statements that define the actions to be performed. It can return a result value (<span class="computer">accumulate</span> by default as it is an exit handler).<br/>• <i>Default exit handlers</i> can only be added to a transaction, one <i>Default exit handler</i> per transaction.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Infinite loop protection | boolean | standard | Defines whether the handler should be protected against infinite loops in transaction.<br/>If set to <span class="computer">true</span> (default value), the handler prevents infinite loops by throwing a Convertigo Engine exception when an infinite loop is detected. <br/>Default value should not be changed unless you specifically want the handler to authorize loops in transaction.
Is active | boolean | standard | Defines whether the statement is active.
Result | String | standard | Defines the handler's default resulting value.<br/>Depending on the handler type, this property can be chosen among several available values.<br/>For a <i>Default exit handler</i>, this property can take the following values:<br/><br/>• <span class="computer">&lt;empty&gt;</span> or <span class="computer">""</span>: stops the process and ends the transaction, <br/>• <span class="computer">continue</span>: similar to <span class="computer">&lt;empty&gt;</span> value, <br/>• <span class="computer">accumulate</span>: accumulates extracted data (data is extracted from last detected screen class then added to any other extracted data) and redetects a new screen class.<br/><br/><span class="orangetwinsoft">Note:</span> The <i>Handler</i>'s default return value defined thanks to this property can be overridden by a child <i>Return</i> statement.
