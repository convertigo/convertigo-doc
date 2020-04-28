---
layout: page
title: Directive
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/directive/
metadesc: Defines a  Directive  component.   Angular's structural directives are responsible for HTML layout. They shape or reshape the DOM's structure, typical
ObjGroup: Mobile Application
ObjCatName: control-components
ObjName: Directive
ObjClass: com.twinsoft.convertigo.beans.ngx.components.UIControlDirective
ObjIcon: /images/beans/ngx/components/images/uicontroldirective_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Directive</i> component. 

Angular's structural directives are responsible for HTML layout. They shape or reshape the DOM's structure, typically by adding, removing, or manipulating elements.<br/>Directives can be:<br> • <b>ForEach</b>  - each occurrence of a source collection will generate an UI Component<br> • <b>If</b> 		- the UI Component will be displayed If the source is true<br> • <b>Switch, Switch, SwichtDefault</b> 	- the UI Component will be displayed with the Switch options<br/><br/>For more information: <a href='https://angular.io/guide/structural-directives' target='_blank'>Structural Directives</a>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Directive type | String | standard | Defines the directive type.<br/>
Is active | boolean | standard | Defines whether the component is active.<br/>
Tag name | String | standard | Defines the HTML element's tag name.<br/>
Directive expression | JS expression | expert | Defines a directive condition or expression.<br/>
Directive source | MobileSmartSourceType | expert | Defines the directive source.<br/>
ForEach index | String | expert | Defines the ForEach index name.<br/>Use TS <b>scope.indexName</b> to access its value in other components.
ForEach item | String | expert | Defines the ForEach item name.<br/>Use TS <b>scope.itemName</b> to access its value in other components.
