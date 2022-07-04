---
layout: page
title: Font
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/custom-components/font/
metadesc: Defines a  Font  component.   This component helps installing open font sources.  You can add  Font  components to the  Application  and to any  Share
ObjGroup: Mobile Application
ObjCatName: custom-components
ObjName: Font
ObjClass: com.twinsoft.convertigo.beans.ngx.components.UIFont
ObjIcon: /images/beans/core/images/default_color_16x16.png
topnav: topnavobj
---
##### Defines a <i>Font</i> component. 

This component helps installing open font sources.<br/> You can add <i>Font</i> components to the <i>Application</i> and to any <i>Shared component</i>.<br/> The precedence depends on the <i>Font</i> components ordering.<br/> If <i>Font</i> is set as <code>default</code> it will be installed and used by default for whole app or shared component.<br/> Otherwise it will be installed and you may use a <i>FontStyle</i> under any Text container component to use it.<br/><br/> For more information: <a href='https://fontsource.org/fonts'>Fontsource</a>.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Default | boolean | standard | Specifies if font is used by default for whole app or shared component.<br/>If <code>true</code> font is installed and declared as part of default fonts for whole app or shared component.<br/> If <code>false</code> font is just installed. You need to use it through a <i>FontStyle</i> component.
Definition | FontSource | standard | Defines the font definition.<br/>You can choose here the open Fontsource you will install in your app.
Is active | boolean | standard | Defines whether the component is active.<br/>
