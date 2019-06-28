---
title: Installing Convertigo Server
keywords: pages, authoring, exclusion, frontmatter
last_updated: 21/03/2019
summary: "This chapter describes how to install Convertigo Server in several qualified environments and operating systems."
sidebar: c8o_sidebar
permalink: /operating-guide/installing-convertigo-server/
---
This chapter describes how to install Convertigo Server in several qualified environments and operating systems.

## General purpose and packages

Convertigo Server can be installed on different operating systems and application servers. The installation can be done on Windows or Linux operating systems.

In standard, Convertigo Server installation is packaged as a .exe file including Apache Tomcat application server or is a .war file. The installation on application servers, such as IBM WebSphere, is done with the .war file of the distribution.

You will see in the following table the packages used for installation:

Table 3 - 1: Packages uses table

 
 -- | Tomcat | WebSphere | Other application servers
--- | --- | --- | ---
Windows<br>(since version 2003) | convertigo-server-X.Y.Z-v12345-win32-install.exe<br><br>All embedded package (including Tomcat application server) | convertigo-X.Y.Z-v12345-win32.war | convertigo-X.Y.Z-v12345-win32.war
Linux | convertigo-server-X.Y.Z-v12345-linux32.run.zip<br><br>All embedded package (including Tomcat application server) | • 32 bits:<br>convertigo-X.Y.Z-v12345-linux32.war<br><br>• 64 bits:<br>convertigo-X.Y.Z-v12345-linux64.war<br> | convertigo-X.Y.Z-v12345-linux32.war
Other OS<br>(HTML connector not supported) | convertigo-X.Y.Z-v12345-linux32.war | • 32 bits:<br>convertigo-X.Y.Z-v12345-linux32.war<br><br>• 64 bits:<br>convertigo-X.Y.Z-v12345-linux64.war | convertigo-X.Y.Z-v12345-linux32.war