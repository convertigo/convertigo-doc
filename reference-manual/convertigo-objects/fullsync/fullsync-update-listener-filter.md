---
layout: page
title: FullSync Update Listener Filter
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/fullsync/fullsync-update-listener-filter/
metadesc: Defines a FullSync synchronization listener for updated documents (by filter).   A  FullSync Update Listener Filter  is a listener which helps handlin
ObjGroup: FullSync
ObjCatName: 
ObjName: FullSync Update Listener Filter
ObjClass: com.twinsoft.convertigo.beans.couchdb.FullSyncFilterListener
ObjIcon: /images/beans/couchdb/images/fullsynclistener_color_32x32.png
topnav: topnavobj
---
##### Defines a FullSync synchronization listener for updated documents (by filter). 

A <b>FullSync Update Listener Filter</b> is a listener which helps handling synchronization for a FullSync database.<br/>A FullSync listener will associate a filter and a sequence in this way:<br/><br/>•  When a modified or created document on the mobile device is replicated on Convertigo Server the listener will call its filter passing the docid<br/>•  The Filter is responsible for filtering the document, for example testing if this document belongs to a specific family or type<br/>•  The Listener's sequence will be called with a list of every document returned by the filter so that the sequence can update data in the back-end applications. The document list will be in a single valued input variable named 'doc'. In your Update sequence, use an iterator to iterate on each 'item' to handle the update of each document on the back-end<br/><br/>

Property | Type | Category | Description
--- | --- | --- | ---
Chunk size | int | standard | Defines the maximum number of incoming documents for the target sequence.<br/>If the replication contains more than <b>Chunk size</b>, the target sequence will be called multiple times.<br/><b>0</b> or a negative value disable the listener.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Filter | String | standard | Defines the target design document's filter from this connector to query.<br/>The default '_doc_ids' filter is like a "listen changes for all documents".<br/>A custom filter can be use but they must include this code in order to filter actual changes:<br/><br/>var doc_ids = JSON.parse(req.body)["doc_ids"];<br/>for (var i = 0; i < doc_ids.length; i++) {<br/>&nbsp;&nbsp;if (doc_ids[i] == doc._id) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;// put your condition here<br/>&nbsp;&nbsp;&nbsp;&nbsp;return true;<br/>&nbsp;&nbsp;}<br/>}
Is active | boolean | standard | Defines whether the listener is active.
Sequence | String | standard | Defines the target sequence to request, filtered by the view when data is modified on the mobile.<br/>The sequence should define a <b>doc</b> multi valued variable to receive the affected documents.
