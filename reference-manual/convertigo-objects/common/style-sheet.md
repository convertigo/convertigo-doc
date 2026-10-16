---
layout: page
title: Style sheet
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/style-sheet/
metadesc: Defines an XSL style sheet.    Style sheets  are associated with screen classes or transactions and with sequences. They are used to define the displa
ObjGroup: Common
ObjCatName: 
ObjName: Style sheet
ObjClass: com.twinsoft.convertigo.beans.core.Sheet
ObjIcon: /images/beans/core/images/sheet_color_32x32.png
topnav: topnavobj
---
##### Defines an XSL style sheet. 

<i>Style sheets</i> are associated with screen classes or transactions and with sequences. They are used to define the display of data collected by the transaction or sequence, by performing a transformation of transaction or sequence XML outputs. <br/>Moreover, <i>Style sheets</i> allow the Convertigo developer to manage the user interface's display depending on the client browser. 

Property | Type | Category | Description
--- | --- | --- | ---
Browser | String | standard | Defines the target browser (<span class="computer">*</span> means all browsers).<br/>This property allows to define on which browser the <i>Style sheet</i> has to be applied. The list of available browsers is declared in the project's <b>Browsers</b> property. <br/>One <i>Style sheet</i> can be created for each declared browser on the same parent object (screen class, transaction or sequence).
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
URL | String | standard | Defines the <i>Style sheet</i> URL (relative or absolute).<br/>This property allows to define the path to the XSL file represented by this <i>Style sheet</i> object.
