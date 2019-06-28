---
layout: page
title: Image
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/html-components/image/
metadesc: img  Defines an  Image  component. This component acts as the standard HTML img tag. An  Image  can be used alone or within a  Thumbnail Item  or  Ava
ObjGroup: HTML
ObjCatName: html-components
ObjName: Image
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/img_HTML_color_32x32.png
topnav: topnavobj
---
img
##### Defines an <i>Image</i> component.
This component acts as the standard HTML img tag.
An <i>Image</i> can be used alone or within a <i>Thumbnail Item</i> or <i>Avatar Item</i> component.
Configure its <i>src</i> property to the source url of the image. It can be a local url: <code>assets/myimage.png</code> or a remote url: <code>https://server.data/image/myimage.png</code> or even a base64 data url.

<i>Image</i> used alone can be configured in size trough its <i>width</i> and <i>height</i> properties. These can be pixels: <code>100px</code> or percentage of the available space: <code>100%</code>.
To center an <i>Image</i>, place it inside a <i>Text Format</i> component with property <i>Align center</i> set.
 For more information: <a href='https://www.w3schools.com/tags/tag_img.asp' target='_blank'>Image</a>.

Name | Description 
--- | ---
alt | Set the alt attribute which gets assigned to the inner img element.
height | The image height (in pixels add px eg: 200px, in points add pt eg: 20pt).
src | The image url. Can be absolute (http(s)://) or relative to project (assets/myimage.png). Can also be a Base64 Embedded images (data:image/png;base64,iVBORw0.......).
width | The image width (in pixels add px eg: 200px, in points add pt eg: 20pt).

