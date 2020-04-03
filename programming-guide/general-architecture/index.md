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

Internal server architecture is modelized as is :

{% include image.html file="pguide_img/shema_server.png" caption="Figure 1 - 1: Server architecture" max-width=400 %}

You will learn about Sequences, transactions and other Convertigo objects in the [Understanding Convertigo Objects](../understanding-convertigo-objects) Chapter

## Clients

gjkjfhgjkfhgjfhfhhfd

## FullSync offline data

fhfdhfhfddhf

## Studio

fdhh