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

Convertigo features the HTTP Connector able to connect and consume Rest API Web Services. 
To create a new REST project, click New > File > Project... > Convertigo Projects > **REST Empty Web service**. This template will do most of the work, but you can also manually create an HTTP Connector in any existing project by Right Click on project  > New > Connector > HTTP Connector. The Connector will be placed in the Connectors folder.

![New REST project](../../images/pguide_img/backend/ws/01_new_project_restws.png)

Choose a name wisely ;)

![REST project name](../../images/pguide_img/backend/ws/02_new_project_restws_name.png)

You have the possibility to give the HTTP connector a name

![REST project connector name](../../images/pguide_img/backend/ws/03_new_project_restws_connector.png)

In next screen, set the address of the Rest Web Service to connect to. (Do not type http:// or https://) as this is automatically computed according to the SSL setting).

![REST project connector parameters](../../images/pguide_img/backend/ws/04_new_project_restws_connector_parameters.png)

Last screen is a summary of all entered parameters for the Connector. Click **Finish**

![REST project summary](../../images/pguide_img/backend/ws/05_new_project_restws_summary.png)

The project is created in the Studio, in the **Projects** view

![REST project projects view](../../images/pguide_img/backend/ws/06_restws_projects_view.png)

There are two ways of creating Connector and Transactions. If the Web Service has a YAML or JSWON openAPI definition (Swagger definition) you can import it and transactions will be automatically created or else you can manually set up the transactions.

#### __Manual transactions__

Right-click the Connector or its **Transactions** folder, then select New > Transaction

![New REST transaction](../../images/pguide_img/backend/ws/07_restws_new_transaction.png)

Depending on the target Rest Web Service choose the appropriate transaction type:
* **XML HTTP Transaction** will consume XML based REST Webservices (Data returned by the web services in XML format), mostly for XML/RPC type of web services
* **JSON HTTP Transaction** will consume jSON based REST Webservices (Data returned by the web services in jSON format), mostly for standard RESTful web services available today.
* **Download HTTP Transaction** will consume Binary based REST Webservices (Data returned by the web services in Binary format), mostly for downloading data in Binary format.
* **HTTP Transaction** will consume a REST based on unknown format. The data will be returned as raw data, you will have to parse by hand.

![New REST transaction type](../../images/pguide_img/backend/ws/08_restws_new_transaction_json.png)

Give the transaction a name, add built-in and/or custom variables (they can be edited or added later). These variables will enable you to invoke the transactions with a given BODY, ContentType or any other POST or GET element in the HTTP Request.

![REST transaction name and variables](../../images/pguide_img/backend/ws/09_restws_new_transaction_json_name.png)

Once the Transaction is created, you can right-click the transaction > Execute or press F5 key to execute transaction to test it and get results.

Also you can add a **Test Case** to it (Right Click o Transaction->New->Test Case) and set values in Variables to test your Transaction with a Given set of Input Variables. To set the value in a Variable, give the value in the **Default Value** Test Case variable's property.

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

Convertigo HTTP connector is able to connect to SOAP Web Services (XML messaging) through the import of a WSDL file or url.

To create a new SOAP project, click New > File > Project... > Convertigo Projects > **SOAP Web service**.

![SOAP Web Service New project](../../images/pguide_img/backend/soap/01_soap_new_project.png)

Give your project a name

![SOAP Web Service New project name](../../images/pguide_img/backend/soap/02_soap_new_project_name.png)

Next screen will ask for an URL or a file to the distant SOAP Web Service WSDL.

![SOAP Web Service New project WSDL](../../images/pguide_img/backend/soap/03_soap_new_project_wsdl.png)

The HTTP Connector is automatically created and named. **XML HTTP Transaction** are also automatically created and named by the SOAP method name and prefixed by a '**C**'

![SOAP Web Service project created](../../images/pguide_img/backend/soap/04_soap_new_project_created.png)

You can right-click the transaction > Execute or press F5 key to execute transaction to test it and get results. Left Panel is the Raw response of the WS and right panel is the XML or JSON response as seen in the transaction itself

![SOAP Web Service transaction execute](../../images/pguide_img/backend/soap/05_soap_transaction_execute.png)

You can test the other WS methods that require variable values using Test Cases.

![SOAP Web Service transaction testcase](../../images/pguide_img/backend/soap/06_soap_transaction_testcase.png)

You can easily create the **Call Transaction** Step by dragging and dropping the transaction a sequence with CTRL key down

![SOAP Web Service Call Step](../../images/pguide_img/backend/soap/07_soap_call_transaction_step.gif)

No need to update the transaction schema for the Sequence Source Picker, it was automatically created when the WSDL was imported.

![SOAP Web Service Source Picker](../../images/pguide_img/backend/soap/08_soap_call_step_source_picker.png)

In the Project Explorer view, you will see the SOAP templates in the **soap-templates** folder. This can be edited at your convinience (variable name, etc...).

![SOAP Web Service SOAP template](../../images/pguide_img/backend/soap/09_soap_explorer_templates.png)
### Connect to SQL Databases

The SQL Connector is able to connect to different Database Servers:  

| Supported Database   | Driver                                                           |
|----------------------|------------------------------------------------------------------|
| mySQL                | com.mysql.jdbc.Driver / com.mysql.cj.jdbc.Driver (V8+)           |
| MariaDB              | org.mariadb.jdbc.Driver                                          |
| Microsoft SQL Server | net.sourceforge.jtds.jdbc.Driver                                 |
| Oracle               | oracle.jdbc.driver.OracleDriver                                  |
| PostgreSQL           | org.postgresql.Driver                                            |
| HSQLDB               | org.hsqldb.jdbcDriver                                            |
| IBM DB2 on AS/400    | com.ibm.as400.access.AS400JDBCDriver                             |
| IBM DB2              | com.ibm.db2.jcc.DB2Driver                                        |  
| ODBC Bridge          | sun.jdbc.odbc.JdbcOdbcDriver                                     |


**JNDI** Database access is also available. In This case The database has to be referenced in the Application Server definition. This is only to be used in the case Convertigo Servers are deployed in J2EE Application Servers such as IBM WebSphere.

You can also add any other JDBC driver dynamically by adding the driver's **JAR** file in the **libs** folder of your project. When you project will be deployed to the Convertigo server, it will be usable from your project. You will just have to know explicitly the driver URL to access it.

### Create a SQL Connector based project
To create a new SQL project, click New > File > Project... > Convertigo Projects > **SQL project**

![New SQL project](../../images/pguide_img/backend/sql/01_new_project_sql.png)

Choose a name for the project

![SQL project name](../../images/pguide_img/backend/sql/02_new_project_sql_name.png)

You have the possibility to give the SQL connector a name

![SQL project connector name](../../images/pguide_img/backend/sql/03_new_project_sql_connector.png)

In next screen, choose the **JDBC driver** for your database connection and enter **JDBC URL** from proposed template. Fill in **Username** and **Password**, if needed. You can test the connection to the database using the **Test connection** button.

![SQL project connector parameters](../../images/pguide_img/backend/sql/04_new_project_sql_parameters.png)

The project is created in the Studio, in the **Projects** view

![SQL project projects view](../../images/pguide_img/backend/sql/05_new_project_sql_created.png)

To create a new SQL query, create a new SQL transaction. Right-click the Connector or its **Transactions** folder, then select New > Transaction

![SQL project new transaction](../../images/pguide_img/backend/sql/06_sql_new_transaction.png)

There is currently only one transaction type, choose **SQL transaction**

![SQL project new transaction type](../../images/pguide_img/backend/sql/07_sql_new_transaction_type.png)

In the final wizard page, you have the possibility to write your SQL query. Enclose transaction variables (dynamic values) with brackets **{my_variable}**, this will also automatically creates the variables.

![SQL project transaction query](../../images/pguide_img/backend/sql/08_sql_new_transaction_query.png)

**my_id** transaction variable has been automatically created in the SQL transaction. Convertigo variables are String based variables. Some Database Servers need the data to be casted to the correct type (**::integer** for PostgreSQL query, for example)

![SQL project transaction variables](../../images/pguide_img/backend/sql/081_sql_query_variables.png)

If you double-click the SQL connector this will open a Tab with the Connector buttons and the transaction response data.  
If you haven't checked already, there is a button to test connection to your database.

![SQL project connector test connection](../../images/pguide_img/backend/sql/09_sql_test_connection.png)

Right-click the transaction > Execute or press F5 key to execute transaction and get result

![SQL project transaction response](../../images/pguide_img/backend/sql/10_sql_new_transaction_response.png)

If your transaction requires dynamic data, use Test cases as below

![SQL project test case response](../../images/pguide_img/backend/sql/10.1_sql_new_transaction_response.png)

![SQL project test case response](../../images/pguide_img/backend/sql/15_sql_testcase_variables.png)

You can easily create the **Call Transaction** Step by dragging and dropping the transaction a sequence with CTRL key down

![SQL call transaction step](../../images/pguide_img/backend/sql/11_sql_call_transaction_step.gif)

To update transaction schema to be used in Sequence **Source picker**, execute the transaction at least once, right-click it and select **Update schema from current connector data** or **Update schema from transaction definition**

![SQL transaction update schema](../../images/pguide_img/backend/sql/12_sql_source_picker.png)

Double-click your **Call Transaction** Step to refresh and display schema in the Source picker tab

![SQL transaction updated schema](../../images/pguide_img/backend/sql/14_sql_source_picker_updated.png)

### Connect to NoSQL Databases

### Connect to SAP NetWeaver Systems

### Understanding Data schemas

In Convertigo, all data coming from connectors are described by **Schemas**. This description is based on the XML Schema [https://www.w3schools.com/xml/schema_intro.asp](https://www.w3schools.com/xml/schema_intro.asp), and is automatically handled by Convertigo Studio. 

**Schemas** Can be displayed in the **Schema View**

...Schema View...

By Default, Convertigo is not aware of the Structure (Schema) of data retrieved from a Connector, except when :

* The Connectors have been created from some Structured definition files (Import SOAP or REST YAML/JSON Swagger web Services)
* The Connector has been Created by importing SAP BAPI Transactions
  
The **Schemas** Are used in various parts  of Convertigo Studio and mainly in all **Source Pickers** to display the Structure of the data to bind from Step to Step or to bind from a Service to a FrontEnd UI.

This is why it is important to describe the Data Schema of Connector's transactions to Convertigo. This easy to do as Convertigo provides 2 commands to generate Schemas:

* Execute a Transaction to retrieve some data (F5 when the Transaction is selected), Right Click on a Transaction, and use the **Update Schema from Current Connector data**. This will use the current data displayed in the connector as model to generate a response Schema for this this Transaction. The response schema will be seen in the Schema view as **&lt;ConnectorName&gt;_&lt;TransactionName&gt;_ResponseData**.

    {{site.data.alerts.note}}
    Note that transaction's request data schemas are Automatically generated by Convertigo as &lt;ConnectorName&gt;_&lt;TransactionName&gt;_RequestData.
    {{site.data.alerts.end}}

* You can also use the **Update Schema from Transaction definition** command. This will only work on Connectors where Convertigo can introspect the underlying data models, for example SQL Connector transactions.

Once the **Schemas** are generated, you will be be able to explore all the data structures in the **Schema View** and to use them in the **Source Picker** (back end data binding) and the **Ngx Picker** (Front End data binding).

Note also that Schemas for **Sequences** are automatically generated by Convertigo by exploring the **Sequence** Data structure steps. You will find them in the **Schema** view as **&lt;SequenceName&gt;_RequestData** and **&lt;SequenceName&gt;_ResponseData**

## Building Backend Services

In Convertigo Back end services are called **Sequences** You can have as many **Sequences** in your projects, when called each Sequence will perform a backend flow executed on the Convertigo servers. Sequences can call Transactions to retrieve  or push data to connectors, perform data structure transformations and compute business logic.

Sequences building blocks are called **Steps**. Each step is executed one other the other in Sequence (This is why we call this a Sequence...). Some steps will build data structures (JSON and XML Steps), some will control the flow of execution (Flow Control Steps) and others will handle miscellaneous tasks like authentications, session management and others.

Sequences can have Input variables that will be used during the execution to provide data used for flow control or for pushing this data to connectors. In a Sequence all variables are Strings, as the connectors are responsible for typing the data to the correct format.

Sequences can call Connector's transactions and of course other Sequences (Sub Sequences) from the same project or from any other project in your workspace. This enables the concept of Sequences libraries projects providing sequences performing various tasks. By convention a library project is named as **lib_&lt;MyLibraryProject&gt;**

### Calling Transactions

One of the most commons tasks performed by a **Sequence** is to call a Connector's transaction. You can do this by using the [Call Transaction Step](../../reference-manual/convertigo-objects/sequencer/steps/convertigo-request-steps/call-transaction/)


... Image... 


A Sequence can call a transaction from its own project or form any Other project installed in your workspace. When executed the [Call Transaction Step](../../reference-manual/convertigo-objects/sequencer/steps/convertigo-request-steps/call-transaction/) Step will provide the data returned by the Connector as a **Source** to any other following step in the Sequence.

### Understanding the "Source" concept

**Sources** are a key concept in Convertigo. The basic idea is that each **Step** can provide data to the following steps in the execution flow. So, a given step can 'Source' some data from an other step previously executed.

The **Source Picker Tool** will display the data structure tree provided by a step when you right click on a step ->Show in Picker

... image ...

If you want to link (We can also say 'Source') data provided by a step to an other Step, you will just have to Drag & Drop the wanted tree element **TXT** to the destination steps.

... Image ... 

An other way to do this is to use the **Source** property of a Step and click on the [...] button to open source selector window.

... Image ...

Select the Step from where you want to 'Source' data from. (All Red Steps can not be sourced as they will be executed after your step) And pick in the tree data structure the **TXT** element you want to bind to your step.

... Image ...

#### XPath models

**XPaths** are a way to point to the data structure elements values we will want to source. This follows a standard syntax described [here](https://www.w3schools.com/xml/xpath_syntax.asp). In most cases, the source picker will generate for the you a Valid XPath so you do not have to bother so much about this. You can find below some very common XPath Use cases:

|XPath  sample | Usage |
|--------|-------|
|/data1/data2/data3/text() | Will select the **data3** node value if there is only one **data3** occurrence in the structure or all **data3** values (concatenated) if there are several occurrences of **data3** |
|/data1/data2/data3[1]/text() | Will select all the first **data3** occurrence value |
|/data1/data2/data3[@orginalKeyName = 'MyKey']/text() | Will select the **data3** occurrence having a attribute **'originalKeyname'** equal to **'MyKey'** |
|/data1//data4/text() | Will select all **data4** node values that are under the **data1** node whatever is their tree depth |

**XPaths** are a powerful selector tools to be able to 'Source' data from any structure

### Build logic flows

Sequences can have logic flows such as If/The/else decisions, Iterators and loop or Parallel executions. The execution is based on a graphic tree as follow :
* For **If** steps, every step under a If node will be executed if the If condition matches. If not the flow will continue to steps on the same level.
* For **If / Then / Else** steps, every step under the **Then** Step will be executed if the If condition matches. If not all the steps un the **Else** will be executed. At the end the flow will continue to steps on the same level.
* For **Iterators** and **loops** all steps under an **Iterator** Step will be executed repeatedly for each Iteration. When the iterations are finished the flow will continue to the step at the same level.
* For **Parallel** steps, Each step under a **Parallel** Step will be executed at the same time. The sequence will resume to the next Step at the same level when all the Steps finished their executions.

...image...

### Iterate on patterns

Sequences can use iterators or Loops Steps to perform several times step executions. The most used step for this is the [Iterator](../../reference-manual/convertigo-objects/sequencer/steps/flow-control-steps/iterator/) Step. The step's **source** property will be used to know on what occurrences the Iterator Step should loop. You can use the **Source Picker** to bind the Iterator's source to any previous step data structure holding multiple occurrences of data. for example if a **Call Transaction** Step returns this data structure :

```
{
    clients: [
        item: {
            id:"1",
            name:"test"
        },
        item: {
            id:"2",
            name:"test2"
        }
    ]
}
```

| XPath | Will Iterate on on |
|-------|---------------|
|/clients/item | All **item** objects in **clients** |
|/clients/item/name | All **name** of **item** objects in **clients** |
|//item | All **item** objects |
|/clients/item[contains(./name/text(), 'test')] | All **item** objects where the **name** field contains the 'text' string |

As you see you can use the full power of **XPath** expressions to fine tune your iteration patterns. If you remember, all Steps can be a 'Source' to other Steps. This is also true for the **Iterator** step. The step can be sourced to get current Iteration data.

This is why in any Step under an **Iterator** you can source it from the Iterator with a given XPath. for example if the Iterator iterates on **/clients/item** :

| XPath | data |
|-------|---------------|
|./id/text() | Will represent the **id** value of the current  iterated **item** in **clients** |
|./name/text() | Will represent the **name** value of the current  iterated **item** in **clients** |


### Understanding variables

Any Sequence in Convertigo can have input variables. 

### Compute data & business logic

#### Integrating JavaScript code

##### Calling some java code

##### Using third party java libraries

##### Using third party JavaScript libraries

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
