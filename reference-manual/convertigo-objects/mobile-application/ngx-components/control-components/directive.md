---
layout: page
title: Directive
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/control-components/directive/
metadesc: Defines a  Directive  component.    Angular's  structural directives  are responsible for HTML layout. They shape or reshape the DOM's structure, typi
ObjGroup: Controls
ObjCatName: control-components
ObjName: UIControlDirective
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UIControlDirective
ObjIcon: /images/beans/ngx/components/dynamic/images/uicontroldirective_32x32.png
topnav: topnavobj
---
##### Defines a <i>Directive</i> component. <br/>

 <p>Angular's <b>structural directives</b> are responsible for HTML layout. They shape or reshape the DOM's structure, typically by adding, removing, or manipulating elements. They can be: </p><p> • <b>ForEach</b>  - each occurrence of a source collection will generate an UI Component <br> • <b>If</b> 		- the UI Component will be displayed If the source is true <br> • <b>Switch, SwitchCase, SwitchDefault</b> 	- the UI Component will be displayed with the Switch options</p><p>For more information: <a href='https://angular.io/guide/structural-directives' target='_blank'>Structural Directives</a></p><p><br></p><p>Angular templates support <b>Control flow blocks</b> that let you conditionally show, hide, and repeat elements. They can be: </p><p> • <b>NewFor, NewEmpty</b>  - the @for block loops through a collection and repeatedly renders the UI Component, use @empty block for fallback <br> • <b>NewIf, NewElseIf, NewElse</b> - the UI Component will be displayed if the source is true, use @elseif @else to display alternative content <br> • <b>NewSwitch, NewSwitchCase, NewSwitchDefault</b> 	- the UI Component will be displayed with the @switch options @case, @default</p><p>For more information: <a href='https://v20.angular.dev/guide/templates/control-flow' target='_blank'>Control flow blocks</a></p>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Directive type | Defines the directive type.
Is active | Defines whether the component is active.
Tag name | Defines the HTML element's tag name.
Directive expression | Defines a directive condition or expression.
Directive source | Defines the directive source.
ForEach index | Defines the ForEach index name.  <p>Use TS <b>scope.indexName</b> to access its value in other components.</p>
ForEach item | Defines the ForEach item name.  <p>Use TS <b>scope.itemName</b> to access its value in other components.</p>

