---
layout: page
title: Tooltips
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/miscellaneous-components/tooltips/
metadesc:    Defines a  Tooltip  component. The  Tooltip  is a pop-up tip that appears when you hover over an item or click on it.  To use it, place the  Toolti
ObjGroup: Miscellaneous
ObjCatName: miscellaneous-components
ObjName: Tooltips
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/tooltips_32x32.png
topnav: topnavobj
---
 <br/>

##### Defines a <i>Tooltip</i> component. The <i>Tooltip</i> is a pop-up tip that appears when you hover over an item or click on it.<br/>
 To use it, place the <i>Tooltip</i> inside any component such as <i>Button</i> or <i>Generic item</i>.<br/>
Usage for the <i>Tooltip content</i> to be displayed according to the <i>Tooltip content type</i> property:</br><ul><li>string:</br>[TX mode] <code>A simple tooltip string</code></li><li>html:</br>[TX mode] <code><span>Hello i'm a <strong>bold</strong> text!</span></code></li><li>template:</br>[TS mode] <code>this.MyNgTemplateIdentifier</li></ul><br/>
 For more information: <a href='https://www.npmjs.com/package/ng2-tooltip-directive'>ng2-tooltip-directive</a>.

Name | Description 
--- | ---
Animation duration | The duration controls how long the animation takes to run from start to finish.
Auto placement | Place the tooltip so that it does not go beyond the borders of the browser window.
Coordinates | The tooltip coordinates relative to the browser window, e.g. in TS mode: {top: number, left: number} 
Display | The tooltip availability for display.
Display on touch screen | Display the tooltip on mobile devices.
Hide delay | The delay in ms before removing the tooltip.
Hide delay (click) | Tooltip hiding delay for 'click' trigger.
Hide delay (touch) | Delay in milliseconds before hiding the tooltip (for mobile devices).
Max width | Maximum width of the tooltip in pixels.
Offset | Offset the tooltip relative to the item.
Pointer events | Defines whether or not an element reacts to pointer events.
Position | The position of the tooltip.
Shadow | Shadow of the tooltip.
Show delay | The delay in ms before showing the tooltip.
Theme | Theme of tooltip background and text.
Tooltip classes | Comma separated class names to be passed to the tooltip.
Tooltip content | The content to be displayed in the popup according to the <i>Tooltip content type</i> property.<br/>Usage according to content type:</br><li>string:</br>[TX mode] <code>A simple tooltip string</code>
<li>html:</br>[TX mode] <code><span>Hello i'm a <strong>bold</strong> text!</span></code>
<li>template:</br>[TS mode] <code>this.MyNgTemplateIdentifier

Tooltip content type | The content type passed to the tooltip.
Trigger event | Specifies how the tooltip is triggered. Control the closing time with 'Hide delay' property.
Width | Width of the tooltip in pixels.
Z-index | Z-index of the tooltip.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

