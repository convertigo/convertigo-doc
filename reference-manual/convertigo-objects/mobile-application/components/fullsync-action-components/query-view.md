---
layout: page
title: Query View
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/query-view/
metadesc: Defines a  Query View  action component.   This component helps querying a given view of a FullSync database. Views are pre-indexed FullSync documents
ObjGroup: FullSync Actions
ObjCatName: fullsync-action-components
ObjName: FullSyncViewAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/fsviewsaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Query View</i> action component. <br/>

 This component helps querying a given view of a FullSync database.<br/>
Views are pre-indexed FullSync documents you can query.<br/>
They may be defined in the Convertigo Studio for a given <i>FullSync Connector</i> by writing a 'map' function defining how documents are indexed and what data you want place in front of an index.<br/>
<br/>
For more information about Views see <a  href='https://www.convertigo.com/documentation/latest/reference-manual/convertigo-mbaas-server/convertigo-full-sync-architecture/#understanding-views-and-queries'>Understanding views and queries</a>.<br/>
<br/>
To query a view, select it through the <i>View</i> property and configure the query parameters. Most of the parameters are optional, but the most useful ones are the <i>StartKey</i> and the <i>EndKey</i> defining the range of the index you want to query.<br/>
<br/>
See the <a href='https://www.convertigo.com/documentation/latest/reference-manual/convertigo-mbaas-server/convertigo-full-sync-architecture/#get-view'>Query parameters</a> documentation for that.<br/>
For more information : <a href='https://www.convertigo.com/documentation/latest/reference-manual/convertigo-mbaas-server/convertigo-full-sync-architecture/#interacting-locally-on-the-mobile-with-the-data'>interacting-locally-with-the-data/</a>. <br/>
<br/>
 If you want to disable laoding controller, you can set property <i>disable loading controller</i> to true.

Name | Description 
--- | ---
Attachments | Include attachment data.
Attachments binary | Return attachment data as Blobs/Buffers, instead of as base64-encoded strings.
Conflicts | Include conflicts in the _conflicts field of a doc.
Descending | Reverse the order of the output rows.
Disable loading controller | Defines if we want to disable loading controller showing
EndKey | Get rows with keys in a certain range (inclusive/inclusive) from the end key.
Group level | Number of elements in a key to group by, assuming the keys are arrays. Defaults to the full length of the array.
Inclusive end | Include rows having a key equal to the given options.endkey. Default: true
Live | If set to an ID,  will automatically monitor any database change (From continuous replication or from local changes) and re-run the query. Using 'Live' is the best way to refresh automatically your UI when data changes in the database. You can cancel an 'live' view by calling the c8o.cancelLive(id) API.
Marker | Use Markers to differentiate queries in order to be able to listen to a given query response. Use <code>listen([fs://mydatabase.view#MYMARKER])</code> syntax to listen to a given 'Marked' query.
Reduce | Call the view reduced.
Stale | Can be one of: unspecified (default): Returns the latest results, waiting for the view to build if necessary. 'ok': Returns results immediately, even if they're out-of-date. 'update_after': Returns results immediately, but kicks off a build afterwards.
StartKey | Get rows with keys in a certain range (inclusive/inclusive) from the start key.
View | The view to query (in the form Project.database.DesignDoc.view).
group | True if you want the reduce function to group results by keys, rather than returning a single result. Defaults to false.
include_docs | Include the document in each row in the doc field. This may be useful for joined queries or if you do not want to 'emit' too much 'values' in your map functions.<br/><br/>See <a href='https://docs.couchdb.org/en/stable/ddocs/views/joins.html'>joined queries</a>.
key | Only return rows matching this key.
keys | Array of keys to fetch in a single shot. Neither startkey nor endkey can be specified with this option. The rows are returned in the same order as the supplied keys array. The row for a deleted document will have the revision ID of the deletion, and an extra key 'deleted':true in the value property. The row for a nonexistent document will just contain an 'error' property with the value 'not_found'.
limit | Maximum number of rows to return. Always limit your queries to some maximum to avoid UI lagging and excessive memory consumption.
skip | Number of rows to skip before returning. Useful for pagination combined with the 'limit' property.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

