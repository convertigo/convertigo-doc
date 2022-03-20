---
title: Convertigo General Architecture
keywords: pages, authoring, exclusion, frontmatter
last_updated: 02/04/2020
summary: "This chapter describes Convertigo general architecture & concepts. From there you will understand the basic components and how they interact with each other"
sidebar: c8o_sidebar
permalink: /programming-guide/general-architecture/
---
This chapter describes the Convertigo general architecture. Convertigo Low Code Platform is a Full Stack Low Code application Development platform featuring a powerful back-end Data & Service layer as well as a Mobile & Web front-end.

The platform provides out of the box all services to develop & run Mobile & Web applications including an offline data service to handle network less situations.

{% include image.html file="pguide_img/GlobalArchitecture.png" caption="Figure 1 - 1: Global architecture" max-width=800 %}

## Server

Convertigo server runs the back-end part of your applications. You can deploy to a Convertigo Server as many apps you want. 

Convertigo Server also handles back-end data repository in an NoSQL database and provides connectors to any existing Enterprise data source such as SQL, REST & SOAP WS, Legacy apps running on Mainframes & SAP Systems. 

Convertigo Server is built on Java technology and runs in a standard application server such as Tomcat, but is also packaged as a Docker Image so it can be run in any Docker container platform such as Cloud providers, Kubernetes on premises or cloud implementations.

Internal server architecture is modelized as is:

{% include image.html file="pguide_img/shema_server.png" caption="Figure 1 - 1: Server architecture" max-width=400 %}

You will learn about Sequences, transactions and other Convertigo objects in the [Understanding Convertigo Objects](../understanding-convertigo-objects) Chapter

## Clients

Convertigo Clients connects to the Convertigo Server using standard https:// protocols. Clients can be different types :

| | Low Code Client | Client Language | FullSync & Advanced capabilities Supported | Chapter
---|---|---|---|---
Convertigo UI Builder Low Code Clients  | Yes | Convertigo Low Code | Yes | [Client Side Programming Guide](../frontend-developers)
Convertigo SDK JS Based clients| No| JS Angular, ReactJS, Vue.js, ReactNative | Yes | [Convertigo JS SDK Documentation](https://www.npmjs.com/package/c8osdkangular)
Convertigo SDK Native clients| No| Java Android & Kotlin, iOS SWIFT | Yes | [Convertigo Native SDK Documentation (Android)](https://github.com/convertigo/c8osdk-android) <br>&<br> [Convertigo Native SDK Documentation (iOS)](https://github.com/convertigo/c8osdk-ios)
Agnostic clients| No| Any Type of client side language as long as it can consume jSON REST WS | No | [URL Mapper & Swagger portal](../understanding-convertigo-objects)

The best value for your projects is the use the Mobile Builder Low Code Client, but if you still want to use your existing Angular, ReactJS or Vue.js programming skills, this is also possible using SDKs, but you will not benefit from the Client Side Low Code technology.

You may still want to program client side using native technology such as Kotlin or Swift. This is also possible using the Native SDKS, but you will not benefit from the Client Side Low Code technology.


## Studio

Convertigo Studio is the Low Code studio used to program any layer of the Convertigo Platform. The same studio can be used to connect to data, create create data models & back-end services and build UI.

{% include image.html file="pguide_img/StudioPanes.png" caption="Figure 3 - 3: Convertigo Studio" max-width=800 %}


Convertigo Studio is a desktop Application running on Windows, MacOS & Linux. To use it you can download it from our release repository or directly from your Cloud console in environment page.

> _Access the [Download Latest Convertigo Studio](https://github.com/convertigo/convertigo/releases/latest) page._

Choose the one of the Convertigo Studio versions for your environment :

Windows|MacOS | Linux
---|---|---|
convertigo-studio-x.y.z-win64.exe | convertigo-studio-x.y.z-macosx.tar.gz | convertigo-studio-x.y.z-linux64.tar.gz

Please refer to the [Studio installation documentation](../../operating-guide/installing-convertigo-studio) for detailed install procedures

Once your project is developed, you will be able to deploy it on a running Convertigo Server. Your Studio will be automatically "attached" to your Cloud Convertigo server. This is done by the PSC (Personal Server Certificate) you received by email when you registered on Convertigo Cloud.

At any time you will be able to add new servers for your deployments. See the [Deploying Convertigo Projects](../backend-developers#deploying--test-projects-on-servers) section for details.


## FullSync offline data

{{site.data.alerts.note}}
Full Sync enables mobile apps to handle fully disconnected scenarios, still having data handled and controlled by back end business logic
{{site.data.alerts.end}}

Convertigo Full Sync enables mobile applications to handle off line data. The user is able to interact locally with data and Sync this data to Convertigo Server. When the sync is done, all local data modifications will be submitted to the back end connectors and server side business logic will be executed. At the same time, a server data for this particular user will be synced back to local data on the mobile device.

Data in the database is organized as a collection of jSON documents (Can be alse called jSON objects) Each document has an unique id, but multiple versions of a document can coexist in the database.

## Architecture design

{% include image.html file="man_img/fullsync5.png" url="images/man_img/fullsync5.png" alt="Full Sync" max-width="500" %}

1. Sequence pulls data out from the back end from a back-end connector, and pushes it to a Full Sync database as documents tagged with a target UserID
2. Data gets replicated to the mobile devices only for this UserID
3. User Interacts locally with the mobile NoSQL database
4. Any modifications are replicated back to the Full Sync database
5. Data modifications in Full Sync database  triggers update sequences
6. Sequence pushes back data to back-end through the connectors

**The sequence N° 1** can be called by the mobile device directly or can be scheduled by the Convertigo Scheduler, to poll back end systems through a specific connector. Also, some back end system can trigger this sequence when they know a data modification has been done.

## Understanding FullSync Users and Groups.

In the Convertigo Back-end server you may have many documents (Objects) that can be replicated to mobile devices. As the device storage capacities are limited and as we might want some security access control on the data replicated, Convertigo uses a user and group concept to filter documents (Objects) replicated on the mobile devices so that not all the the server database is replicated to the devices.

Documents Group and user relationship :

* FullSync documents belongs to a single user, or are anonymous
* A document can belong to several groups
* Users can belong to several groups.

{% include image.html file="pguide_img/FullSyncGroups.png"  alt="Full Sync"  %}

To be replicated on a client a document must :

* have a __~c8oAcl__ property equal to the current __authenticatedUser__ or
* have the current __authenticatedUser__ belong to the list of groups defined in the __c8oGrp__ property. the __c8oGrp__ is a simple string (Document belongs ton one group only) or a structured object such as :
 
        {"groupName1": true, "groupName2": false, "groupName3": "true”}
    
    In this last case the document belongs to __groupName1__ and __groupName3__

You must use the lib [FullSyncGrp](https://github.com/convertigo/c8oprj-lib-fullsync-grp) to manage user and groups. To be sure this library will be downloaded and installed in your studio. To do this: 

{%- capture code -%}
<?xml version="1.0" encoding="ISO-8859-1"?><convertigo-clipboard>
<reference classname="com.twinsoft.convertigo.beans.references.ProjectSchemaReference" priority="0" version="7.8.0.m006">
<property name="projectName"><java.lang.String value="lib_FullSyncGrp=https://github.com/convertigo/c8oprj-lib-fullsync-grp.git:branch=master"/></property>
</reference></convertigo-clipboard>
{%- endcapture -%}

{% include copyCode.md code=code buttonText='Just click to copy and then paste on your Convertigo project root object' %}

This will create a project reference object to the [FullSyncGrp](https://github.com/convertigo/c8oprj-lib-fullsync-grp) and the library will be automatically pulled to your studio when you open / refresh the project or when you deploy it to a Convertigo Server.

### User id specific or anonymous data

Any Convertigo sequence can run anonymously or under a specific authenticated UserID. When a sequence pushes data to a FullSync database, this data will be flagged to belong to UserID the sequence runs for. The replication algorithm will filter the data and replicate only data belonging to the user authenticated on a mobile device. If the user if authenticated on several devices, the data will be replicated to all of them.


If you want to push data to a full sync database to be replicated only for a specific user, you must use the step [setAuthenticatedUser](../../../reference-manual/convertigo-objects/sequencer/steps/http-session-management/set-authenticated-user/) before calling one of the full sync connector  __POST__ or __PostBulk__ transactions.

This way the data inserted in the full sync database will be tagged to belong to this specific user and the data will be replicated only on this user’s mobile devices.

You can also use the ___c8oAcl__ key to override the current user explicitly. if the __Acl Policy__	property is set to __From_c8oAclkey__ for __POST__ & __PostBulkDocuments__ transactions.

In the same way , the __c8oGroup__ property controls the groups 


### Pushing anonymous data

If you want to push data to a full sync database to be replicated for all specific users, do not call any [setAuthenticatedUser](../../../reference-manual/convertigo-objects/sequencer/steps/http-session-management/set-authenticated-user/) step.  This way the data inserted in the full sync database will not be tagged  and the data will be replicated all users. This is useful for product catalogs for examples

## Full Sync underlying technology

### NoSQL technology

Full sync is based on data synchronization of NoSQL databases. A Master database on Convertigo Server and local databases on each mobile device. NoSQL technology brings the ability to sync very efficiently databases with flexible data models. Also differential syncing is efficient on low bandwidth networks such as 2G/2G

As most of technologies used by Convertigo, syncing protocol is not proprietary but relies on the very popular Apache’s CouchDB protocol. CouchDB is an Open Source technology providing a NoSQL server database implementation running on most operating systems. Convertigo interfaces with CouchDB to provide the Full Sync Service.

Server Side repository is handled by an Apache CouchDB server controlled by Convertigo Server. In order to use Full Sync you will have to install a CouchDB server on a server that can be accessed by Convertigo Server.  This can be the same machine Convertigo Server is running on. Also in order to develop Full Sync projects, you will have to install a CouchDB server on the same workstation Convertigo running on.

### Configuring server and studio to access internal PouchDB or an external CouchDB Server

Starting from Convertigo 8.0.0, a local CouchDB server is included in the studio based on the PouchDB technology. This will enable FullSync and NoSQL even without using an external CouchDB server. PouchDB is enabled by default.

But, if you do not want to use the integrated PouchDB server, You can link your Studio with your local CouchDB server. To do this  :

- Window->Preferences->Convertigo->Engine->Full sync
- Uncheck the PouchDB option
- Setup the URL to access CouchDB server, by default this is set to http://127.0.0.1:5984 to access a CouchDB server running on the same workstation than your Studio.
- Setup username and password to access the CouchDB server. By default these are left blank as the default installation of CouchDB server does not require credentials.

The same, you can link your Convertigo Server with a CouchDB server. To do this  :

- Launch the admin console on a web browser , url is http://< your server>:28080/convertigo/admin
- Login (By default admin, admin)
- Click on ‘Config->Full sync’
- Setup the url to access CouchDB server, by default this is set to http://127.0.0.1:5984 to access a CouchDB server running on the same server than your Studio.
- Setup username and password to access the CouchDB server. By default these are left blank as the default installation of CouchDB server does not require credentials. Of course in a production environment, is it highly recommended to configure CouchDB with credentials and to setup them in the Convertigo configuration for Full Sync.
- Be sure to configure CouchDB (With the Futon interface) to hold a reasonably small amount of revisions (Ideally 10) as the default (1000) may cause huge client databases, performances losses and out of disk space problems

