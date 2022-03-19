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

Back End object are handled by the Convertigo Back server. You will be able to use these objects in your projects to handle back end processing of your apps.

Back end objects are used in [Sequences](../../reference-manual/convertigo-objects/sequencer/generic-sequence.md) and are organized as an Execution tree.

As a Back low code programmer you can organize your back end flows (Sequences) to handle client requests. These Sequences will in interact with other Back End object called **Connectors** and **Transactions** to read and write data to Databases, WebServices or Third party applications.

Convertigo provides many Back End connectors you will find in the [reference manual](../../reference-manual)

Most common ones are the the [FullSync Connector](../../reference-manual/convertigo-objects/fullsync/fullsync-connector.md) to Store and Read data to the NoSQL Database, the [HTTP Connector](../../reference-manual/convertigo-objects/web-services/http-connector.md) to handle REST and SOAP Web services and the [SQL Connector](../../reference-manual/convertigo-objects/databases/sql/sql-connector.md)

## Front-end Objects