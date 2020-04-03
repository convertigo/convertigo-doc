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

Convertigo Clients connects to the Convertigo Server using standard https:// protocols Clients can be different types :

client    | Low Code Client | Client Language | FullSync & Advanced capabilities Supported | Chapter
---|---|---|---|---
Convertigo Mobile Builder Low Code Clients  | Yes | Convertigo Low Code | Yes | [Client Side Programming Guide](../frontend-developers)
Convertigo SDK Based clients| No| JS (Angular, ReactJS, Vue.js, ReactNative) , Java Android & Kotlin , iOS SWIFT | Yes | [Convertigo SDK Documentation](https://www.npmjs.com/package/c8osdkangular) (Starts with Angular SDK but from there see other SDK documentations)
Agnostic clients| No| Any Type of client side language as long as it can consume JSon REST WS | No | [URL Mapper & Swagger portal](../understanding-convertigo-objects)

The best value for your projects is the use the Mobile Builder Low Code Client, but if you still want to use your existing Angular, ReactJS or Vue.js programming skills, this is also possible using SDKs, but you will not benefit from the Client Side Low Code technology.

Although today, UX performances are awesome using JS frameworks, you may still want to program client side using native technology such as Kotlin or Swift. This is also possible using the Native SDKS, but you will not benefit from the Client Side Low Code technology.


## Studio

fdhh

## FullSync offline data

fhfdhfhfddhf

