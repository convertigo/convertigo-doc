---
layout: page
title: FullSync Update Listener View
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/fullsync/fullsync-update-listener-view/
metadesc: Defines a FullSync synchronization listener for updated documents (by view).    A  FullSync Update Listener View  is a listener which helps handling s
ObjGroup: FullSync
ObjCatName: 
ObjName: FullSync Update Listener View
ObjClass: com.twinsoft.convertigo.beans.couchdb.FullSyncListener
ObjIcon: /images/beans/couchdb/images/fullsynclistener_color_32x32.png
topnav: topnavobj
---
##### Defines a FullSync synchronization listener for updated documents (by view).

A **FullSync Update Listener View** is a listener which helps handling synchronization for a FullSync database.

A FullSync listener will associate a view and a sequence in this way:

- When a modified or created document on the mobile device is replicated on Convertigo Server the listener will call its view passing the docid
- The View is responsible for filtering the document, for example testing if this document belongs to a specific family or type
- The Listener's sequence will be called with a list of every document returned by the view so that the sequence can update data in the back-end applications. The document list will be in a single valued input variable named 'doc'. In your Update sequence, use an iterator to iterate on each 'item' to handle the update of each document on the back-end

It is very important that the views used by listeners have their index based on docids. So, the map function of a 'listenable' view must be be in this form :emit(doc._id, ....)


Property | Type | Category | Description
--- | --- | --- | ---
Chunk size | int | standard | Defines the maximum number of incoming documents for the target sequence. If the replication contains more than **Chunk size**, the target sequence will be called multiple times. **0** or a negative value disable the listener.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the listener is active.
Sequence | String | standard | Defines the target sequence to request, filtered by the view when data is modified on the mobile. The sequence should define a **doc** multi valued variable to receive the affected documents.
View | String | standard | Defines the target design document's view from this connector to query. The view must **emit** the **doc._id** in order to work properly.
