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
To create a new REST project, click New->File->Project...->Convertigo Projects->**REST Empty Web service** . This template will most of the work, but you can also manually create an HTTP Connector in any existing project by Right Click on project ->New->Connector->HTTP Connector. The Connector will be placed in the Connectors folder.

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

There are two ways of creating the transactions in the Connector. If the Web Service has a yaml or json schema you can import it and transactions will be automatically created or else you can manually set up the transactions.

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

### Connect to SQL Databases

The SQL Connector is capable to connect to multiple SGBD.  
| Supported SGBD       | Driver                                                           |
|----------------------|------------------------------------------------------------------|
| mySQL                | com.mysql.jdbc.Driver / com.mysql.cj.jdbc.Driver (8+)            |
| MariaDB              | org.mariadb.jdbc.Driver                                          |
| Microsoft SQL Server | net.sourceforge.jtds.jdbc.Driver                                 |
| Oracle               | oracle.jdbc.driver.OracleDriver                                  |
| PostgreSQL           | org.postgresql.Driver                                            |
| HSQLDB               | org.hsqldb.jdbcDriver                                            |
| DB2                  | com.ibm.db2.jcc.DB2Driver / com.ibm.as400.access.AS400JDBCDriver |
| ODBC Bridge          | sun.jdbc.odbc.JdbcOdbcDriver                                     |

**JNDI** Database access is also available.

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

**my_id** transaction variable has been automatically created in the SQL transaction. Convertigo variables are String based variables. Some SGBD need the data to be cast to the correct type (**::integer** for PostgreSQL query, for example)

![SQL project transaction variables](../../images/pguide_img/backend/sql/081_sql_query_variables.png)

If you double-clic the SQL connector this will open a Tab with the Connector buttons and the transaction response data.  
If you haven't checked already, there is a button to test connection to your database.

![SQL project connector test connection](../../images/pguide_img/backend/sql/09_sql_test_connection.png)

Right-click the transaction > Execute or press F5 key to execute transaction and get result

![SQL project transaction response](../../images/pguide_img/backend/sql/10_sql_new_transaction_response.png)

If your transaction requires dynamic data, use Test cases as below

![SQL project tes case response](../../images/pguide_img/backend/sql/10.1_sql_new_transaction_response.png)

![SQL project tes case response](../../images/pguide_img/backend/sql/15_sql_testcase_variables.png)

You can easily create the **Call Transaction** Step by dragging and dropping the transaction a sequence with CTRL key down

![SQL call transaction step](../../images/pguide_img/backend/sql/11_sql_call_transaction_step.gif)

To update transaction schema to be used in Sequence **Source picker**, execute the transaction at least once, right-click it and select **Update schema from current connector data**

![SQL transaction update schema](../../images/pguide_img/backend/sql/12_sql_source_picker.png)

Double-click your **Call Transaction** Step to refresh and display schema in the Source picker tab

![SQL transaction updated schema](../../images/pguide_img/backend/sql/14_sql_source_picker_updated.png)

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
