---
layout: page
title: Tab management
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/browser-control-statements/tab-management/
metadesc: Manages browser tabs.   Pop-ups opening in the internal browser can be opened as tabs (depending on the value of the browser  Window open  setting). T
ObjGroup: Web
ObjCatName: browser-control-statements
ObjName: Tab management
ObjClass: com.twinsoft.convertigo.beans.statements.TabManagementStatement
ObjIcon: /images/beans/statements/images/tabmanagement_32x32.png
topnav: topnavobj
---
##### Manages browser tabs. 

Pop-ups opening in the internal browser can be opened as tabs (depending on the value of the browser <b>Window open</b> setting). This statement allows to open, close, move, etc. browser tabs.

Property | Type | Category | Description
--- | --- | --- | ---
Action | String | standard | Defines the action to be performed on browser tabs.<br/>Available actions are the following:<br/><br/>• close: closes the current tab,<br/>• new: opens a new tab,<br/>• getnbtab: retrieves the number of open tabs in a JavaScript variable,<br/>• getindex: retrieves the current tab index in a JavaScript variable,<br/>• next: set focus on the next tab,<br/>• previous: set focus on the previous tab,<br/>• setindex: places focus on the tab of specified index.<br/>
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
JS index | JS expression | standard | Defines the JavaScript expression resulting in the index of the tab to be used.<br/>This property has to be filled when the <b>Action</b> property is set to an action that is concerned by a tab index value.
Variable name | String | standard | Defines the name of the variable in which data is retrieved.<br/>This property has to be filled when the <b>Action</b> property is set to an action that is concerned by retrieving a value in a JS variable (retrieving the current tab index, "getindex" action, or number of tab, "getnbtab" action).
