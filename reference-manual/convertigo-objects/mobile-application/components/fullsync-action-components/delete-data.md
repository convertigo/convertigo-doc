---
layout: page
title: Delete Data
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/delete-data/
metadesc: Defines a  Delete Data  action component.   This component helps deletting (delete) data from a FullSync database. Delete Data returns an object conta
ObjGroup: FullSync Actions
ObjCatName: fullsync-action-components
ObjName: FullSyncDeleteAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/fsdeleteaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Delete Data</i> action component. <br/>

 This component helps deletting (delete) data from a FullSync database. Delete Data returns an object containing deletion status and document id and rev. From an underneath action, you can access this value trough the out typescript variable. For more information : <a target='_blank' href='https://www.convertigo.com/document/latest/reference-manual/convertigo-full-sync-architecture/interacting-locally-with-the-data/'>interacting-locally-with-the-data/</a>. <br/>
<br/>
 If you want to disable laoding controller, you can set property <i>disable loading controller</i> to true.

Name | Description 
--- | ---
Database | Defines the target FullSync Data base to get data from.
Disable loading controller | Defines if we want to disable loading controller showing
Marker | Use Markers to differentiate <i>delete</i>s in order to be able to listen to a given <i>get</i> response. Use <code>listen([fs://mydatabase.delete#MYMARKER])</code> syntax to listen to a given 'Marked' delete.
Revision | The Document revision id for this delete. (optional).
Unique ID | The Document id for this delete.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

