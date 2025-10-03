---
layout: page
title: FullSync Delete Listener Filter
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/fullsync/fullsync-delete-listener-filter/
metadesc: Defines a FullSync synchronization listener for deleted documents (by filter).    A  FullSync Delete Listener Filter  is a listener which helps handli
ObjGroup: FullSync
ObjCatName: 
ObjName: FullSync Delete Listener Filter
ObjClass: com.twinsoft.convertigo.beans.couchdb.FullSyncDeleteFilterListener
ObjIcon: /images/beans/couchdb/images/fullsynclistener_color_32x32.png
topnav: topnavobj
---
##### Defines a FullSync synchronization listener for deleted documents (by filter).

A **FullSync Delete Listener Filter** is a listener which helps handling synchronization for a FullSync database.

A FullSync listener will associate a filter and a sequence in this way:

- When a removed document on the mobile device is replicated on Convertigo Server the listener will call its filter passing the docid
- The Filter is responsible for filtering the document, for example testing if this document belongs to a specific family or type
- The Listener's sequence will be called with a list of every document returned by the filter so that the sequence can delete data in the back-end applications. The document list will be in a single valued input variable named 'doc'. In your delete sequence, use an iterator to iterate on each 'item' to handle the delete of each document on the back-end

It is very important that the views used by listeners have their index based on docids. So, the map function of a 'listenable' view must be be in this form :emit(doc._id, ....)


Property | Type | Category | Description
--- | --- | --- | ---
Chunk size | int | standard | Defines the maximum number of incoming documents for the target sequence. If the replication contains more than **Chunk size**, the target sequence will be called multiple times. **0** or a negative value disable the listener.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Filter | String | standard | Defines the target design document's filter from this connector to query. The default '_doc_ids' filter is like a "listen changes for all documents". A custom filter can be use but they must include this code in order to filter actual changes: var doc_ids = JSON.parse(req.body)["doc_ids"]; for (var i = 0; i < doc_ids.length; i++) { if (doc_ids[i] == doc._id) { // put your condition here return true; } }
Is active | boolean | standard | Defines whether the listener is active.
Sequence | String | standard | Defines the target sequence to request, filtered by the view when data is modified on the mobile. The sequence should define a **doc** multi valued variable to receive the affected documents.
