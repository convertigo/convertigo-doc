---
title: Convertigo Client SDK
keywords: pages, authoring, exclusion, frontmatter
last_updated: 21/03/2019
summary: "Convertigo Client SDK is a set of native libraries used by mobile or Windows desktop applications to access Convertigo Server services."
sidebar: c8o_sidebar
permalink: /reference-manual/convertigo-mbaas-server/convertigo-client-sdk/
---

Convertigo Client SDK is a set of native libraries used by mobile or Windows desktop applications to access Convertigo Server services. An application using the SDK can easily access Convertigo services such as Sequences and Transactions.

The Client SDK will abstract the programmer from handling the communication protocols, local cache, FullSync off line data managment, UI thread management and remote logging. So the developer can focus on building the application.

{% include image.html file="man_img/convertigoClientSDK-300x203.png" url="images/man_img/convertigoClientSDK-300x203.png" alt="Convertigo Client SDK" %}

Client SDK is available for:

- Android Native apps as a standard Gradle dependency
- iOS native apps as a standard Cocoapod
- Windows desktop or Xamarin apps as Nugets or Xamarin Components
- Google Angular (Ex Angular 2) JavaScript framework as an NPM package

More information about Client SDK in the sections below

## Installation Guide

### Android Studio

The Convertigo Client SDK for Android is provided on jCenter:

{% include image.html file="man_img/bintray_badge_bw.png" url="https://bintray.com/opicciotto/maven/convertigo-sdk-android?source=watch" alt="Convertigo Client SDK for Android" %}

To use it in your project, you just have to reference the SDK in the “dependencies” closure of your module build.gradle file. Be sure to update the sdk reference to the correct version.

Sample gradle file : 
{% highlight gradle %}
apply plugin: 'com.android.application'

android {
    compileSdkVersion 24
    buildToolsVersion "24.0.0"

    packagingOptions {
        exclude 'META-INF/LICENSE'
        exclude 'META-INF/NOTICE'
    }

    defaultConfig {
        applicationId "com.example.opic.myc8osdkapp"
        minSdkVersion 10
        targetSdkVersion 24
        versionCode 1
        versionName "1.0"
    }
    buildTypes {
        release {
            minifyEnabled false
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
        }
    }
}

dependencies {
    compile fileTree(dir: 'libs', include: ['*.jar'])
    testCompile 'junit:junit:4.12'
    compile 'com.android.support:appcompat-v7:24.1.1'

    /*
     * Include Convertigo Client SDK version 2.1.2
     */
    compile 'com.convertigo.sdk:c8oSDKAndroid:2.1.2'
}
{% endhighlight %}
By default Convertigo SDK Brings several Database Storage engines :
- SQLite for standard SQLite storage
- SQLiteCipher for Encrypted SQLite storage
- ForestDB for High performance Encrypted or not Storage
You can reduce the size of your applications by excluding the unwanted storage engines.
{% highlight java %}
compile ('com.convertigo.sdk:c8oSDKAndroid:2.1.2') {
    exclude module: 'couchbase-lite-android-sqlcipher' // Exclude if you dont need the optional SQLCipher Storage Engine
    exclude module: 'couchbase-lite-android-forestdb'  // Exclude if you dont need the optional ForestDB Storage Engine
}
{% endhighlight %}

As a reminder, don’t forget to grant INTERNET permission to your app in the AndroidManifest.xml file.
{% highlight xml %}‹uses-permission android:name="android.permission.INTERNET" /›{% endhighlight %}

### Xcode

The Convertigo SDK provided as pod on Cocoapods here : [Convertigo Xcode SDK](https://cocoapods.org/pods/C8oSDK)

Create a PodFile with :
{% highlight swift %}
use_frameworks!
target 'MyApp' do
  pod 'C8oSDK', '2.1.0'
end
{% endhighlight %}

Then in the console, run:

{% highlight Console %} pod install {% endhighlight %}
Restart Xcode and open the .xcworkspace And there you go !

Be sure to read the installation information on Cocoapods

### Xamarin Studio

The Convertigo Client SDK for Android is provided as a convertigo-mbaas-x.y.xam component. In order to be able to use it, you need to import the component for each target platform (Android, IOs, etc …).

The xam file can be found under the **SDK_x.y.z/c# + Xamarin** folder of our [SourceForge files](https://sourceforge.net/projects/convertigo/files/).


component **-----------------(IMAGE)--------------------**

Once the module imported, you should see the package in the Component folder.

componentInstalled **---------------(IMAGE)---------------------**

Before using any SDK function you need to initialize the SDK. Although all other code calling the SDK can be used in a shared project the initialisation code must be done in an Android or iOS project. The best place to initialize the SDK is in: 

- the MainActivity.cs (Android):
{% highlight c# %}
protected override void OnCreate (Bundle bundle)
	{
		base.OnCreate (bundle);
		global::Xamarin.Forms.Forms.Init (this, bundle);
		// Initialize the SDK Here.
		C8oPlatform.Init();
		LoadApplication (new App ());
	}
{% endhighlight %}
- the AppDelegate.cs (Apple)
{% highlight c# %}
public override bool FinishedLaunching(UIApplication app, NSDictionary options)
	{
		global::Xamarin.Forms.Forms.Init ();
		LoadApplication (new AppTestSDK.App ());
		// Initialize the SDK Here.
		C8oPlatform.Init();
		return base.FinishedLaunching (app, options);
	}
{% endhighlight %}

### Angular

C8oClientSDK for Angular is provided as a standard NPM package. You can use it in your package.json just like any other package. see

[Convertigo SDK Angular](https://www.npmjs.com/package/c8osdkangular)

type this command in your console to install the SDK in your current Angular Project
{% highlight Console %} npm install c8osdkangular --save {% endhighlight %}

## Programming Guide

Table of content

- [Initializing and creating a C8o instance for an Endpoint](#initializing-and-creating-a-c8o-instance-for-an-endpoint)
- [Advanced instance settings](#advanced-instance-settings)
- [Calling a Convertigo requestable](#calling-a-convertigo-requestable)
- [Calls parameters](#calls-parameters)
- [Working with threads](#working-with-threads)
- [Chaining calls](#chaining-calls)
- [Handling failures](#handling-failures)
- [Writing the device logs to the Convertigo server](#writing-the-device-logs-to-the-convertigo-server)
- [Using the Local Cache](#using-the-local-cache)
- [Using the Full Sync](#using-the-full-sync)
- [Replicating Full Sync databases](#replicating-full-sync-databases)
- [Full Sync FS_LIVE requests](#full-sync-fs_live-request)

### Initializing and creating a C8o instance for an Endpoint

For the .NET SDK, there is a common static initialization to be done before using the SDK feature. It prepares some platform specific features. After that, you will be able to create and use the C8o instance to interact with the Convertigo server and the Client SDK features.

For the Angular there is some imports and declaration to do in the app’s module to do.

For the Angular, Javascript and React Native there is a specific initialization to do.

For the Angular and Javascript a specific method must be called “finalized init” to be sure that initialization has been finished

A **C8o** instance is linked to a server through is **endpoint** and cannot be changed after.

You can have as many C8o instances (except Angular), pointing to a same or different **endpoint**. Each instance handles its own session and settings. We **strongly recommend using a single C8o instance per application** because server licensing can based on the number of sessions used.

{% include /page_part/mbserv_sdkclient_prguide.html content='1' %}

### Advanced instance settings

The **endpoint** is the mandatory setting to get a **C8o** instance, but there is additional settings through the **C8oSettings** class.

A **C8oSettings** instance should be passed after the **endpoint**. Settings are copied inside the C8o instance and a **C8oSettings** instance can be modified and reused after the **C8o** constructor.

Setters of **C8oSettings** always return its own instance and can be chained.

A **C8oSettings** can be instantiated from an existing **C8oSettings** or C8o instance.

{% include /page_part/mbserv_sdkclient_prguide.html content='2' %}

### Calling a Convertigo requestable

With a C8o instance you can call Convertigo Sequence and Transaction or make query to your local FullSync database. You must specify the result type you want: an XML Document or a JSON Object response.
Returning XML
Just use the **c8o.callXml** method to request a XML response.

{% include /page_part/mbserv_sdkclient_prguide.html content='3' %}

Returning jSON
Just use the c8o.callJson method to request a JSON response.

{% include /page_part/mbserv_sdkclient_prguide.html content='4' %}

### Calls parameters

The call method expects the requester string of the following syntax:

For a transaction: **[project].connector.transaction**
For a sequence: **[project].sequence**
The project name is optional, i.e. if not specified, the project specified in the **endpoint** will be used.

Convertigo requestables generally needs key/value parameters. The key is always a string and the value can be any object but a string is the standard case.

Here a sample with JSON but this would be the same for XML calls:

{% include /page_part/mbserv_sdkclient_prguide.html content='5' %}

### Working with threads

Maybe you noticed that the calls methods doesn’t return the result directly and that all the sample code chains to the **.sync()** method.

This is because the calls methods return a **C8oPromise** instance. That allows the developer to choose if he wants to block the current thread, make an async request or get the response in a callback.

The **.sync()** method locks the current thread and return the result as soon as it’s avalaible. Of course this should not be used in an Android UI thread as this will result to a frozen UI untill data is returned by the server. In Android you should use the **.sync()** method only in worker threads.

However The .Net language offers the async/await mechanism that allows to wait and use the result without blocking the current thread.

Of course this does not apply to Angular as there is not threading for this framework.

{% include /page_part/mbserv_sdkclient_prguide.html content='6' %}

As in many cases, locking the current thread is not recommended, the .then() method allows to register a callback that will be executed on a worker thread.

The .thenUI() method does the same but the callback will be executed on a UI thread. This is useful for quick UI widgets updates.

The **.then()** and **.thenUI()** callbacks receives as parameters the response and the request parameters.

{% include /page_part/mbserv_sdkclient_prguide.html content='7' %}

### Chaining calls

The **.then()** or **.thenUI()** returns a **C8oPromise** that can be use to chain other promise methods, such as **.then()** or **.thenUI()** or failure handlers. 
The last **.then()** or **.thenUI()** must return a **null** value. **.then()** or **.thenUI()** can be mixed but the returning type must be the same: Xml or Json.

{% include /page_part/mbserv_sdkclient_prguide.html content='8' %}

### Handling failures

A call can throw an error for many reasons: technical failure, network error and so on.

The standard try/catch should be used to handle this.

This is the case for the **.sync()** and **.async()** methods: if an exception occurs during the request execution, the original exception is thrown by the method and can be encapsulated in a C8oException.

{% include /page_part/mbserv_sdkclient_prguide.html content='9' %}

When you use the **.then()** or the **.thenUI()** methods, the try/catch mechanism can’t catch a “future” exception or throwable: you have to use the **.fail()** or **.failUI()** methods at the end on the promise chain.

One fail handler per promise chain is allowed. The fail callback provide the object thrown (like an Exception) and the parameters of the failed request.

{% include /page_part/mbserv_sdkclient_prguide.html content='10' %}

### Writing the device logs to the Convertigo server

An application developer usually adds log information in his code. This is useful for the code execution tracking, statistics or debugging.

The Convertigo Client SDK offers an API to easily log on the standard device logger, generally in a dedicated console. To see this console, a device must be physically connected on a computer.

Fortunately, the same API also send log to the Convertigo server and they are merged with the server log. You can easily debug your device and server code on the same screen, on the same timeline. Logs from a device contain metadata, such as the device UUID and can help to filter logs on the server.

A log level must be specified:

- **Fatal**: used for critical error message
- **Error**: used for common error message
- **Warn**: used for not expected case
- **Info**: used for high level messages
- **Debug**: used for help the developer to understand the execution
- **Trace**: used for help the developer to trace the code
To write a log string, use the **C8oLogger** instance of a C8o instance:

{% include /page_part/mbserv_sdkclient_prguide.html content='11' %}

A **C8oLogger** have 2 log levels, one for local logging and the other for the remote logging. With the Android SDK, the local logging is set by the logcat options. With the .Net SDK, the local logging depends of the **LogLevelLocal** setting of **C8oSettings**.

The remote logging level is enslaved by Convertigo server **Log levels** property: **devices output logger**. In case of failure, the remote logging is disabled and cannot be re-enabled for the current **C8o instance**. It can also be disabled using the **LogRemote** setting of **C8oSettings**, enabled with **true** (default) and disabled with **false**.

To monitor remote logging failure, a **LogOnFail** handler can be registered with the **C8oSetting**.

The Convertigo Client SDK itself writes logs. They can be turned off using the **LogC8o** setting of **C8oSettings**, enabled with **true** (default) and disabled with **false**.

{% include /page_part/mbserv_sdkclient_prguide.html content='12' %}

### Using the Local Cache

Sometimes we would like to use local cache on C8o calls and responses, in order to:

- save network traffic between the device and the server,
- be able to display data when the device is not connected to the network.
The Local Cache feature allows to store locally on the device the responses to a C8o call, using the variables and their values as cache key.

To use the Local Cache, add to a call a pair parameter of **C8oLocalCache.PARAM** and a **C8oLocalCache** instance. The constructor of C8oLocalCache needs some parameters:

- **C8oLocalCache.Priority** (SERVER / LOCAL): defines whether the response should be retrieved from local cache or from Convertigo server when the device can access the network. When the device has no network access, the local cache response is used.
- **ttl**: defines the time to live of the cached response, in milliseconds. If no value is passed, the time to live is infinite.
- **enabled**: allows to enable or disable the local cache on a Convertigo requestable, default value is true.

{% include /page_part/mbserv_sdkclient_prguide.html content='13' %}

### Using the Full Sync

Full Sync enables mobile apps to handle fully disconnected scenarios, still having data handled and controlled by back end business logic. See the presentation of the Full Sync architecture for more details.

Convertigo Client SDK provides a high level access to local data following the standard Convertigo Sequence paradigm. They differ from standard sequences by a fs:// prefix. Calling these local Full Sync requestable will enable the app to read, write, query and delete data from the local database:

- **fs://< database>.create** creates the local database if not already exist
- **fs://< database>.view** queries a view from the local database
- **fs://< database>.get** reads an object from the local database
- **fs://< database>.post** writes/update an object to the local database
- **fs://< database>.delete** deletes an object from the local database
- **fs://< database>.all** gets all objects from the local database
- **fs://< database>.sync** synchronizes with server database
- **fs://< database>.replicate_push** pushes local modifications on the database server
- **fs://< database>.replicate_pull** gets all database server modifications
- **fs://< database>.reset** resets a database by removing all the data in it
Where **fs://< database>** is the name of a specific FullSync Connector in the project specified in the **endpoint**. The **fs://< database>** name is optional only if the default database name is specified with the method **setDefaultDatabaseName** on the **C8oSetting**.

An application can have many databases. On mobile (Android, iOS and Xamarin based) they are stored in the secure storage of the application. On Windows desktop application, they are stored in the user AppData/Local folder, without application isolation.

All platforms can specify a local database prefix that allows many local database copies of the same remote database. Use the method **setFullSyncLocalSuffix** on the **C8oSetting**.

{% include /page_part/mbserv_sdkclient_prguide.html content='14' %}

### Replicating Full Sync databases

Full Sync has the ability to replicate mobile and Convertigo server databases over unreliable connections still preserving integrity. Data can be replicated in upload or download or both directions. The replication can also be continuous: a new document is instantaneously replicated to the other side.

The client SDK offers the **progress** and **progressUI** handlers to monitor the replication progression thanks to a **C8oProgress** instance. The **then** and **thenUI** handlers are triggered once the initiation replication is done. When triggered, this means that all documents are synced at this time but future documents can still be replicated in case of continuous replication.

{% include /page_part/mbserv_sdkclient_prguide.html content='15' %}

A device cannot pull private documents or push any document without authentication. A session must be established before and the Convertigo server must authenticate the session (using the [Set authenticated user](https://www.convertigo.com/document/all/cmp-7/7-3-6/reference-manual/convertigo-objects/sequencer/steps/http-session-management/set-authenticated-user/) step for example).

{% include /page_part/mbserv_sdkclient_prguide.html content='16' %}

### Full Sync FS_LIVE request

Full Sync has the ability to re-execute your fs:// calls if the database is modified. The **then** or **thenUI** following a **FS_LIVE** parameter is re-executed after each database update. Database update can be local modification or remote modification replicated.

This allow you keep your UI synchronized with database documents.

A **FS_LIVE** parameter must have a string value, its **liveid**. The **liveid** allow to cancel a **FS_LIVE** request.

{% include /page_part/mbserv_sdkclient_prguide.html content='17' %}

### Full Sync change listener

Sometimes, it’s nice to know what is changed in the database. The Full Sync change listener allow you to monitor what is changed through a JSON object with all details inside.

{% include /page_part/mbserv_sdkclient_prguide.html content='18' %}

## Large File Transfer programming guide

- [Large file transfer service description](#large-file-transfer-service-description)
- [Convertigo backend project](#convertigo-backend-project)
- [Downloading large files](#downloading-large-files)
- [Uploading large files](#uploading-large-files)

### Large file transfer service description

Convertigo SDK offers a large file transfer service able to download and to upload very large files from Convertigo server to the mobile device. This service is based on FullSync technology. File Transfer service is availble to SDK programmers as an API and uses a special Convertigo Backend project .CAR named **lib_FileTransfer.car**.

The whole file transfer must be done within a valid session with Convertigo Server identified by a setAuthenticatedUser step executed within a login sequence.

Here is how this service works for downloads:

- Client must initialize the File Transfer API from a valid c8o object end point, setup monitors and call the **start()** method.
- Then, the client app must first execute a custom project’s Sequence on Convertigo server using a standard **c8o.callJson(“.customGetMyFile”, …)** or **callXml(“.customGetMyFile”, …)**
- On the Server, this custom sequence is responsible to get the file from any repository (File system, ECM, HTTP GET, SOAP Request, …) and to call the StoreLocalFileToDatabase Sequence available in the **lib_FileTransfer.car** project.
- On Convertigo server, the **StoreLocalFileToDatabase** Sequence will slice the target file in to chunks and push each chunk in a special download FullSync database
- Once the slicing is done, the **StoreLocalFileToDatabase** Sequence will return a **TransferID** to the calling sequence, and this sequence will return the **TransferID** to the client app.
- The Client App will use the SDK file Transfer API to start the Transfer providing this **TransferID**.
- The transfer will occur, by “syncing” the chunks. When all the chunks will be replicated, the service will automatically re-assemble the chunks to a transferred file and delete the chunks from the download database
- A download progress call-back function will be called to monitor the file transfer status
- If the network breaks, or if the app is killed while the transfer is still running, it will restart automatically when the FileTransfer **start()** method will be called

And for uploads:

- Client must initialize the File Transfer API from a valid c8o object end point, setup monitors and call the start() method.
- Client opens a stream from a resource such as a file or any other streamable resource
- Then the client calls the **Filetransfer.uploadFile()** giving the stream and the name of the destination filename on Convertigo server
- The file transfer starts by slicing the file on the mobile devices in chunks and inserts the chunks in a special download fullsync data base
- When the file is sliced, the progress monitor call back is called to monitor the upload process
- When all the chunks are transferred, the file will be available on the server on the destination file name given by the client
- If the network breaks, or if the app is killed while the transfer is still running, it will restart automatically when the FileTransfer **start()** method will be called
  
### Convertigo Backend project

As described in the general process, the FileTransfer service needs a Convertigo utility library packaged in the **lib_FileTransfer.car** project file. You will need to install this library in the Studio and deploy it to the target Convertigo Server. To install in Studio :

- Use File->New->Project
- Choose “Libraries->FileTransfer” library
Be sure to have a working FullSync environment (CouchDB server installed and running, Convertigo FullSync properly configured…) before using the FileTransfer services

You will have to prepare in your Convertigo backend project a **getMyFile** sequence responsible for getting the file from a given repository. Within this sequence you will call the **lib_FileTransfer.StoreLocalFileToDatabase** sequence passing as **filepath** variable the path of the file you want to transfer to the mobile device. The **lib_FileTransfer.StoreLocalFileToDatabase** will return a **TransferID** you will be able to “source” and return from your **getMyFile** sequence.

### Downloading a Large file

Here is some sample code to download a large file…
Initializing the FileTransfer Service

{% include /page_part/mbserv_sdkclient_largefile.html content='l1' %}

Calling Convertigo Server to request a File and get the TransferID

{% include /page_part/mbserv_sdkclient_largefile.html content='l2' %}

Starting a file Transfer

{% include /page_part/mbserv_sdkclient_largefile.html content='l3' %}

Monitoring FileTransfer Progress

{% include /page_part/mbserv_sdkclient_largefile.html content='l4' %}

List current transfers

{% include /page_part/mbserv_sdkclient_largefile.html content='l5' %}

Cancel file transfers

{% include /page_part/mbserv_sdkclient_largefile.html content='l6' %}

## API reference

### Android
 - [2.1.0](https://www.convertigo.com/sdk-api/android/2.1.0/)
 - [2.0.7](https://www.convertigo.com/sdk-api/android/2.0.7/)

### Dot Net
 - [2.1.0](https://www.convertigo.com/sdk-api/dot-net-pcl/2.1.0/html/7E550B48.htm)
 - [2.0.7](https://www.convertigo.com/sdk-api/dot-net-pcl/2.0.7/html/7E550B48.htm)

### iOS
 - [2.0.7](https://www.convertigo.com/sdk-api/ios/2.0.7/)

## Changelog

============================
 Version 2.1.0 | 2016-12-16
============================

 NEW FEATURES (1)
  * [Android + iOS + .NET] Add "live" and "changeListener" features

 BUGS (2)
  * [Android] Fixed, remote calls now respects the Timeout setting.
  * [Android + iOS] Fixed the usage of .progress and .progressUI after a callXml: no more exception throw.

============================
 Version 2.0.7 | 2016-10-12
============================

 NEW FEATURES (1)
  * [Android + iOS + .NET] New filetransfer methods to list and cancel transfers.

 IMPROVEMENTS (1)
  * [.NET] Add replication options to C8oSettings.

============================
 Version 2.0.6 | 2016-09-26
============================

 IMPROVEMENTS (1)
  * [Android + .NET] Use Couchbase-lite 1.3.1.

 BUGS (1)
  * [Android + iOS + .NET] Fixed, deadlock if "cancel" a replication

============================
 Version 2.0.5 | 2016-09-12
============================

 IMPROVEMENTS (2)
  * [Android + .NET] Use Couchbase-lite 1.3.0 for Android & .NET (iOS stick to CBL 1.2.1).
  * [Android + iOS + .NET] Add C8o settings to select the fullsync database storage engine and set the fullsync encryption key.

============================
 Version 2.0.4 | 2016-08-16
============================

 NEW FEATURES (2)
  * [Android + iOS + .NET] Add the FileTransfer upload feature.
  * [iOS] New Swift SDK with support of the new C8OPromise API.

 IMPROVEMENTS (3)
  * [Android + iOS + .NET] API harmonization.
  * [Android + iOS + .NET] fs://.post support plain Object as value (also for merge).
  * [iOS] Use of Alamofire 3.4.1 .

 BUGS (2)
  * [Android] Fixed, deadlock in case of "call().sync()" in a background task
  * [Android] Fixed, for Android <= 4.3, documents from a FullSync call are now deep JSONObject.

============================
 Version 2.0.3 | 2016-03-22
============================

 NEW FEATURES (2)
  * [Android + .NET] Add the FileTransfer download feature.
  * [Android + .NET] C8o.Log also send the current device UUID.

 IMPROVEMENTS (2)
  * [Android + .NET] Handle array or collection C8O call parameters values as mutli-valued variables.
  * [Android + .NET] Allow to change local loglevel and re-enable remote logs.

============================
 Version 2.0.2 | 2016-02-02
============================

 BUGS (2)
  * [.NET] Fixed, HTTPS connection with a valid certificate for a WPF application.
  * [Android] Fixed, fs://.post ignore the _id parameter.

============================
 Version 2.0.1 | 2016-01-29
============================

 BUGS (1)
  * [Android + .NET] Fixed replication issues (end of replication not correctly detected).

============================
 Version 2.0.0 | 2016-01-17
============================

 NEW FEATURES (4)
  * [.NET] Initial version.
  * [Android + .NET] Improve error handling.
  * [Android] Support of the new C8OPromise API.
  * [.NET] Support of the new C8OPromise API.

 IMPROVEMENTS (1)
  * [Android + .NET] API harmonization.

 BUGS (1)
  * [Android] Fixed, NPE using the local cache feature.

============================
 Version 1.0.0 | 2015-10-01
============================

 NEW FEATURES (2)
  * [Android] Initial version.
  * [iOS] Initial version.