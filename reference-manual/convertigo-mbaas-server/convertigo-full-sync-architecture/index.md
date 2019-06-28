---
title: Convertigo Full Sync
keywords: pages, authoring, exclusion, frontmatter
last_updated: 21/03/2019
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

The mobile client side NoSQL repository in Convertigo applications can be based on two different technologies to the programmer’s choice. see here a table comparing these technologies :

<table>
  <tr>
    <th>Full javascript</th>
    <th>Cordova plugin based</th>
  </tr>
  <tr>
    <td>Uses a 100% javascript NoSQL engine and uses the HTML 5 indexedDB or WebSQL  as repository, can be used by local builds or cloud builds</td>
    <td>Based on the Couchbase Lite Cordova plugin providing NoSQL technology. can be used by local builds or cloud builds by setting up this line in the platform’s config.xml :
        {% highlight xml %} 
        <gap:plugin name=”com.couchbase.lite.phonegap” source=”plugins.cordova.io” git=”https://github.com/couchbaselabs/Couchbase-Lite-PhoneGap-Plugin.git”/> 
        {% endhighlight %}
        Having this line in the config.xml will automatically enable the Couchbase Lite mode
    </td>
  </tr>
  <tr>
    <td>Runs on iOS, Android, Windows Phone 8.x, Windows 8.x Store apps and even web browser apps.</td>
    <td>Runs on iOS and Android.</td>
  </tr>
  <tr>
    <td>Database size can be limited to underlying HTML5 repository limits, although modern devices now supports large databases based on IndexedDB</td>
    <td>No Size limit for database</td>
  </tr>
  <tr>
    <td>Indexing time for large databases can be long, and re-indexing after some changes takes the same time as initial indexing.</td>
    <td>Indexing time is faster, and re-indexing only indexes modified documents, thus saving time</td>
  </tr>
</table>
As a general recommendation, use Cordova Couchbase Lite plugin for large databases as full javascript engine is simpler to setup.

## Monitoring a database data changes on the server


### Using full sync listeners

When data is modified on the mobile device, it will be replicated to the linked FullSync database. Convertigo can automatically monitor these changes and trigger a specific Sequence for you to update data to the back end system via it’s connector.

The FullSync connector can define a set of listeners based on filters to monitor changes. If the filter matches, the target sequence is called with the modified documents as parameter. This way the Convertigo programmer can call any other transaction in this sequence to update data on back end system. The filter is based on a specific FullSync connector view

Listener views map functions must be able to “filter” the documents and must use the document id as the index. Here is a sample listener view map:

{% highlight js %}
function (doc) 
{
	if (doc.object.attributes.type.text == "Account") 
        {
		emit(doc._id, doc);
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

Your mobile application has to know on what server database it has to synchronize. This is simply done by using the method c8oSettings.setDefaultDatabaseName() in the client SDKs. for example set the default database to 'mydb_fullsync' using the Angular SDK:

{% highlight js %}
import { C8o, C8oSettings } from "c8osdkjs"
…
// The only way
let settings: C8oSettings = new C8oSettings();
settings
      .setDefaultDatabaseName("mydb_fullsync")
//Then we need to assign C8oSettings object to our C8o object
c8o.init(settings);

//Then to use c8o Object and be sure that initialization has been properly done
c8o.finalizeInit().then(() => {
	//Do stuff with c8o Object
})
{% endhighlight %}

Instead, if you use Mobile Builder, then the link is automatically done when you you use a FullSync Action such as 'Query View' as the database name is just an actions's property you may configure.

## Interacting locally on the mobile with the data

Convertigo Client Framework (Hybrid or Native) provides a high level access to local data following the standard Convertigo “Sequence” paradigm. They differ from standard sequences by a ‘fs://’ prefix. Calling these local fullsync “Sequences” will enable the app to read, write, query and delete data from the local database:

- [fs://< database >.view](#get-view): queries a view from the local database
- [fs://< database >.get](#get-document): reads an object from the local database
- [fs://< database >.post](#postdocument): writes/update an object to the local database
- [fs://< database >.delete](#deletedocument): deletes an object from the local database
- [fs://< database >.all](#getalldocs): gets all objects from the local database
- [fs://< database >.sync](#synchronization): synchronize with server database
- [fs://< database >.replicate_push](#synchronization): push local modifications on the database server
- [fs://< database >.replicate_pull](#synchronization): get all database server modifications
- [fs://< database >.reset](#reset): resets a database by removing all the data in it.

Where < database > is the name of a specific FullSync Connector in a project. Mobile clients may have a default FullSync Connector configured in the **DisplayObject/mobile/custom.js** as **C8O.fs_default_db**. So, to access the default FullSync connector, do not specify a database. Just use

*fs://.get or fs://.post* for example.

##### Using policy modifiers

Some client sequences such as fs://.post can have policy modifiers to handle specific policies.
To use a modifier just pass it as a _use_policy variable to your "requestable". For example with CTF:

{% highlight js %} data-c8o-call="fs://.post" data-c8o-variables='{"_use_policy":"merge"}' {% endhighlight %}

Or in javascript :

{% highlight js %}
C8O.call("fs://.post", 
{
   "_use_policy": "merge",
   "key1":"value1",
   "key2":"value2",
   …
});
{% endhighlight %}
Will have the merge policy applied to the post sequence.

Policies can be:

- none: no policy. In this case you will have to provide by yourself the revision ID of the document you want to update. Providing a wrong revision number will cause an error as stated in the CouchDB protocol.
- create: a new entry will be created for this document even if the document id or revision is specified.
- override: the document with the specified id will be replaced by this post data. Revision Number management is handled automatically.
- merge: the documents with this specified id will be merged by this post data. All fields with the same name will hold new values, all new fields will be added. No fields are deleted.

##### Specifying additional parameters

Most of the FullSync sequences use additional parameters. For example the
{% highlight js %}
fs://database.view
{% endhighlight %}
Sequence can have a startkey, endkey, limit and many other parameters you can find in in the CouchDb documentation.

To use a parameter just pass it as a standard requester variable. For example with CTF:

{% highlight js %} data-c8o-variables='{"startkey":"value", …}' {% endhighlight %}
where startkey is the parameter you want to pass the view, and value is the value of this parameter. Or:
{% highlight js %}
C8O.call("fs://.view", {
   "startkey": "value",
	...
});
{% endhighlight %}

##### Differentiate FullSync responses for CTF_**

You can add to any FullSync sequence a ‘#suffix’ that will help you differentiate responses in the CTF routing table and listeners. For example:
{% highlight html %}
<button data-c8o-call="fs://mydatabase.view#displayusers">Click me</button>
{% endhighlight %}
and
{% highlight html %}
<ul data-role="listview" data-c8o-listen="fs://mydatabase.view#displayusers" data-c8o-each="item">
   <li>.... data .... </li>
</ul>
{% endhighlight %}


### Sequences

#### Get View

  Queries a view from the local database.

  **fs://< database >.view**

<table>
  <tr>
    <th>Parameters</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>ddoc</td>
    <td>Design document name as created in “Documents” folder of a fullsync connector (Do not use “_design/” prefix). This is an optional parameter if C8O.fs_default_design is not defined in custom.js</td>
  </tr>
  <tr>
    <td>view</td>
    <td>View name. The view name as created in the design document.</td>
  </tr>
  <tr>
    <td>include_docs</td>
    <td>Include the document in each row in the doc field</td>
  </tr>
  <tr>
    <td>conflicts</td>
    <td>Include conflicts in the _conflicts field of a doc</td>
  </tr>
  <tr>
    <td>attachments</td>
    <td>Include attachment data.</td>
  </tr>
  <tr>
    <td>startkey & endkey</td>
    <td>Get rows with keys in a certain range (inclusive/inclusive). these are jSON data and can be strings or any other jSON structures for example 
    {% highlight json %}
    <button data-c8o-call="fs://.view" data-c8o-variables'{
		"view":"myview",
		"startkey":"mystartkey", // or "startkey":[10, 20]
		"endkey":"myendkey" // or "endkey": [100, {}]
    }'>Click me</button> {% endhighlight %}
    Or
    {% highlight js %}
    C8O.call("fs://.view", {
        "view":"myview",
        "startkey":"mystartkey", // or "startkey":[10, 20]
        "endkey":"myendkey" // or "endkey": [100, {}]
    });
    {% endhighlight %}   
    </td>
  </tr>
  <tr>
    <td>inclusive_end</td>
    <td>Include rows having a key equal to the given endkey. boolean, Default: true.</td>
  </tr>
  <tr>
    <td>limit</td>
    <td>Maximum number of rows to return.</td>
  </tr>
  <tr>
    <td>skip</td>
    <td>Number of rows to skip before returning. integer, if not present returns all the rows.</td>
  </tr>
  <tr>
    <td>descending</td>
    <td>Reverse the order of the output rows. boolean</td>
  </tr>
  <tr>
    <td>key</td>
    <td>Only return rows matching this key. this can be jSON data as start key and endkey</td>
  </tr>
  <tr>
    <td>keys</td>
    <td>Array of keys to fetch in a single shot. Neither startkey nor endkey can be specified with this option.</td>
  </tr>
  <tr>
    <td>group</td>
    <td>True if you want the reduce function to group results by keys, rather than returning a single result. Defaults to false.</td>
  </tr>  
  <tr>
    <td>group_level</td>
    <td>Number of elements in a key to group by, assuming the keys are arrays. Defaults to the full length of the array.</td>
  </tr>  
  <tr>
    <td>stale</td>
    <td>One of ok(=returns results immediately, even if they’re out-of-date.) or update_after(=returns results immediately, but kicks off a build afterwards.). Only applies to saved views</td>
  </tr>
  <tr>
    <td>__live</td>
    <td>true or false. If true, the view will automatically be triggered when there is a database (caused by a local change or by a replication from the server). This gives the opportunity to refresh the UI automatically with the new data returned by the view.</td>
  </tr>  
</table>

#### Get Document
Reads an object from the local database.

**fs://< database >.get**

Parameters | Description
--- | ---
docid | Document identifier
rev | Fetch specific revision of a document. Defaults to winning revision. as a string.
revs | Include revision history of the document.
revs_info | Include a list of revisions of the document, and their availability.
open_revs | Fetch all leaf revisions if open_revs=”all” or fetch all leaf revisions specified in open_revs array. Leaves will be returned in the same order as specified in input array.
conflicts | If specified, conflicting leaf revisions will be attached in _conflicts array.
attachments | Include attachment data.

#### PostDocument

Writes an object to the local database. The data you write must be an object as described below. If you do an update, one of the data fields must be “_id” to specify the ID of the document you want to update

**fs://< database >.post**

<table>
  <tr>
    <th>Parameters</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>my.specific.key</td>
    <td>this key will be used a structured key to build a document to be posted to the local database. for example this call :
      {% highlight js %}<button data-c8o-call="fs://.post" data-c8o-variables='{"my.specific.key":"data"}'>Clickme</button>{% endhighlight %}
      or
      {% highlight js %} C8O.call("fs://.post", {
        "my.specific.key":"data" // or
        });
      {% endhighlight %}
      or
      {% highlight js %} 
      C8O.call("fs://.post", {
          "my":{
              "specific":{
                  "key":"data"
            }
          }
      });
      {% endhighlight %}
      will post a document of this form :
      {% highlight js %} 
      {
          "my":{
            "specific":{
                      "key":"data"
                  }
          }
      }
      {% endhighlight %}
      </td>
  </tr>
  <tr>
    <td>_use_policy</td>
    <td>
      <ul>
        <li>none: Don’t modify.</li>
        <li>create: Create document.</li>
        <li>override: Override documents</li>
        <li>merge: Merge documents.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>_use_subkey_separator</td>
    <td>Include the document in each row in the doc field</td>
  </tr>  
  <tr>
    <td>startkey & endkey</td>
    <td></td>
  </tr>
</table>
 
#### DeleteDocument

Deletes an object from the local database.

**fs://< database >.delete**

Parameters | Description
--- | ---
docid | Document identifier.
docrev | Document revision.
 
#### GetAllDocs

Gets all objects from the local database.

**fs://< database >.all**

Parameters | Description
--- | ---
include_docs | Include the document itself in each row in the doc field. Otherwise by default you only get the _id and _rev properties.
startkey & endkey | Get documents with IDs in a certain range (inclusive/inclusive).
inclusive_end | Include documents having an ID equal to the given **endkey**. Default: **true**.
limit | Maximum number of documents to return.
skip | Number of docs to skip before returning (warning: poor performance on IndexedDB/LevelDB!).
descending | Reverse the order of the output documents.
key | Only return documents with IDs matching this string key.
keys | Array of keys to fetch in a single shot. Neither **startkey** nor **endkey** can be specified with this option.
 
#### Synchronization

**fs://< database >.sync**
Synchronize with database server and get all modifications and push local modifications.

**fs://< database >.replicate_push**
Push local modifications on the server database.

**fs://< database >.replicate_pull**
Get all server database modifications.

<table>
  <tr>
    <th>Parameters</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>live</td>
    <td>If true, starts subscribing to future changes in the source database and continue replicating them.</td>
  </tr>
  <tr>
    <td>retry</td>
    <td>If true will attempt to retry replications in the case of failure (due to being offline), using a backoff algorithm that retries at longer and longer intervals until a connection is re-established. Only applicable if live is also true.</td>
  </tr>
  <tr>
    <td>batch_size</td>
    <td>Number of documents to process at a time. Defaults to 100. This affects the number of docs held in memory and the number sent at a time to the target server.</td>
  </tr>  
  <tr>
    <td>batches_limit</td>
    <td>Number of batches to process at a time. Defaults to 10. This (along with batch_size) controls how many docs are kept in memory at a time, so the maximum docs in memory at once would equal batch_size × batches_limit.</td>
  </tr>
  <tr>
    <td>heartbeat</td>
    <td>Configure the heartbeat supported by CouchDB which keeps the change connection alive. Usefull is some network equipment closes connections if no traffic is detected</td>
  </tr>
  <tr>
    <td>timeout</td>
    <td>Configures the timeout for longpoll request. Continuous sync works by issuing a http request waiting for a long amout of time. This time is configured by this parameter</td>
  </tr>
  <tr>
    <td>cancel</td>
    <td>If cancel is set to true, any existing continuous replication will be stopped</td>
  </tr>
  <tr>
    <td>change</td>
    <td>if true will monitor changes while replicating, will generate automatically a C8O response that can be received in the xml_response hook. CTF will use this response as any other response in the routing table. This is useful to create progress bars while replicating. the hook will receive documents like: 
    {% highlight xml %}
    <couchdb_output>
      <event>change</event>
      <data>
        <direction>push or pull</direction>
        <current>actual number of documents replicated</current>
        <total>estimated number of documents to replicate</total>
        <progress>current on total replication ratio (0 to 100)</progress>
        <ok>true</ok>
      </data>
    </couchdb_output>
    {% endhighlight %}
    
    For example in your application you can have a :
        {% highlight xml %}
        <div data-c8o-listen="fs://mydatabase.sync">
            <p>Nb Documents replicated : __=progress__</p>
        </div>
        {% endhighlight %}
    To display processed document.</td>
  </tr>  
  <tr>
    <td>complete</td>
    <td>if true will monitor replication status. It will generate automatically a C8O response that can be received in the xml_response hook. CTF will use this response as any other response in the routing table. This is useful to know when the replication is finished. the hook will receive documents like this when replication is complete:    
    {% highlight xml %}
    <couchdb_output>
      <event>complete</event>
      <data>
        <direction>push, pull or pushpull</direction>
        <ok>true</ok>
      </data>
    </couchdb_output>
    {% endhighlight %}

    </td>
  </tr>  
  <tr>
    <td>change</td>
    <td>if true will monitor errors while replicating. It will generate automatically a C8O response that can be received in the xml_response hook. CTF will use this response as any other response in the routing table. This is useful to know when an error occurs. the hook will receive documents like this:
    {% highlight xml %}
    <couchdb_output>
      <event>error</event>
      <data>
        <direction>push, pull or pushpull</direction>
      .... Error .....
      </data>
    </couchdb_output>
    {% endhighlight %}   
    </td>
  </tr>  
</table>
 
#### Reset

Deletes all documents from a database

**fs://< database >.reset**

Parameters | Description
--- | ---
no parameters | N/A

## Interacting with a FullSync database on the server

### Pushing and getting data server side

Server side business logic interacts will a full sync database through the FullSync connector. This connector, like any other Convertigo connector can be called from a sequence. The FullSync connector supports predefined transaction types able to read, write, delete and update data in the database.

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

## Using Groups

Convertigo Fullsync can use group based replication. See documentation about this here: [Convertigo FullSync Groups](../../../pdf/Convertigo_FullSync_Groups.pdf)
{{site.data.alerts.note}}
Group replication is a very powerful feature but must be used with care as it can result on very high CPU loads on Convertigo server and CouchDB. 
Group management algorithm executes a CouchDB view query for each group a user belongs to check if a document can be replicated to this user
{{site.data.alerts.end}}
The more groups a user belongs to, the more CPU load is done on CouchDB servers. Instead, as a document may belong to several groups, there are no constraints to have documents belonging to a large number of groups.
