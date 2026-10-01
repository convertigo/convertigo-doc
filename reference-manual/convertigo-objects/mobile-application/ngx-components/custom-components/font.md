---
layout: page
title: Font
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/custom-components/font/
metadesc: Defines a  Font  component.   This component helps installing open font sources.  You can add  Font  components to the  Application  and to any  Share
ObjGroup: Customs
ObjCatName: custom-components
ObjName: UIFont
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UIFont
ObjIcon: /images/beans/ngx/components/dynamic/images/uifont_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Font</i> component. <br/>

 This component helps installing open font sources.<br/>
 You can add <i>Font</i> components to the <i>Application</i> and to any <i>Shared component</i>.<br/>
 The precedence depends on the <i>Font</i> components ordering.<br/>
 If <i>Font</i> is set as <code>default</code> it will be installed and used by default for whole app or shared component.<br/>
 Otherwise it will be installed and you may use a <i>FontStyle</i> under any Text container component to use it.<br/>
<br/>
 For more information: <a href='https://fontsource.org'>Fontsource</a>.

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Default | Specifies if font is used by default for whole app or shared component.  If <code>true</code> font is installed and declared as part of default fonts for whole app or shared component.<br/> If <code>false</code> font is just installed. You need to use it through a <i>FontStyle</i> component.
Definition | Defines the font definition.  You can choose here the open Fontsource you will install in your app.
Is active | Defines whether the component is active. 

