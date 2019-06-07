---
layout: page
title: FSImage
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/fullsync-components/fsimage/
metadesc: img.   Defines an  FSImage  component. This component helps displaying an image based on data retrieved from a FullSync  attachment.  Attachment image
ObjGroup: FullSync Components
ObjCatName: fullsync-components
ObjName: FSImage
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/img_fs_color_32x32.png
topnav: topnavobj
---
img. <br/>

##### Defines an <i>FSImage</i> component.<br/>
This component helps displaying an image based on data retrieved from a FullSync  attachment.<br/>
<br/>
Attachment images are automatically cached using the attachmentName as cache key by the CAF to enable fast rendering.<br/>
<br/>
In some cases you may want to clear this cache for example if the image content changes for the same attachmentName.<br/>
In this case, use below code in a <i>CustomAction</i> :<br/>
- to clear the cache for a given documentID and attachmentName<br/>
<code>page.resetImageCache(documentID/attachmentName)</code><br/>
- to clear all cache entries<br/>
<code>page.resetImageCache()</code>

Name | Description 
--- | ---
Attachment name | The attachment name.
Attachment placeholder | The url placeholder for this attachment.
Database | The fullsync database.
Document ID | The document ID for this attachment.
Image height | The image height (in pixels add px eg: 200px, in points add pt eg: 20pt).
Image text | The image alternate text (optional).
Image width | The image width (in pixels add px eg: 200px, in points add pt eg: 20pt).
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

