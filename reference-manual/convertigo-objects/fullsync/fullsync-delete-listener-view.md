---
layout: page
title: FullSync Delete Listener View
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/fullsync/fullsync-delete-listener-view/
metadesc: Defines a FullSync synchronization listener for deleted documents (by view).   A  FullSync Delete Listener View  is a listener which helps handling sy
ObjGroup: FullSync
ObjCatName: 
ObjName: FullSync Delete Listener View
ObjClass: com.twinsoft.convertigo.beans.couchdb.FullSyncDeleteViewListener
ObjIcon: /images/beans/couchdb/images/fullsynclistener_color_32x32.png
topnav: topnavobj
---
##### Defines a FullSync synchronization listener for deleted documents (by view). 

A <b>FullSync Delete Listener View</b> is a listener which helps handling synchronization for a FullSync database.<br/>A FullSync listener will associate a view and a sequence in this way:<br/><br/>•  When a removed document on the mobile device is replicated on Convertigo Server the listener will call its view passing the docid<br/>•  The View is responsible for filtering the document, for example testing if this document belongs to a specific family or type<br/>•  The Listener's sequence will be called with a list of every document returned by the view so that the sequence can delete data in the back-end applications. The document list will be in a single valued input variable named 'doc'. In your delete sequence, use an iterator to iterate on each 'item' to handle the delete of each document on the back-end<br/><br/>It is very important that the views used by listeners have their index based on docids. So, the map function of a 'listenable' view must be be in this form :<code>emit(doc._id, ....)< /code> 

Property | Type | Category | Description
--- | --- | --- | ---
Chunk size | int | standard | Defines the maximum number of incoming documents for the target sequence.<br/>If the replication contains more than <b>Chunk size</b>, the target sequence will be called multiple times.<br/><b>0</b> or a negative value disable the listener.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the listener is active.
Sequence | String | standard | Defines the target sequence to request, filtered by the view when data is modified on the mobile.<br/>The sequence should define a <b>doc</b> multi valued variable to receive the affected documents.
View | String | standard | Defines the target design document's view from this connector to query.<br/>The view must <b>emit</b> the <b>doc._id</b> in order to work properly.
