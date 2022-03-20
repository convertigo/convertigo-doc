---
title: Understanding Convertigo objects
keywords: pages, authoring, exclusion, frontmatter
last_updated: 02/04/2020
summary: "This chapter describes you how to use Convertigo objects for back and front ends."
sidebar: c8o_sidebar
permalink: /programming-guide/understanding-convertigo-objects/
---
This chapter describes you how to use Convertigo objects for back and front ends.

## Back-end Objects

Back End object are handled by the Convertigo Back end server. You will be able to use these objects in your projects to handle back end processing of your apps.

Back end objects are used in [Sequences](../../reference-manual/convertigo-objects/sequencer/generic-sequence) and are organized as an Execution tree.

As a Back low code programmer you can organize your back end flows (Sequences) to handle client requests. These Sequences will in interact with other Back End object called **Connectors** and **Transactions** to read and write data to Databases, WebServices or Third party applications.

Convertigo provides many Back End connectors you will find in the [reference manual](../../reference-manual)

Most common ones are the the [FullSync Connector](../../reference-manual/convertigo-objects/fullsync/fullsync-connector) to Store and Read data to the NoSQL Database, the [HTTP Connector](../../reference-manual/convertigo-objects/web-services/http-connector) to handle REST and SOAP Web services and the [SQL Connector](../../reference-manual/convertigo-objects/databases/sql/sql-connector)

By default, **Sequences** are not exposed in the Swagger API portal. Convertigo Font-end apps can call sequences directly without using the Swagger API Portal. If you want your **Sequences** to be used by Third Party client apps, you can use the [URLMapper](../../reference-manual/convertigo-objects/url-mapper) and all related [RESTApi](../../reference-manual/convertigo-objects/url-mapper/rest-api) Object to expose selected Sequences to the Swagger API Portal.

## Front-end Objects

Convertigo Font-End object are all the objects used to build the application User Interfaces. These objects are organized under the [Application](../../reference-manual/convertigo-objects/mobile-application/application) Object. Under an **Application** Object you may have to types of Application Components:
 * The Legacy [Mobile](../../reference-manual/convertigo-objects/mobile-application/mobile-components) Components, representing the previous Convertigo (< 8.0) front end technology based on Ionic3 and Angular 5. These object are only to be used for previous projects compatibility. Any new project should use the new **Ngx** components.
* The new [Ngx](../../reference-manual/convertigo-objects/mobile-application/ngx-components) Components, representing the Convertigo 8.0 front end technology based on Angular 13+ and Ionic 6+.

To create a new Project using the **Ngx** components use the **Ngx Mobile Builder Application** template in the new project Creation Wizard. This will create a new project with all the required **Ngx** font-end components.

By Default, all Front-end applications are Web based (or Progressive Web Apps - PWA)  applications automatically served by the Convertigo Servers. These applications can be accessed by simple URL. You can optionally build Native iOS or Android applications by using the [platforms](../../reference-manual/convertigo-objects/mobile-application/platforms/mobile-platforms) Objects. **Platforms** Objects will be automatically created when you use the New Project Wizard under the **Application** Object.

