---
layout: page
title: Sync Data
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/sync-data/
metadesc: Defines a  Sync Data  action component.   This component helps synchronizing data using FullSync. Use this action to synchronize data between your app
ObjGroup: FullSync Actions
ObjCatName: fullsync-action-components
ObjName: FullSyncSyncAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/fssyncaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Sync Data</i> action component. 
 This component helps synchronizing data using FullSync.
Use this action to synchronize data between your application and the Convertigo server.
Sync process can be bi-directional or just a pull or push. It can also be one shot or continuous.
If the sync is continuous, any data modification made locally on your mobile will be reflected real-time on the Convertigo server FullSync data base.

You can use <i>Sync Data</i> when you start an app, but you must have an authenticated session to Convertigo server if you want to be able to push data to it. A typical flow would be :

 • Authenticate the user on your app
 • Then call a 'login' server <i>Sequence</i> that will execute the <i>SetAuthenticatedUser</i> step providing it with the authenticated user
 • Then use <i>Sync Data</i> to sync the data from/to you mobile app.
The <i>Sync Data</i> action will be finished when all the data will be synced to/from the device and when finished, you can display the first page of your app using a <i>RootPage</i> action.

You can access the sync progress information from anywhere in your application using the.

<code>router.sharedObject.FullSyncSyncAction.progress.current</code>.

object.
For more information : <a target='_blank' href='https://www.convertigo.com/document/latest/reference-manual/convertigo-full-sync-architecture/interacting-locally-with-the-data/'>interacting-locally-with-the-data/</a>.

<b>Note :</b>.
If the database is replicated for the first time, the action will wait for a full replication before executing next action. If the database has already been replicated once, the replication will start and execute next action immediately having the replication going on in the background, thus allowing to display the first page of the app immediately.

Name | Description 
--- | ---
Batch Limit | Number of batches to process at a time. Defaults to 10. This (along with batch_size) controls how many docs are kept in memory at a time, so the maximum docs in memory at once would equal batch_size � batches_limit.
Batch Size | Number of documents to process at a time. Defaults to 100. This affects the number of docs held in memory and the number sent at a time to the Convertigo server.
Database | Defines the target FullSync Data base to sync.
Retry policy | If true will attempt to retry replications in the case of failure (due to being offline), using a backoff algorithm that retries at longer and longer intervals until a connection is re-established. Only applicable if sync mode is continuous.
Sync Mode | Sync mode can be one-shot, or continuous. .
Sync direction | Direction of data synchronization, bi-directionnal, push (Data to Server), pull (Data from server).
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

