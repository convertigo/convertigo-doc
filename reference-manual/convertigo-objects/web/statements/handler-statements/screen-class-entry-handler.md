---
layout: page
title: Screen class entry handler
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/handler-statements/screen-class-entry-handler/
metadesc: Defines a screen class entry handler.   A  Handler  is similar to a <span class="computer">Function  except that it is automatically executed when the
ObjGroup: Web
ObjCatName: handler-statements
ObjName: Screen class entry handler
ObjClass: com.twinsoft.convertigo.beans.statements.ScEntryHandlerStatement
ObjIcon: /images/beans/statements/images/handler_entry_32x32.png
topnav: topnavobj
---
##### Defines a screen class entry handler. 

A <i>Handler</i> is similar to a <span class="computer">Function</span> except that it is automatically executed when the associated event occurs. The <i>Screen class entry handler</i> is a handler associated with the entry on a screen class event. It is executed when Convertigo detects the screen class corresponding to this <i>Screen class entry handler</i>, before executing the extraction rules associated with this screen class.<br/>In other words, a <i>Screen class entry handler</i> is executed when arriving on the screen class associated with this handler.<br/><span class="orangetwinsoft">Notes:</span> <br/><br/>• A <i>Screen class entry handler</i> contains other statements that define the actions to be performed on this screen class. It can return a result value (<span class="computer">redetect</span> by default as it is an entry handler).<br/>• <i>Screen class entry handlers</i> can only be added to a transaction, one <i>Screen class entry handler</i> for each screen class per transaction.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Infinite loop protection | boolean | standard | Defines whether the handler should be protected against infinite loops in transaction.<br/>If set to <span class="computer">true</span> (default value), the handler prevents infinite loops by throwing a Convertigo Engine exception when an infinite loop is detected. <br/>Default value should not be changed unless you specifically want the handler to authorize loops in transaction.
Is active | boolean | standard | Defines whether the statement is active.
Result | String | standard | Defines the handler's default resulting value.<br/>Depending on the handler type, this property can be chosen among several available values.<br/>For a <i>Screen class entry handler</i>, this property can take the following values:<br/><br/>• <span class="computer">&lt;empty&gt;</span> or <span class="computer">""</span>: goes on and extracts data using extraction rules, <br/>• <span class="computer">continue</span>: similar to <span class="computer">&lt;empty&gt;</span> value, <br/>• <span class="computer">redetect</span>: does not extract data and redetects a new screen class, <br/>• <span class="computer">skip</span>: stops the transaction without extracting data.<br/><br/><span class="orangetwinsoft">Note:</span> The <i>Handler</i>'s default return value defined thanks to this property can be overridden by a child <i>Return</i> statement.
Screen class | String | standard | Defines the screen class to be monitored.<br/>This property allows to associate the <i>Screen class handler</i> with the screen class on which it is executed. The possible values for this property are generated from the screen classes defined in the connector.<br/>If the screen class is renamed in the connector, the <b>Screen class</b> property of associated <i>Screen class handlers</i> (entry or exit) are automatically updated.
