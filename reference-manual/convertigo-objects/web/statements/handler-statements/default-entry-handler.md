---
layout: page
title: Default entry handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/handler-statements/default-entry-handler/
metadesc: Defines a transaction default entry handler.   A  Handler  is similar to a <span class="computer">Function  except that it is automatically executed w
ObjGroup: Web
ObjCatName: handler-statements
ObjName: Default entry handler
ObjClass: com.twinsoft.convertigo.beans.statements.ScEntryDefaultHandlerStatement
ObjIcon: /images/beans/statements/images/handler_entry_32x32.png
topnav: topnavobj
---
##### Defines a transaction default entry handler. 

A <i>Handler</i> is similar to a <span class="computer">Function</span> except that it is automatically executed when the associated event occurs. The <i>Default entry handler</i> is a screen class entry handler, associated with an entry on a screen class event. If present in a transaction, it is executed when no specific screen class entry handler is defined for the currently detected screen class. In other words, it is a generic screen class entry handler.<br/>Thus, <i>Default entry handler</i> can be defined for multiple screen classes on which the programmer knows that the same actions are to be done.<br/>Beware that this handler will be executed for the <span class="computer">Default_screen_class</span> screen class if no specific handler is defined for this screen class. As the <span class="computer">Default_screen_class</span> screen class matches every page that is not defined in the connector, this handler can potentially be executed on a lot of unmanaged pages. Such behaviors can lead to infinite loop transactions.<br/><span class="orangetwinsoft">Notes:</span> <br/><br/>• A <i>Default entry handler</i> contains other statements that define the actions to be performed. It can return a result value (<span class="computer">redetect</span> by default as this is an entry handler).<br/>• <i>Default entry handlers</i> can only be added to a transaction, one <i>Default entry handler</i> per transaction.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Infinite loop protection | boolean | standard | Defines whether the handler should be protected against infinite loops in transaction.<br/>If set to <span class="computer">true</span> (default value), the handler prevents infinite loops by throwing a Convertigo Engine exception when an infinite loop is detected. <br/>Default value should not be changed unless you specifically want the handler to authorize loops in transaction.
Is active | boolean | standard | Defines whether the statement is active.
Result | String | standard | Defines the handler's default resulting value.<br/>Depending on the handler type, this property can be chosen among several available values.<br/>For a <i>Default entry handler</i>, this property can take the following values:<br/><br/>• <span class="computer">&lt;empty&gt;</span> or <span class="computer">""</span>: goes on and extracts data using extraction rules, <br/>• <span class="computer">continue</span>: similar to <span class="computer">&lt;empty&gt;</span> value, <br/>• <span class="computer">redetect</span>: does not extract data and redetects a new screen class, <br/>• <span class="computer">skip</span>: stops the transaction without extracting data.<br/><br/><span class="orangetwinsoft">Note:</span> The <i>Handler</i>'s default return value defined thanks to this property can be overridden by a child <i>Return</i> statement.
