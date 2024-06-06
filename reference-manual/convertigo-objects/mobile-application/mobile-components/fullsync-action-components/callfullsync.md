---
layout: page
title: CallFullSync
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/fullsync-action-components/callfullsync/
metadesc: Defines a  CallFullSync  action component.   FullSync calls are used to interact with the local offline data synchronized database. You can use this c
ObjGroup: FullSync Actions
ObjCatName: fullsync-action-components
ObjName: CallFullSyncAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/callfullsyncaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>CallFullSync</i> action component. <br/>

 FullSync calls are used to interact with the local offline data synchronized database. You can use this call to get, post, delete and query (View) data from the database.<br/>
<br/>
For more information about FullSync and local FullSync verbs see <a href='https://www.convertigo.com/documentation/latest/reference-manual/convertigo-mbaas-server/convertigo-full-sync-architecture/#interacting-locally-on-the-mobile-with-the-data'>interacting-locally-with-the-data/</a>. <br/>
<br/>
 If you want to disable loading controller, you can set property <i>disable loading controller</i> to true.

Name | Description 
--- | ---
Disable loading controller | Defines if we want to disable loading controller showing
Marker | Defines the requestable's marker. Markers are used to differentiate fullsync requests from one to another so you can handle routes more easily.
Requestable | Defines the FullSync database.
Verb | Defines the fullsync verb.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

