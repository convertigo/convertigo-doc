---
title: Installing Convertigo Studio
keywords: pages, authoring, exclusion, frontmatter
last_updated: 21/03/2019
summary: "This chapter describes how to install Convertigo Studio in the qualified environments and operating systems."
sidebar: c8o_sidebar
permalink: /operating-guide/installing-convertigo-studio/
---
This chapter describes how to install Convertigo Studio in the qualified environments and operating systems.

## General purpose and packages

Convertigo Studio can be installed on Windows/Linux/Mac operating systems.

You will see in the following table the officially supported operating systems and versions for Studio installation, as well as the package to use:

Table 2 - 1: Operating systems and Convertigo Studio installation packages table

OS | Supported versions | Convertigo package name
--- | --- | ---
Windows | • Windows 10<br>• Windows 11  | convertigo-studio-X.Y.Z-tag-win64-install.exe
Linux  | • Ubuntu, versions 20.04 (LTS) and 22.04 (LTS)<br>• Debian version 11.0 | convertigo-studio-X.Y.Z-tag-linux64.tar.gz
Mac OS | • Mac OS X 10.5 (Leopard) or greater | convertigo-studio-X.Y.Z-tag-macosx.tar.gz

In standard, Convertigo Studio installation is packaged as:

- an .exe file for Windows
- an .tar.gz archive file for Linux and Mac

The installer or archive file contains the Eclipse-based Convertigo Studio and the embedded Convertigo Server including an Apache Tomcat application server.

## Convertigo Studio installation

This chapter explains how to install Convertigo Studio on several operating systems and then how to change the default configurations of installed Convertigo Studio:

### Installing Convertigo Studio on Windows

#### Prerequisites
##### Machine Prerequisites

The following table describes minimum machine prerequisites for installing Convertigo Studio:

Table 2 - 2: Machine prerequisites

Windows | 
--- | ---
Version | Windows 10 64 Bits
CPU | Dual Core
RAM | 2 Gb
Disk space | 1 Gb

##### Installation requirements
- The Convertigo Studio installer file: convertigo-studio-X.Y.Z-tag-win64.zip

#### Installation procedure

- Simply unzip (Using WinRar, 7-ZIP) the zip file in a directory, then launch ConvertigoStudio.exe

### Installing Convertigo Studio on Linux

Prerequisites

Machine Prerequisites

The minimum machine prerequisites for installing Convertigo Studio are the following:

- CPU: Dual Core
- RAM: 4Gb
- Disk space: 10Gb.
 
{{site.data.alerts.note}}
Specified packages are necessary for using web connectors or legacy connectors. These lists of packages are not exhaustive. If you have problems with your installation of Convertigo Server on Linux/Tomcat, please contact us.
{{site.data.alerts.end}}

##### Installation requirements

- The Convertigo Studio compressed file: convertigo-studio-X.Y.Z-tag-linux64.tar.gz

#### Installation procedure

The following procedures explain step by step how to install and to configure Convertigo Studio on Linux.

**To install Convertigo Studio on Linux**

1. Expand the archive file convertigo-studio-X.Y.Z-tag-linux64.tar.gz in a destination directory where you have the rights to.
2. Then, follow procedure [To start and configure Convertigo Studio on Windows/Linux/Mac OS](#to-start-and-configure-convertigo-studio-on-windowslinuxmac-os).


### Installing Convertigo Studio on Mac OS

#### Prerequisites
##### Machine Prerequisites

The following table describes minimum machine prerequisites for installing Convertigo Studio:

Table 2 - 4: Machine prerequisites

MAC OS | 
--- | ---
Version | Mac OS X 10.5 (Leopard) or greater
CPU | Dual Core, Intel processor
RAM | 2 Gb
Disk space | 1 Gb

##### Installation requirements
- The Convertigo Studio compressed file: convertigo-studio-X.Y.Z-tag-macosx.tar.gz

#### Installation procedure

The following procedures explain step by step how to install and to configure Convertigo Studio on Mac OS.

**To install Convertigo Studio on Mac OS**

1. Expand the archive file convertigo-studio-X.Y.Z-tag-macosx.tar.gz in a destination directory where you have the rights to.
2. Then, follow procedure [To start and configure Convertigo Studio on Windows/Linux/Mac OS](#to-start-and-configure-convertigo-studio-on-windowslinuxmac-os).

### Finish installing and configuring Convertigo Studio at first start

After you installed Convertigo Studio on Windows or decompress the archive file on Linux or Mac OS, the Studio can start but is not completely set up. You have to finish the installation by configuring it at startup. This section presents the procedures to finish installing and configuring Convertigo Studio on all platforms.

- [Configure Convertigo Studio at first startup](#configure-convertigo-studio-at-first-startup)

### Convertigo Studio default configuration

#### Configure Convertigo studio at first startup

Common to all platforms (Windows, Linux, Mac OS), the following procedure describes how to finish installing and configuring Convertigo Studio at first start.

##### To start and configure Convertigo Studio on Windows/Linux/Mac OS

**1**. On Windows, if you choose to create shortcuts during the installation wizard, simply access the shorcut that is on your desktop and double-click on it to launch Convertigo Studio. Otherwise, use the Start menu to launch Convertigo Studio.

For other platforms, Convertigo Studio was installed in the folder you choose during installation procedure. You can open this folder to access the *ConvertigoStudio* start file and double-click on it to launch Convertigo Studio.

Convertigo Studio starts:

{% include image.html file="guide_img/c8ostudio_1.PNG" caption="Figure 2 - 10: Convertigo Studio splashscreen at startup" %}

When Convertigo Studio opens, the Workspace Launcher popup is displayed:

{% include image.html file="guide_img/c8ostudio_2.jpg" caption="Figure 2 - 11: Workspace launcher" %}

**2**. In this screen, indicate the location of your projects workspace, set by default to your user environment. 

{{site.data.alerts.note}}
For more information on Convertigo workspace and projects workspace, <a href="../appendixes/#convertigo-workspace">see Appendix Convertigo workspace</a>.
{{site.data.alerts.end}}

{{site.data.alerts.important}}
Beware that you must choose a folder where you have writing rights. Otherwise, you will not be able to restart the Studio on this same workspace.
{{site.data.alerts.end}}

**3**. Check the **Use this as default and do not ask again** checkbox if you do not want to see the Workspace Launcher popup at next startup:

{% include image.html file="guide_img/c8ostudio_3.jpg" caption="Figure 2 - 12: Updated values in Workspace Launcher" %}

**4**. Click on the **OK** button.

The Studio starts and a wizard is opened:

{% include image.html file="guide_img/c8ostudio_4.PNG" caption="Figure 2 - 13: First Studio start - Starting wizard" %}

This is the **Convertigo Studio Configuration** wizard. You have to go through this wizard before the Studio engine starts.

For Windows environment, continue with step 6 of this procedure.

For Linux and Mac OS environments, the first page of the wizard is the End User Licence Agreement. You need to carefully read the EULA and accept it before the Studio starts:

{% include image.html file="guide_img/c8ostudio_5.jpg" caption="Figure 2 - 14: First Studio start - EULA on Linux or Mac" %}

**5**. Select the **Accept license** option, and click on **Next**.

**6**. The next page displays a summary about the workspace (workspace that was chosen in the Workspace Launcher window). Depending on the selected path:

- if the selected folder does not exist or is empty: a new workspace will be created
- if the selected folder is a previous Convertigo workspace created with a Convertigo prior to version 6.2.0: the workspace will be migrated,
- if the selected folder is a previous Convertigo workspace created with a Convertigo from version 6.2.0: the workspace will be used as is. In this case, several pages of the wizard may not be displayed because the workspace is reused.

{% include image.html file="guide_img/c8ostudio_6.PNG" caption="Figure 2 - 15: Studio starting wizard - Convertigo workspace" %}

**7**. If the summary does not fit your needs, click on **Cancel** and restart this procedure from step 1.

**8**. Otherwise, click on **Next**.

The next page allows you to configure a proxy for Convertigo Studio to access the Internet:

{% include image.html file="guide_img/c8ostudio_7.PNG" caption="Figure 2 - 16: Studio starting wizard - Proxy settings" %}

**9**. If you need to use a proxy, configure your proxy settings in this page.
 
{{site.data.alerts.note}}
For more information about Convertigo proxy settings, <a href="../using-convertigo-administration-console/#proxy">see Proxy</a>. This page explains the Convertigo Engine configuration properties about proxy. Settings found in this wizard page are the same.
{{site.data.alerts.end}}

**10**. You can test the connection by clicking on the **Check connection** button. A message indicates that the connection test is in progress:

{% include image.html file="guide_img/c8ostudio_8.PNG" caption="Figure 2 - 17: Studio starting wizard - Testing connection" %}

After the test is finished, a message is displayed indicating whether the connection is successful or not:

{% include image.html file="guide_img/c8ostudio_9.PNG" caption="Figure 2 - 18: Studio starting wizard - Successful connection test" %}

**11**. If the connection is not successful, configure correctly your proxy settings (start over from step 9 of this procedure).

**12**. Otherwise, click on *Next*.

The next page asks if you already have a Personal Studio Configuration.
 
{{site.data.alerts.note}}
A Personal Studio Configuration is an encrypted string that will automatically configure your Convertigo Studio with projects deployment configurations.
By registrating on this wizard, you will be granted a free access to Convertigo Trial Cloud and will get a PSC with a default deployment configuration to this shared Cloud server.
{{site.data.alerts.end}}

{% include image.html file="guide_img/c8ostudio_10.PNG" caption="Figure 2 - 19: Studio starting wizard - Personal Studio Configuration" %}

On this page, several options are possible:

#### Case of an already registered Studio user

If you were already registered in a former version of Convertigo and you already had a registration certificate for deploying your projects on Convertigo Trial Cloud (see Figure 2 - 20), or if you already got a Personal Studio Configuration by registering in Convertigo 6.2.x or 6.3.x (see Figure 2 - 28), you do not need to register again.

{% include image.html file="guide_img/c8ostudio_11.jpg" caption="Figure 2 - 20: Example of former registration certificate email" %}

Continue with the procedure [To configure Convertigo Studio with a PSC or a registration key](#to-configure-convertigo-studio-with-a-psc-or-a-registration-key).

#### Case of a new Convertigo Studio testing user, you have to register now

You do not have a registration key nor a PSC, you have to register in the **Studio Configuration** wizard to get one. Thanks to that, you will be granted:

- a free access to Convertigo Trial Cloud
- an account in the Convertigo Forum to get some tips and tricks
- and a free 20 minutes "Getting Started" web meeting session

Continue with the procedure “To register on Convertigo Trial Cloud”

##### To configure Convertigo Studio with a PSC or a registration key

**1**. In the Personal Studio Configuration page of the **Studio Configuration** wizard (see Figure 2 - 19), select the **I already have a PSC** option, and click on **Next**.

The next page proposes a text area into which you should paste your PSC or your former registration certificate (received by email):
{% include image.html file="guide_img/c8ostudio_20.PNG" caption="Figure 2 - 29: Studio starting wizard - Personal Studio Configuration" %}

**2**. In the **PSC** text area, copy and paste your former registration certificate or your Personal Studio Configuration:
{% include image.html file="guide_img/c8ostudio_21.PNG" caption="Figure 2 - 30: Studio starting wizard - Filling in your PSC" %}

If the PSC or the registration certificate is not valid, the wizard indicates an error message:
{% include image.html file="guide_img/c8ostudio_22.PNG" caption="Figure 2 - 31: Studio starting wizard - Invalid PSC" %}

**3**. Otherwise, the **Next** button is enabled, click on this button to continue.
A **Setup summary** page is displayed, it shows all steps that are going to be performed at finish:

{% include image.html file="guide_img/c8ostudio_23.PNG" caption="Figure 2 - 32: Studio starting wizard - Setup summary" %}

**4**. Click on the **Finish** button if all the configurations displayed on this page are correct. Otherwise, click on **Cancel** and restart the procedure [To start and configure Convertigo Studio on Windows/Linux/Mac OS](#to-start-and-configure-convertigo-studio-on-windowslinuxmac-os), from step 1.

After the wizard is complete, The Studio engine starts.

Sometimes, on Windows environments, a Windows Security Alert popup is displayed:

{% include image.html file="guide_img/c8ostudio_24.PNG" caption="Figure 2 - 33: Windows Security Alert popup" %}

**5**. In this window, you have to select the type of network you are connected to, this will authorize Convertigo to access the network and the several projects’ target applications. Check the appropriate checkbox and click on the **Allow access** button.

While the Convertigo engine is starting, a **Convertigo News** popup is displayed. It shows our latest news (a link for you to access our Facebook page and a list of our latest tweets):

{% include image.html file="guide_img/c8ostudio_25.PNG" caption="Figure 2 - 34: Convertigo news popup" %}

**6**. Check the **Dismiss automatically** checkbox if you want this window to be automatically closed on next application startups.

**7**. Click on the **Close** button.

The Studio is opened, displaying the Welcome page:
{% include image.html file="guide_img/c8ostudio_26.PNG" caption="Figure 2 - 35: Convertigo Studio Welcome page" %}

This page contains several tutorial videos organized in three categories:

- Connectivity to back-end data and processes,
- Business logic,
- Mobile front-end.

Do not hesitate to watch these startup videos to understand all capabilities of Convertigo.

On the right top corner of the videos table, you also find a link to the What’s new page of the Convertigo website.

**8**. Close this Welcome page by clicking on  button.

The Convertigo Studio is started:
{% include image.html file="guide_img/c8ostudio_27.PNG" caption="Figure 2 - 36: Convertigo Studio" %}

Convertigo Studio user interface includes two perspectives:

- Convertigo API (opened by default): this perspective will be interesting for developing Convertigo server-side projects
- Resource: this perspective will be interesting to develop Convertigo client-side application projects (mobile or desktop) 

{{site.data.alerts.tip}}
You can easily switch between both perspectives thanks to the two buttons available in the top right corner of Convertigo Studio.
{{site.data.alerts.end}}

**9**. The correct launch of the Convertigo engine can be validated by calling the following URL in a Web browser:
{% include image.html file="guide_img/c8ostudio_28.jpg" %}

- localhost is the host name of local machine (as Convertigo Studio is installed locally)
- 18080 is the default HTTP port number of a Convertigo Studio

The Test Platform home page of the Server embedded in Convertigo Studio opens:
{% include image.html file="guide_img/c8ostudio_29.PNG" caption="Figure 2 - 37: Convertigo Studio Test Platform Home page"%}

The page must be filled with data in the Convertigo Versions panel. The Projects list located below should be empty as no projects are present in the Studio just after installation.

### Convertigo studio default configuration

After you installed Convertigo Studio, you may want to use or change the default access URLs to the embedded engine, the default accounts or the default workspace location. This section presents all the needed information about Convertigo Studio default configurations.

- [Convertigo Studio default configurations and access URLs](#convertigo-studio-default-configurations-and-access-URLs)
- [Changing Convertigo Studio default configurations](#changing-convertigo-studio-default-configurations)

#### Convertigo Studio default configurations and access URLs

- [Convertigo Studio default workspace](#convertigo-studio-default-workspace)
- [Convertigo Studio default ports](#convertigo-studio-default-ports)
- [Convertigo Studio Administration Console URLs](#convertigo-studio-administration-console-urls)
- [Convertigo Studio Test Platform URLs](#convertigo-studio-test-platform-urls)
- [Convertigo Studio default accounts](#convertigo-studio-default-accounts)

##### Convertigo Studio default workspace

Convertigo Studio workspace launcher popup sets by default the projects workspace directory in the user’s home directory, as a workspace folder. On Windows, It gives a path of the following form: C:/Users/me/workspace 

{{site.data.alerts.note}}For more information on Convertigo workspace and projects workspace,  <a href="../appendixes/#convertigo-workspace">see Appendix Convertigo workspace</a>.{{site.data.alerts.end}}

You may have changed this path while installing, see Figure 2 - 11.

##### Convertigo Studio default ports

Convertigo Studio and its embedded tomcat are installed by default to listen on the following ports:

- *18080* for HTTP,
- *18081* for HTTPS (Convertigo Studio enables HTTPS by default after installation).

##### Convertigo Studio Administration Console URLs

Convertigo Studio Administration Console is accessible at the following URL:

- in HTTP:
    - localhost is the host name of local machine (as Convertigo Studio is installed locally),
    - 18080 is the default HTTP port number of a Convertigo Studio.

{% include image.html file="guide_img/c8ostudio_default1.jpg" %}

- in HTTPS:
    - localhost is the host name of local machine (as Convertigo Studio is installed locally),
    - 18081 is the default HTTPS port number of a Convertigo Studio (HTTP port number+1).

{% include image.html file="guide_img/c8ostudio_default2.jpg" %}

The Administration Console authentication page of the Server embedded in Convertigo Studio opens:
{% include image.html file="guide_img/c8ostudio_default3.PNG" caption="Figure 2 - 51: Convertigo Studio Administration authentication page" %}
{{site.data.alerts.note}}
For more information about the Administration Console, <a href="../using-convertigo-administration-console/">see Using Convertigo Administration Console</a>.
{{site.data.alerts.end}}

##### Convertigo Studio Test Platform URLs

Convertigo Studio Test Platform is accessible at the following URL:

- in HTTP:
    - localhost is the host name of local machine (as Convertigo Studio is installed locally),
    - 18080 is the default HTTP port number of a Convertigo Studio.

{% include image.html file="guide_img/c8ostudio_default4.jpg" %}

- in HTTPS:
    - localhost is the host name of local machine (as Convertigo Studio is installed locally),
    - 18081 is the default HTTPS port number of a Convertigo Studio (HTTP port number+1).
  
{% include image.html file="guide_img/c8ostudio_default5.jpg" %}

The Test Platform home page of the Convertigo Studio opens:
{% include image.html file="guide_img/c8ostudio_default6.png" caption="Figure 2 - 52: Convertigo Studio Test Platform" %}

Here, the Test Platform home page contains projects in the list of projects, these projects are those deployed in the Studio. 
{{site.data.alerts.note}}
For more information about the Dashboard, see [Using Convertigo Dashboard](../using-convertigo-dashboard/).
{{site.data.alerts.end}}

##### Convertigo Studio default accounts

Convertigo Studio declares by default the following accounts:

- **administrator** account, which user ID/password is *admin/admin*, used to access the Administration Console and the Test Platform,
- no **tester** account is defined by default, you access the Test Platform as **anonymous** user. 
{{site.data.alerts.note}}
For more information about Dashboard accounts and access, see [Using Convertigo Dashboard](../using-convertigo-dashboard/).
{{site.data.alerts.end}}

#### Changing Convertigo Studio default configurations

- [Changing Convertigo Studio default workspace](#changing-convertigo-studio-default-workspace)
- [Changing Convertigo Studio default ports](#changing-convertigo-studio-default-ports)
- [Changing Convertigo Studio default administration account](#changing-convertigo-studio-default-administration-account)
- [Changing Convertigo Studio default tester account](#changing-convertigo-studio-default-tester-account)

##### Changing Convertigo Studio default workspace

The Convertigo Studio projects workspace can be changed using the following procedure.

To change the Convertigo Studio workspace directory

**1**. If not running, launch the Convertigo Studio. On Windows, if you choose to create shortcuts during the installation wizard, simply access the shortcut that is on your desktop and double-click on it to launch Convertigo Studio. Otherwise, use the Start menu to launch Convertigo Studio.

For other platforms, Convertigo Studio was installed in the folder you choose during installation wizard. You can open this folder to access the *ConvertigoStudio.exe* start file. and double-click on it to launch Convertigo Studio.

**2**. Once started, open the **File** menu, select **Switch Workspace**, then **Other**...
{% include image.html file="guide_img/c8ostudio_default7.PNG" caption="Figure 2 - 53: Switching workspace" %}

This re-opens the Workspace launcher popup window:
{% include image.html file="guide_img/c8ostudio_default8.PNG" caption="Figure 2 - 54: Workspace launcher popup window" %}

**3**. Change the **Workspace** path value, possibly using the **Browse...** button, to specify the location of the workspace directory you want to use.

**4**. Then, expend the **Copy Settings** category by click on it:
{% include image.html file="guide_img/c8ostudio_default9.PNG" caption="Figure 2 - 55: Expended Copy Settings category" %}

These checkboxes allow you to configure which settings of your current Eclipse workspace will be transferred to your new workspace:

- Workbench Layout: Opened views, their size, and selected perspectives.
- Working Sets: The user defined working sets.

**5**. Check the appropriate checkboxes for your configuration and click on **OK**.

Convertigo Studio closes and restarts.

At startup, in the case of a workspace path pointing to an empty folder, a not existing folder, or a Convertigo workspace that was created with a Convertigo prior to version 6.2.0, the Convertigo Studio starting wizard is launched.

**6**. In this case, follow the procedure [To start and configure Convertigo Studio on Windows/Linux/Mac OS](#configure-convertigo-studio-at-first-startup) from step 6.

**7**. Otherwise, in the case of a workspace path pointing to a Convertigo workspace that was created with a Convertigo from version 6.2.0, the workspace is loaded in Convertigo Studio and reused as is.

##### Changing Convertigo Studio default ports

Convertigo Studio ports can be changed.

- The HTTP port can be changed following the procedure To change the Convertigo Studio HTTP port.
- The HTTPS port of the Convertigo Studio will always be the HTTP port+1.

##### To change the Convertigo Studio HTTP port

**1**. Access the Configuration page of the Administration Console following the procedure [To access Configuration page in the Administration Console](#to-access-configuration-page-in-the-administration-console).

**2**. Access to the Main parameters category following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page). This category is generally the one expanded by default.

The _Main parameters_ category opens:
{% include image.html file="guide_img/c8ostudio_default10.PNG" caption="Figure 2 - 56: Main parameters category" %}

**3**. In the **Convertigo Server application URL** field, change the HTTP port in the URL. For example, type 8182 as new port number instead of preconfigured *18080*:
{% include image.html file="guide_img/c8ostudio_default11.PNG" caption="Figure 2 - 57: Editing Convertigo Server application URL parameter" %}

**4**. Click on the Update configuration button located on the top (or bottom) of the Configuration page:
{% include image.html file="guide_img/c8ostudio_default12.PNG" caption="Figure 2 - 58: Updating configuration" %}

A pop-in appears to confirm that the new parameters have been taken into account:
{% include image.html file="guide_img/c8ostudio_default13.PNG" caption="Figure 2 - 59: Confirmation pop-in" %}

**5**. Click on the Ok button to close the pop-in.

**6**. Then, for the configuration to be applied on the Convertigo engine, you need to quit and restart the Studio. Both HTTP and HTTPS ports are updated.

**7**. After the Studio restart, you can access the Test Platform or Administration Console with the new defined ports. For example, use the following URLs:

- in HTTP:
{% include image.html file="guide_img/c8ostudio_default14.jpg" %}

- in HTTPS:
{% include image.html file="guide_img/c8ostudio_default15.jpg" %} 
{{site.data.alerts.tip}}
Note that the HTTPS port is always updated along with the HTTP port as the HTTPS port of the Convertigo Studio will always be the HTTP port+1.
{{site.data.alerts.end}}

##### Changing Convertigo Studio default administration account

The Convertigo Studio **administrator** account can be changed using the following procedure.

##### To change the Convertigo Studio administrator account

**1**. Access the Configuration page of the Administration Console following the procedure [To access Configuration page in the Administration Console](#to-access-configuration-page-in-the-administration-console).

**2**. Access to the Accounts category following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).

The Accounts category opens:
{% include image.html file="guide_img/c8ostudio_default16.PNG" caption="Figure 2 - 60: Accounts category" %}

**3**. Enter the administrator username and password in the **Admin username** and **Admin password** fields.

**4**. Click on the **Update configuration** button located on the top (or bottom) of the Configuration page:
{% include image.html file="guide_img/c8ostudio_default17.PNG" caption="Figure 2 - 61: Setting Admin account parameters and updating configuration" %}

A pop-in appears to confirm that the new parameters have been taken into account:
{% include image.html file="guide_img/c8ostudio_default18.PNG" caption="Figure 2 - 62: Confirmation pop-in" %}

**5**. Click on the **Ok** button to close the pop-in.

You are still authenticated in the Administration Console, even if the **administrator** account has changed. The new account credentials will be needed only when authenticating again in the platform.

##### Changing Convertigo Studio default tester account

As no **tester** account is defined by default after Studio installation, such an account can be declared using the following procedure. This procedure is also valid if you want to change the **tester** account afterwards.

##### To declare or change the Convertigo Studio tester account

**1**. Access the Configuration page of the Administration Console following the procedure [To access Configuration page in the Administration Console](#to-access-configuration-page-in-the-administration-console).

**2**. Access to the Accounts category following the procedure [To access a configuration category in the Configuration page](#to-access-a-configuration-category-in-the-configuration-page).
The Accounts category opens (see Figure 2 - 60).

**3**. Enter the tester username and password in the **Test Platform username** and **Test Platform password** fields.

**4**. Click on the **Update configuration** button located on the top of the Configuration page:
{% include image.html file="guide_img/c8ostudio_default19.PNG" caption="Figure 2 - 63: Setting Tester account parameters and updating configuration" %}

A pop-in appears to confirm that the new parameters have been taken into account:
{% include image.html file="guide_img/c8ostudio_default20.PNG" caption="Figure 2 - 64: Confirmation pop-in" %}

**5**. Click on the **Ok** button to close the pop-in.

The Test Platform can be accessed authenticating with the **tester** account. The **anonymous** user cannot see any information anymore in the Test Platform. 

{{site.data.alerts.note}}
For more information about Dashboard accounts and access, see [Using Convertigo Dashboard](../using-convertigo-dashboard/).
{{site.data.alerts.end}}

## Convertigo Studio uninstallation

To uninstall the Convertigo Studio, simply delete the Convertigo folder.
On Windows, nothing was added to registry or in the system folder.
Default installation folder is C:\Users\<your_user_name>\Convertigo
On Linux or MacOS, remove the Convertigo Studio folder.
