---
title: Convertigo Full Sync
keywords: pages, authoring, exclusion, frontmatter
last_updated: 05/10/2022
summary: "Full Sync enables mobile apps to handle fully disconnected scenarios, still having data handled and controlled by back end business logic"
sidebar: c8o_sidebar
permalink: /reference-manual/convertigo-mbaas-server/convertigo-full-sync-architecture/
---

{{site.data.alerts.note}}
Full Sync enables mobile apps to handle fully disconnected scenarios, still having data handled and controlled by back end business logic
{{site.data.alerts.end}}

Convertigo Full Sync enables mobile applications to handle off line data. The user is able to interact locally with data and Sync this data to Convertigo Server. When the sync is done, all local data modifications will be submitted to the back end connectors and server side business logic will be executed. At the same time, a server data for this particular user will be synced back to local data on the mobile device.

## Architecture design

{% include image.html file="man_img/fullsync5.png" url="images/man_img/fullsync5.png" alt="Full Sync" max-width="500" %}

1. Sequence pulls data out from the back end from a back-end connector, and pushes it to a Full Sync database tagged with a target UserID
2. Data gets replicated to the mobile devices only for this UserID
3. User Interacts locally with the mobile NoSQL database
4. Any modifications are replicated back to the Full Sync database
5. Data modifications in Full Sync database  triggers update sequences
6. Sequence pushes back data to back-end through the connectors

**The sequence N° 1** can be called by the mobile device directly or can be scheduled by the Convertigo Scheduler, to poll back end systems through a specific connector. Also, some back end system can trigger this sequence when they know a data modification has been done.

## UserID filtered replication

### User id specific or anonymous data

Any Convertigo sequence can run anonymously or under a specific authenticated UserID. When a sequence pushes data to a FullSync database, this data will be flagged to belong to UserID the sequence runs for. The replication algorithm will filter the data and replicate only data belonging to the user authenticated on a mobile device. If the user if authenticated on several devices, the data will be replicated to all of them.

### Pushing user specific data

If you want to push data to a full sync database to be replicated only for a specific user, you must use the step [setAuthenticatedUser](../../../reference-manual/convertigo-objects/sequencer/steps/http-session-management/set-authenticated-user/) before calling one of the full sync connector transactions. This way the data inserted in the full sync database will be tagged to belong to this specific user and the data will be replicated only on this user’s mobile devices.

### Pushing anonymous data

If you want to push data to a full sync database to be replicated for all specific users, do not call any [setAuthenticatedUser](../../../reference-manual/convertigo-objects/sequencer/steps/http-session-management/set-authenticated-user/) step.  This way the data inserted in the full sync database will not be tagged  and the data will be replicated all users. This is useful for product catalogs for examples

## Full Sync underlying technology

### NoSQL technology

Full sync is based on data synchronization of NoSQL databases. A Master database on Convertigo Server and local databases on each mobile device. NoSQL technology brings the ability to sync very efficiently databases with flexible data models. Also differential syncing is efficient on low bandwidth networks such as 2G/2G

As most of technologies used by Convertigo, syncing protocol is not proprietary but relies on the very popular Apache’s CouchDB protocol. CouchDB is an Open Source technology providing a NoSQL server database implementation running on most operating systems. Convertigo interfaces with CouchDB to provide the Full Sync Service.

Server Side repository is handled by an Apache CouchDB server controlled by Convertigo Server. In order to use Full Sync you will have to install a CouchDB server on a server that can be accessed by Convertigo Server.  This can be the same machine Convertigo Server is running on. Also in order to develop Full Sync projects, you will have to install a CouchDB server on the same workstation Convertigo running on.

### Configuring server and studio to access a CouchDB Server

You can link your Studio with your local CouchDB server. To do this  :

- Window->Preferences->Convertigo->Engine->Full sync
- Setup the url to access CouchDB server, by default this is set to http://127.0.0.1:5984 to access a CouchDB server running on the same workstation than your Studio.
- Setup username and password to access the CouchDB server. By default these are left blank as the default installation of CouchDB server does not require credentials.

The same, you can link your Server with a CouchDB server. To do this  :

- Launch the admin console on a web browser , url is http://< your server>:28080/convertigo/admin
- Login (By default admin, admin)
- Click on ‘Config->Full sync’
- Setup the url to access CouchDB server, by default this is set to http://127.0.0.1:5984 to access a CouchDB server running on the same server than your Studio.
- Setup username and password to access the CouchDB server. By default these are left blank as the default installation of CouchDB server does not require credentials. Of course in a production environment, is it highly recommended to configure CouchDB with credentials and to setup them in the Convertigo configuration for Full Sync.
- Be sure to configure CouchDB (With the Futon interface) to hold a reasonably small amount of revisions (Ideally 10) as the default (1000) may cause huge client databases, performances losses and out of disk space problems

### Mobile client side NoSQL technology

The mobile client side NoSQL repository in Convertigo applications are based on our [C8oSDK Angular API](https://github.com/convertigo/c8osdk-angular#-c8osdk-angular) and [PouchDB](https://pouchdb.com/).

## Monitoring a database data changes on the server


### Using full sync listeners

When data is modified on the mobile device, it will be replicated to the linked FullSync database. Convertigo can automatically monitor these changes and trigger a specific Sequence for you to update data to the back end system via it’s connector.

The FullSync connector can define a set of listeners based on filters to monitor changes. If the filter matches, the target sequence is called with the modified documents as parameter. This way the Convertigo programmer can call any other transaction in this sequence to update data on back end system. The filter is based on a specific FullSync connector view

Listener views map functions must be able to “filter” the documents and must use the document id as the index. Here is a sample listener view map:

{% highlight js %}
function map (doc) {
	try {
    if (doc.object.attributes.type.text == "Account"){
		  emit(doc._id, doc._rev);
    }
	} catch (err) {
		log(err.message);
	}
}
{% endhighlight %}
A Listener associates a view in order filter the documents, to a sequence to be launched launch when a modified documents matches this view. To create a **Listener** :

- Right click on a full sync connector->New->Listener
- Select FullSync listener, click Next
- Name it the way you want , for example “ListenToProductChanges”
- Click Finish
- In the project tree view select the newly created listener
- In the property sheet, setup the **Sequence** property to the sequence to be launched when this listener is triggered. You can  choose a sequence the same project or from any other project in your workspace.
- In the property sheet, setup the **View** property to an an existing view in this full sync connector.

When a listener triggers your sequence, the sequence will be called with an multi-valuated (array of item) input variable containing all the documents modified. In your sequence, you are responsible for iterating on each document and do whatever has to be done to update the data in the backend system.


## Understanding Views and Queries

As FullSync relies on CouchDB, most applications relies on Queries and Views to search and list objects. Views is a standard CouchDB concept used to select objects in the database. The most important thing to understand is that views are held in standards documents so they are also replicated on the mobile devices. This is why, programming a view server side makes it possible to query it on the mobile side!

Convertigo Studio provides a friendly environment to create views in a specific container. The programmer can create, modify and update views directly from Convertigo Eclipse based studio.

To Create a view:

- Right click on a fullsync connector
- Choose new->Document to create a design document in this connector
- Rename it the way you want and finish the wizard by click next
- Right Click on the created design document
- Choose new->view
- Press F2 to rename the created view if needed
- Double click on the map object to edit the map function
- A map function could be as is:

{% highlight js %}
function (doc) {
 try {
  if (doc.object.attributes.type.text == "Account") // only for Account objects
  { 
   emit(doc.object.Name.text.toLowerCase(),           // Emit it in the index using the Name as key
   {
    "_conflicts": doc._conflicts,                     // We want the optional conflicts in the view,
    "name": doc.object.Name.text,                     // The name,
    "id": doc._id                                     // and the document id.
   });
  }
 } catch (e) {
  // console.log("error in map : " + e);
 }
}
{% endhighlight %}
More documentation on views can be found on the CouchDB web site.

## Authenticating users on the server

In order to have the replication to be active, users must authenticate to Convertigo Server. This can be done by executing a ‘login’ sequence giving as parameters the user credentials Of course this can be done only when network is available on the device.

The login sequence is responsible for checking the user credentials on the enterprise back end systems by calling LDAP or any other service through the Convertigo Connectors. If the credentials are ok, the sequence executes the step setAuthenticatedUser(ID)

This will set the session to be authenticated and any other sequence requiring authentication will be able to execute.

## Full sync databases

### Creating Databases

Convertigo handles on one server several FullSync databases. Each Database is named and is shared between the server and a specific mobile app. the Database name is the name of the FullSync connector. Mobile devices has to specify the same database name to sync data with the server. Any mobile app addressing a specific database name will have data replicated from this specific database from the server.

To create a Database simply in Convertigo Studio create a FullSync connector in your project, the database will be created automatically in the CouchDB server linked to your studio. The name of this database will be the full sync connector name.

- Right click on your project->New->Connector->FullSync connector
- Click Next
- Fill in the connector name (will be also the database name)
- Click Finish
When a full sync connector is created you will be able to create design documents in it. Design documents contains views using map/reduce to query the database. To create a design document :

- Right click on the FullSync Connector
- New->Document->Design document
- Click Next
- Name the design document
- Click Finish
The design document will be created in your project in the FullSync connector ‘Documents’ folder and automatically synchronized in the CouchDB server.  If you deploy your project on a Convertigo Server, the design document will be automatically created in the CouchDB server attached to the target Convertigo Server.

When a design document is created, you can create in it views with map and reduce functions :

- Right click on a design document in the ‘Documents’ folder ->New->View
- A View object will be created in the document, You can rename it by right click->rename or by pressing F2
- A Map function is automatically created in the view
- You can add a reduce function by right Click on the view->New->reduce

### Linking a Mobile client app to a database

In Low Code Studio, the link is automatically done when you you use a FullSync Action such as 'Query View' as the database name is just an actions's property you may configure. Be sure to first use a **Sync Data** component to synchronize data between your application and the Convertigo server, after a login page, for example.

## Interacting locally on the mobile with the data

The Low Code Studio offers all the needed components to interact with the mobile local database. They can be found in the **Ngx Palette** tab under the **Fullsync Actions** section:

{% include image.html file="man_img/FS_actions.png" url="images/man_img/FS_actions.png" alt="FS Actions" max-width="500" %}

### Capacities to know

#### Using policy modifiers

Some policy modifiers can be applied when a posting or updating a document.
Use the **Post Data** component in the **Ngx Palette** to write (post) data to a FullSync database.

{% include image.html file="man_img/FS_actions.png" url="images/man_img/FS_actions.png" alt="FS Actions" max-width="500" %}

Select the target Fullsync Database:
{% include image.html file="man_img/FS_postdata_props_db.png" url="images/man_img/FS_postdata_props_db.png" alt="FS PostData Prop DB" max-width="500" %}

Then choose the policy:
{% include image.html file="man_img/FS_postdata_props_policy.png" url="images/man_img/FS_postdata_props_policy.png" alt="FS PostData Prop Policy" max-width="500" %}

Policies can be:

- none: no policy. In this case you will have to provide by yourself the revision ID of the document you want to update. Providing a wrong revision number will cause an error as stated in the CouchDB protocol.
- create: a new entry will be created for this document even if the document id or revision is specified.
- override: the document with the specified id will be replaced by this post data. Revision Number management is handled automatically.
- merge: the documents with this specified id will be merged by this post data. All fields with the same name will hold new values, all new fields will be added. No fields are deleted.

#### Specifying additional parameters

Most of the FullSync components use additional parameters. For example the
**Query View** component can have a startkey, endkey, limit and many other parameters you can find in the CouchDb documentation.

Use the **Query View** component in the **Ngx Palette** to query a given view of a FullSync database.

{% include image.html file="man_img/FS_actions.png" url="images/man_img/FS_actions.png" alt="FS Actions" max-width="500" %}

Select the target view of the Fullsync Database:
{% include image.html file="man_img/FS_queryview_props_view.png" url="images/man_img/FS_queryview_props_view.png" alt="FS QueryView Prop View" max-width="500" %}

You can then set the different variables (StartKey, EndKey or Key...) to use with that View.

#### Differentiate FullSync responses

You can add to any FullSync component a ‘**suffix**’ (can be any name) that will help you differentiate responses. For example, in **Query View** Component:

{% include image.html file="man_img/FS_queryview_props_marker.png" url="images/man_img/FS_queryview_props_marker.png" alt="FS QueryView Prop Marker" max-width="500" %}

The response of the query View will be 'tagged' as 'suffix' and you can select it in the **Ngx Picker** to fill any text component in your App:

{% include image.html file="man_img/FS_queryview_listen_picker.png" url="images/man_img/FS_queryview_listen_picker.png" alt="FS Ngx Picker Marker" max-width="500" %}

### Fullsync Actions

{% include image.html file="man_img/FS_actions.png" url="images/man_img/FS_actions.png" alt="FS Actions" max-width="500" %}

<table>
  <tr>
    <th>Component</th>
    <th>Description</th>
    <th>Link</th>
  </tr>
  <tr>
    <td>CallFullSync</td>
    <td>FullSync calls are used to interact with the local offline data synchronized database. You can use this call to get, post, delete and query (View) data from the database.</td>
    <td><a href="https://doc.convertigo.com/documentation/develop/reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/callfullsync/">CallFullSync</a></td>
  </tr>
  <tr>
    <td>ClearDataSource</td>
    <td>Use the ClearDataSource to delete data stored from a previous fullsync query or sequence call.</td>
    <td><a href="https://doc.convertigo.com/documentation/develop/reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/cleardatasource/">ClearDataSource</a></td>
  </tr>
  <tr>
    <td>Delete Attachment</td>
    <td>This component helps deleting (delete_attachment) attachments on a local FullSync database document.</td>
    <td><a href="https://doc.convertigo.com/documentation/develop/reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/delete-attachment/">Delete Attachment</a></td>
  </tr>
  <tr>
    <td>Delete Data</td>
    <td>This component helps deletting (delete) data from a FullSync database.</td>
    <td><a href="https://doc.convertigo.com/documentation/develop/reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/delete-data/">Delete Data</a></td>
  </tr>
  <tr>
    <td>Get Data</td>
    <td>This component helps getting (get) data from a FullSync database.</td>
    <td><a href="https://doc.convertigo.com/documentation/develop/reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/get-data/">Get Data</a></td>
  </tr>
  <tr>
    <td>Post Data</td>
    <td>This component helps writing (post) data to a FullSync database.</td>
    <td><a href="https://doc.convertigo.com/documentation/develop/reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/post-data/">Post Data</a></td>
  </tr>
  <tr>
    <td>Put Attachment</td>
    <td>This component helps putting (put_attachment) attachments on a FullSync database document.</td>
    <td><a href="https://doc.convertigo.com/documentation/develop/reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/put-attachment/">Put Attachment</a></td>
  </tr>
  <tr>
    <td>Query View</td>
    <td>This component helps querying a given view of a FullSync database.</td>
    <td><a href="https://doc.convertigo.com/documentation/develop/reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/query-view/">Query View</a></td>
  </tr>
  <tr>
    <td>Sync Data</td>
    <td>This component helps synchronizing data using FullSync.</td>
    <td><a href="https://doc.convertigo.com/documentation/develop/reference-manual/convertigo-objects/mobile-application/components/fullsync-action-components/sync-data/">Sync Data</a></td>
  </tr>
</table>

## Interacting with a FullSync database on the server

### Pushing and getting data server side

Server side business logic interacts with a Fullsync database through the FullSync connector. This connector, like any other Convertigo connector can be called from a sequence. The FullSync connector supports predefined transaction types able to read, write, delete and update data in the database.

As seen above, data pushed to the database will automatically be tagged to belong to the user running the sequence and replicated only to this user.

#### Using FullSync transactions

A FullSync connector supports predefined transactions to interact with the full sync database. For example, the PostDocument transaction will post a document in a FullSync database. Please refer to the objects reference for a list of [FullSync Transactions](../../../reference-manual/convertigo-objects/fullsync/document-transactions/).

#### Specifying action policies

Some FullSync transactions are supporting some action policies such as merge for the PostDocument transaction. Also refer to the objects reference for a list of action policies.

#### Using additional parameters

Some transaction such as the GetView transaction require some additional parameters. You can specify them by adding variables to your transaction. To  create a full sync transaction in a full sync connector :

- Right click on a full sync connector ->New->Transaction
- Choose the transaction type you want , click Next
- Rename the transaction if you want to be more explicit
- Choose the transaction variables you want to create for this transaction. These variables will be used by calling sequence

Dynamic variables are added this way:

- Right click on a Transaction
- Choose '**Add variables for dynamic properties**'

{% include image.html file="man_img/FS_transaction_add_variables.png" url="images/man_img/FS_transaction_add_variables.png" alt="FS Transaction Dynamic Variables" max-width="500" %}

Available variables depend on the type of the Fullsync Transaction:

{% include image.html file="man_img/FS_transaction_add_variables_avail.png" url="images/man_img/FS_transaction_add_variables_avail.png" alt="FS Transaction Dynamic Variables Available" max-width="500" %}

## Using Groups

Convertigo Fullsync can use group based replication. See documentation about this here: [Convertigo FullSync Groups](../../../pdf/Convertigo_FullSync_Groups.pdf)
{{site.data.alerts.note}}
Group replication is a very powerful feature but must be used with care as it can result on very high CPU loads on Convertigo server and CouchDB. 
Group management algorithm executes a CouchDB view query for each group a user belongs to check if a document can be replicated to this user
{{site.data.alerts.end}}
The more groups a user belongs to, the more CPU load is done on CouchDB servers. Instead, as a document may belong to several groups, there are no constraints to have documents belonging to a large number of groups.
