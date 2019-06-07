---
layout: page
title: Get Data
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/get-data/
metadesc: Defines a  Get Data  action component.   This component helps getting (get) data from a FullSync database. Get Data returns an object containing the r
ObjGroup: FullSync Actions
ObjCatName: fullsync-action-components
ObjName: FullSyncGetAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/fsgetaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Get Data</i> action component. <br/>

 This component helps getting (get) data from a FullSync database. Get Data returns an object containing the requested document. From an underneath action, you can access this value trough the <i>out</i> typescript variable. For more information : <a target='_blank' href='https://www.convertigo.com/document/latest/reference-manual/convertigo-full-sync-architecture/interacting-locally-with-the-data/'>interacting-locally-with-the-data/</a>. <br/>
<br/>
 If you want to disable laoding controller, you can set property <i>disable loading controller</i> to true.

Name | Description 
--- | ---
Database | Defines the target FullSync Data base to get data from.
Disable loading controller | Defines if we want to disable loading controller showing
Live | If set to an ID,  will automatically monitor any database change (from continuous replication or from local changes) and re-run the query. Using 'Live' is the best way to refresh automatically your UI when data changes in the database. You can cancel an 'live' view by calling the c8o.cancelLive(id) API.
Marker | Use Markers to differentiate <i>get</i>s in order to be able to listen to a given <i>get</i> response. Use <code>listen([fs://mydatabase.get#MYMARKER])</code> syntax to listen to a given 'Marked' get.
Unique ID | The Document ID for this get.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

