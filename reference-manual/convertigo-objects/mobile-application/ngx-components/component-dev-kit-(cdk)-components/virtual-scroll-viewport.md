---
layout: page
title: Virtual Scroll Viewport
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/component-dev-kit-(cdk)-components/virtual-scroll-viewport/
metadesc: cdk-virtual-scroll-viewport  Defines a  Virtual Scroll Viewport  component. This component helps displaying large lists of elements performantly by on
ObjGroup: Component Dev Kit (CDK)
ObjCatName: component-dev-kit-(cdk)-components
ObjName: CdkVirtualScrollViewport
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/cdk_virtualscrollviewport_32x32.png
topnav: topnavobj
---
cdk-virtual-scroll-viewport<br/>

##### Defines a <i>Virtual Scroll Viewport</i> component.<br/>
This component helps displaying large lists of elements performantly by only rendering the items that fit on-screen.<br/>
Loading hundreds of elements can be slow in any browser; virtual scrolling enables a performant way to simulate all items being rendered by making the height of the container element the same as the height of total number of elements to be rendered, and then only rendering the items in view.<br/>
Virtual scrolling is different from strategies like infinite scroll where it renders a set amount of elements and then when you hit the end renders the rest.<br/>
This component works with the <i>CdkVirtualFor</i> Directive to specify scrollable items to render.<br/>
 For more information: <a href='https://material.angular.io/cdk/scrolling/overview'>Virtual scrolling</a>.

Name | Description 
--- | ---
Append only | Whether rendered items should persist in the DOM after scrolling out of view. By default, items will be removed.
Buffer max | The number of pixels worth of buffer to render for when rendering new items. Defaults to 200.
Buffer min | The minimum amount of buffer rendered beyond the viewport (in pixels). If the amount of buffer dips below this number, more items will be rendered. Defaults to 100.
Item size | The size of the items in the list (in pixels).
Orientation | The direction the viewport scrolls.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Identifier | Defines the component identifier.
Is active | Defines whether the component is active.

