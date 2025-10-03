---
layout: page
title: Font
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/custom-components/font/
metadesc: Defines a  Font  component.    This component helps installing open font sources.  You can add  Font  components to the  Application  and to any  Shar
ObjGroup: Customs
ObjCatName: custom-components
ObjName: UIFont
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UIFont
ObjIcon: /images/beans/ngx/components/dynamic/images/uifont_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Font</i> component. <br/>

 <p>This component helps installing open font sources.</p><p>You can add <i>Font</i> components to the <i>Application</i> and to any <i>Shared component</i>.</p><p>The precedence depends on the <i>Font</i> components ordering.</p><p>If <i>Font</i> is set as <code>default</code> it will be installed and used by default for whole app or shared component.</p><p>Otherwise it will be installed and you may use a <i>FontStyle</i> under any Text container component to use it.</p><p>For more information: <a href='https://fontsource.org'>Fontsource</a>.</p>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Default | Specifies if font is used by default for whole app or shared component.  <p>If <code>true</code> font is installed and declared as part of default fonts for whole app or shared component.</p><p>If <code>false</code> font is just installed. You need to use it through a <i>FontStyle</i> component.</p>
Definition | Defines the font definition.  <p>You can choose here the open Fontsource you will install in your app.</p>
Is active | Defines whether the component is active.

