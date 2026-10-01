---
layout: page
title: Put Attachment
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/fullsync-action-components/put-attachment/
metadesc: Defines a  Put Attachment  action component.   This component helps putting (put_attachment) attachments on a FullSync database document.  For more in
ObjGroup: FullSync Actions
ObjCatName: fullsync-action-components
ObjName: FullSyncPutAttachmentAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/putattachementaction_32x32.png
topnav: topnavobj
---
##### Defines a <i>Put Attachment</i> action component. <br/>

 This component helps putting (put_attachment) attachments on a FullSync database document.<br/>
 For more information : <a href='https://www.convertigo.com/documentation/latest/reference-manual/convertigo-mbaas-server/convertigo-full-sync-architecture/#interacting-locally-on-the-mobile-with-the-data'>interacting-locally-with-the-data/</a>. <br/>
<br/>
 If you want to disable loading controller, you can set property <i>disable loading controller</i> to true.

Name | Description 
--- | ---
Content | The content of this attachment. It can be a Binary (Blob), a Base64, or a file URI
Content type | The content type of this attachment.
Database | Defines the target FullSync Data base to post data to.
Disable loading controller | Defines if we want to disable loading controller showing
Document ID | The Document ID on an existing Document that will receive the attachment.
Name | The name of the attachment to put on the document.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

