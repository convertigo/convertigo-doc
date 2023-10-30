---
layout: page
title: Credentials
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/browser-control-statements/credentials/
metadesc: Defines authentication credentials.   This statement allows setting credentials to access any application supporting basic authentication (<span class
ObjGroup: Web
ObjCatName: browser-control-statements
ObjName: Credentials
ObjClass: com.twinsoft.convertigo.beans.statements.CredentialsStatement
ObjIcon: /images/beans/statements/images/credentials_32x32.png
topnav: topnavobj
---
##### Defines authentication credentials. 

This statement allows setting credentials to access any application supporting basic authentication (<span class="computer">WWW-Authenticate</span>). This statement can be used in a <span class="computer">login</span> transaction where the caller provides credentials to access the target application.<br/>Credentials set for this statement override the connector's credentials property. The statement must be executed before any other statement possibly needing the same credentials. This statement is usually set as part of a <i>Start transaction handler</i> (<span class="computer">onTransactionStarted</span> event handler).

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
Password | JS expression | standard | Defines the user password.<br/><span class="computer">WWW-Authenticate</span> password. May be any JavaScript expression using transaction variables.
User | JS expression | standard | Defines the user name.<br/><span class="computer">WWW-Authenticate</span> user. May be any JavaScript expression using transaction variables.
Force basic | boolean | expert | Force sending <span class="computer">Basic</span> header with those credentials for each <i>HTML connector</i> request.<br/>If set to <span class="computer">true</span>, all requests sent by the <i>HTML connector</i> for which these credentials were positioned send credentials in the <span class="computer">Basic</span> header.
