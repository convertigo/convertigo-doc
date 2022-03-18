---
title: Backend Developers
keywords: pages, authoring, exclusion, frontmatter
last_updated: 02/04/2020
summary: "This chapter describes you how to use Convertigo backend objects to connect your data and build backend services."
sidebar: c8o_sidebar
permalink: /programming-guide/backend-developers/
---
This chapter describes you how to use Convertigo backend objects to connect your data.

## Connecting to Data

### Connect to Rest Web Services

The HTTP Connector is capable to connect to Rest API Web Services.  
To create a new REST project, click New > File > Project... > Convertigo Projects > **REST Empty Web service**

![New REST project](../../images/pguide_img/backend/ws/01_new_project_restws.png)

Choose a name wisely ;)

![REST project name](../../images/pguide_img/backend/ws/02_new_project_restws_name.png)

You have the possibility to give the HTTP connector a name

![REST project conenctor name](../../images/pguide_img/backend/ws/03_new_project_restws_connector.png)

In next screen, set the address of the Rest Web Service to connect to (without http(s) protocol)

![REST project connector parameters](../../images/pguide_img/backend/ws/04_new_project_restws_connector_parameters.png)

Last screen is a summary of all entered parameters for the Connector. Click **Finish**

![REST project summary](../../images/pguide_img/backend/ws/05_new_project_restws_summary.png)

The project is created in the Studio, in the **Projects** view

![REST project projects view](../../images/pguide_img/backend/ws/06_restws_projects_view.png)

There are two ways of creating the transactions in the Connector. If the Web Service has a yaml or json schema you can import it and transactions will be automatically created or else you can manually set up the transactions.

#### __Manual transactions__

Right-click the Connector or its **Transactions** folder, then select New > Transaction

![New REST transaction](../../images/pguide_img/backend/ws/07_restws_new_transaction.png)

Depending on the target Rest Web Service choose the appropriate transaction type:

![New REST transaction type](../../images/pguide_img/backend/ws/08_restws_new_transaction_json.png)

Give the transaction a name, add built-in and/or custom variables (they can be edited or added later)

![REST transaction name and variables](../../images/pguide_img/backend/ws/09_restws_new_transaction_json_name.png)

Right-click the transaction > Execute or press F5 key to execute transaction and get result

![REST transaction response](../../images/pguide_img/backend/ws/10_restws_new_transaction_json_response.png)

#### __Importing REST WS schema__

Right-click your project > **Import REST WS reference**

![REST import reference](../../images/pguide_img/backend/ws/11_restws_import_reference.png)

Enter URL of the REST schema or browse a local file to import

![REST reference url file](../../images/pguide_img/backend/ws/12_restws_import_reference_url_file.png)

API methods are automatically created as transactions of the corresponding type

![REST imported transactions](../../images/pguide_img/backend/ws/13_restws_import_reference_created.png)

You can easily create the **Call Transaction** Step by dragging and dropping the transaction a sequence with CTRL key down

![REST call transaction step](../../images/pguide_img/backend/ws/14_restws_call_transaction_step.gif)

To update transaction schema to be used in Sequence **Source picker**, execute the transaction at least once, right-click it and select **Update schema from current connector data**

![REST transaction update schema](../../images/pguide_img/backend/ws/15_restws_source_picker.png)

Double-click your **Call Transaction** Step to refresh and display schema in the Source picker tab

![REST transaction updated schema](../../images/pguide_img/backend/ws/16_restws_source_picker_updated.png)

### Connect to SOAP Web Services

### Connect to SQL Databases

### Connect to NoSQL Databases

### Connect to SAP Netweaver Systems

### Understanding data models & schemas

## Building Backend Services

### Calling Transactions

### Understanding the "Source" concept

#### Xpath models

### Build logic flows

### Iterate on patterns

### Understanding variables

### Compute data & business logic

#### Integrating Javascript code

##### Calling some java code

##### Using third party java libraries

##### Using third party Javascript libraries

### Reading & Writing data files

### Understanding session management

#### Stateless programming

#### Stateful programming

### Setting up FullSync on back-ends

#### Importing data to FullSync databases

#### Creating Views on data

#### Monitoring client data changes

### Miscellaneous backend steps

### Optionally expose Services as RESTful services

### Deploying & testing projects on Servers

### Debugging & Monitoring

#### Setting log levels

#### Adding custom logs
