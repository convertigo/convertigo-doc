---
layout: page
title: Log
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/others/log/
metadesc: Produces output data in log file.   This statement outputs a message in context or engine logger (defined thanks to the  Engine  property), for the lo
ObjGroup: Web
ObjCatName: others
ObjName: Log
ObjClass: com.twinsoft.convertigo.beans.statements.LogStatement
ObjIcon: /images/beans/statements/images/log_32x32.png
topnav: topnavobj
---
##### Produces output data in log file. 

This statement outputs a message in context or engine logger (defined thanks to the <b>Engine</b> property), for the log level defined in the <b>Level</b> property. <br/>The message to output is generated from the JavaScript expression defined in <b>Expression</b> property.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Engine | boolean | standard | Defines if the log is to be output in <span class="computer">Engine</span> logger or default <span class="computer">Context</span> logger.<br/>This property allows to choose the <span class="computer">logger</span> on which the log applies. <br/>If set to <span class="computer">true</span>, the message will be seen as output by the Convertigo Engine. If set to <span class="computer">false</span> (default value), the message will be seen as output by the running Context.
Expression | JS expression | standard | Defines the expression evaluated to give the text to output.<br/>This property is a JavaScript expression that is evaluated during the transaction execution and gives the text string to output in log file.
Is active | boolean | standard | Defines whether the statement is active.
Level | String | standard | Defines the <span class="computer">log level</span> on which the log applies.<br/>This property defines the minimum level of log for which the message has to be output. The message will be output for any log level superior or equals to this property value.<br/>Log levels possible values are the following, by ascending order:<br/><br/>• <span class="computer">ERROR</span>, <br/>• <span class="computer">WARN</span>, <br/>• <span class="computer">INFO</span>, <br/>• <span class="computer">DEBUG</span>, <br/>• <span class="computer">TRACE</span>.<br/>
