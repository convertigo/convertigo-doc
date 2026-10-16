---
layout: page
title: SQL connector
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/databases/sql/sql-connector/
metadesc: Establishes connections with an SQL database.    The  SQL connector  enables Convertigo to connect to any database and execute requests.  The access t
ObjGroup: Databases
ObjCatName: 
ObjName: SQL connector
ObjClass: com.twinsoft.convertigo.beans.connectors.SqlConnector
ObjIcon: /images/beans/connectors/images/sqlconnector_color_32x32.png
topnav: topnavobj
---
##### Establishes connections with an SQL database.

The *SQL connector* enables Convertigo to connect to any database and execute requests.

The access to the target database is configured using the **Driver** property and the **Database URL** property. Credentials may be defined in the **User name** and the **User password** properties, if required.

The *SQL connector* includes a connection pooling process that allows opening a certain number of connections, defined by the **Max. connections** property, that are always ready to execute the requests.

The pooled connections are by default kept opened after the transaction execution. This behavior can be inverted using the **Keep connection alive** property.

The pooled connections can also be automatically tested before execution using the **Test connection** property.

Idle connections can be detected and automatically reset using the **Idle connection search delay** property.

The connection pool can be disabled using the **Enable connection pool** property.

A JNDI mode can also be selected, in the **Driver** property. In this case, the connection to the database is made without using any JDBC driver nor connection pool.

Using JNDI mode, the connection to the database can be configured using a `context.xml` file. This file is located in the `<workspace_folder>/studio` folder in Studio, or has to be created in the `<convertigo_webapp>/META-INF/` folder in Server.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Database URL | String | standard | Defines the database URL.<br/>This property defines the URL needed to connect to the database using the driver class. The database URL syntax depends on the driver class selected in **Driver** property:<br/><br/>- `sun.jdbc.odbc.JdbcOdbcDriver` needs a URL of the form: `jdbc:odbc:<DSN(datasource_name)>`.<br/>- `com.ibm.as400.access.AS400JDBCDriver` needs a URL of the form: `jdbc:as400://<server_name>:<port(optional)>/<default_schema>;<properties(optional)>`.<br/>- `com.mysql.jdbc.Driver` needs a URL of the form: `jdbc:mysql://<server_name>:<port(optional)>/<database_name>`.<br/>- `net.sourceforge.jtds.jdbc.Driver` needs a URL of the form: `jdbc:jtds:sqlserver://<server_name>:<port(optional)>/<database_name>`.<br/>- `org.hsqldb.jdbcDriver` needs a URL of the form: `jdbc:hsqldb:file:/<file_path>/<database_name>`.<br/>- `com.ibm.db2.jcc.DB2Driver` needs a URL of the form: `jdbc:db2://<server_name>:<port(optional)>/<database_name>`.<br/>- `oracle.jdbc.driver.OracleDriver` needs a URL of the form: `jdbc:oracle:<drivertype>:<username/password(optional)>@//<host>:<port(optional)>/<service>`, see http://www.oracle.com/technetwork/database/enterprise-edition/jdbc-faq-090281.html#05_03 for Oracle official documentation.<br/>- `org.mariadb.jdbc.Driver` needs a URL of the form: `jdbc:mysql://<server_name>:<port(optional)>/<database_name>`.<br/>- `JNDI` needs a JNDI resource name: `jdbc/<resource_ref_name>`.
Driver | String | standard | Defines the `JDBC` driver class to use.<br/>The following drivers can be selected:<br/><br/>- `sun.jdbc.odbc.JdbcOdbcDriver`: JDBC-ODBC bridge for accessing ODBC databases, for example Microsoft Access.<br/>- `com.ibm.as400.access.AS400JDBCDriver`: IBM AS400 database.<br/>- `com.mysql.jdbc.Driver`: MySQL database.<br/>- `net.sourceforge.jtds.jdbc.Driver`: Microsoft SQL Server database.<br/>- `org.hsqldb.jdbcDriver`: HSQLDB database (one is included in the Studio for demos and samples).<br/>- `com.ibm.db2.jcc.DB2Driver`: IBM DB2 Server database.<br/>- `oracle.jdbc.driver.OracleDriver`: ORACLE database.<br/>- `org.mariadb.jdbc.Driver`: MariaDB database, community-developed fork of MySQL.<br/>- `JNDI`: JNDI mode, not using any JDBC driver nor the connection pooling process. When using JNDI mode, the connection to the database can be configured using a `context.xml` file. This file is located in the `<workspace_folder>/studio` folder in Studio, or has to be created in the `<convertigo_webapp>/META-INF/` folder in Server.<br/><br/>**Note:** You can refer to appendix *SQL drivers and related jar files* in the Operating Guide for more information about driver classes and related jar files.
Max. connections | int | standard | Defines the maximum number of connections allowed in the connection pool to access the target database.<br/>The *SQL connector* connection pool opens in parallel all connections to the target database. This property defines the maximum number of co-existing connections allowed for this connector to connect to the target database.<br/><br/>For example, HSQLDB database included in Studio only allows one connection.
User name | String | standard | Defines the user name needed for connecting to the database.<br/>This user must exist in the target database and have sufficient authorizations to performs requests executed by transactions.
User password | String | standard | Defines the user password needed for connecting to the database.<br/>This password must correspond to user name defined in the **User name** property.
Billing Java class | String | expert | Defines the Java class name executed for billing pruposes.<br/>Convertigo supports a plugin architecture offering billing functionalities. Set the name of the billing class to be called by Convertigo for billing purposes.
Carioca authentication | boolean | expert | Defines whether the connector requires a Carioca authentication.<br/>Set to `true` if you require that only Carioca-authenticated users be able to use this connector.
Connection testing query | String | expert | Defines the SQL query to execute to test the connection to the database (optional).<br/>The *SQL connector* connection pool needs to check the validity of opened connections. This optional property defines the SQL query to execute on a new opened connection to check the connection's validity.<br/><br/>If this property is left blank, Convertigo uses a default SQL query to retrieve the list of the database system tables, depending on the chosen **Driver**:<br/><br/>- `sun.jdbc.odbc.JdbcOdbcDriver`: `SELECT 1 AS dbcp_connection_test`.<br/>- `com.ibm.as400.access.AS400JDBCDriver`: `SELECT * FROM SYSIBM.SQLSCHEMAS FETCH FIRST 1 ROWS ONLY`.<br/>- `com.mysql.jdbc.Driver`: `SELECT * FROM INFORMATION_SCHEMA.TABLES LIMIT 1`.<br/>- `net.sourceforge.jtds.jdbc.Driver`: `SELECT TOP 1 * FROM INFORMATION_SCHEMA.TABLES`.<br/>- `org.hsqldb.jdbcDriver`: `SELECT TOP 1 * FROM INFORMATION_SCHEMA.SYSTEM_TABLES`.<br/>- `com.ibm.db2.jcc.DB2Driver`: `SELECT * FROM SYSCAT.TABLES FETCH FIRST 1 ROWS`.<br/>- `oracle.jdbc.driver.OracleDriver`: `SELECT 1 FROM DUAL`.<br/>- `org.mariadb.jdbc.Driver` needs a URL of the form: `SELECT * FROM INFORMATION_SCHEMA.TABLES LIMIT 1`.<br/>- `JNDI`: `SELECT 1 AS dbcp_connection_test`.
Enable connection pool | boolean | expert | Defines whether the connection pool is used or not to access target database.<br/>The *SQL connector* connection pool allows to automatically pre-connect a pool of connections to the target database. This property allows the programmer to enable or disable the connection pool.<br/><br/>If set to `true`, the connection pool is enabled and connections are retrieved from the pool. If set to `false`, the connection pool is disabled and connections are created on-demand. Default value is `true`.
End transaction | String | expert | Defines the transaction to execute before removing the context.<br/>When a Convertigo context is removed, the specified "End transaction" is executed. Place in this transaction any clean up code, for example a Logout transaction.
Idle connection search delay | long | expert | Defines the number of seconds to wait between searches for idle connections in the connection pool (in seconds).<br/>The *SQL connector* connection pool can automatically search for idle connections and remove them from the pool so they are re-started. This property allows the programmer to set a time delay between two searches.<br/><br/>Default value is `60` seconds. To disable the idle connection search, set this value to `0`.
Keep connection alive | boolean | expert | Defines whether the connection to the database should be maintained after a transaction execution.<br/>Due to the use of connection pool, the *SQL connector* prevents database connections from being closed after each transaction execution or context end. This property set to `false` will force the closure of a connection after a transaction execution or a context end.
Test connection | boolean | expert | Defines whether the connection pool should test or not the connection before providing it.<br/>The *SQL connector* connection pool can test the connection before providing it to the requesting transaction for execution. This property allows the programmer to enable or disable this automatic check.<br/><br/>Default value is `false`, i.e. the automatic test of each connection is disabled.
