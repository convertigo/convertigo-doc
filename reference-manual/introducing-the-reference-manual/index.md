---
title: Introducing the Reference Manual
keywords: pages, authoring, exclusion, frontmatter
last_updated: 21/03/2019
summary: "This chapter presents the purpose of the Reference Manual, as well as key information about its structure"
sidebar: c8o_sidebar
permalink: /reference-manual/introducing-the-reference-manual/
---
## Introduction

This Reference Manual is the reference material concerning Convertigo detailed technical information.

It contains the following chapters:

- [Introducing the Reference Manual](./) *briefly describes the Reference Manual*.
- [Convertigo Objects](../convertigo-objects/) *lists and describes all Convertigo objects ordered by groups and, for each group, by categories, with their properties*.
- [JavaScript Objects APIs](../javascript-objects-apis/) *proposes APIs of JavaScript objects that are available in Convertigo transactions and sequences*.
- [Interfaces to Convertigo](../convertigo-mbaas-server/interfaces-to-convertigo/) *offers technical information about how to access to Convertigo*.
- [Convertigo Mobile Builder](../convertigo-mobile-builder/) *presents in details the Mobile builder module able to build Mobile applications User interfaces using a Drag & Drop visual builder*.

In the Convertigo Objects chapter, object icons as displayed in the Convertigo studio appear next to object names. In this chapter, objects are described in three sections:

- The Object Description section contains a textual description of the object, its purpose.
- The Object Properties section contains a table listing object properties and how to configure them:

Table 1 - 1: 

Object Properties table

Column | Description
--- | --- |
Property | Property name
Type | Property type (bool, string, javascript expression, etc.)
Description | Property description, how to paramter it

- The Example section contains one or several examples of the described object with screenshots.

Example use-cases are based upon Convertigo projects that the user can open in the Convertigo Studio to test live the objects. To open an example project, follow the procedure described in next section “Opening a sample project from the Studio”.

After the last chapter, you can find "Appendixes" in relation with information about certain properties of objects.

## Opening a sample project from the Studio

The full example projects are stored in Convertigo installation folder. The following procedure describes how to access them from the Studio using the **New Project** wizard.

### To open an example project from the Studio

- **1** If not already opened, run the **Convertigo Studio**;

- **2** In the **Studio** menu bar, select **File > New > Project** or click on  in the toolbar then select **Project**.

{% include image.html file="man_img/newProject1.jpg" url="images/man_img/newProject1.jpg" alt="Launching the New Project wizard" caption="Launching the New Project wizard" max-width="400" %}

*Figure 1 - 1: Launching the New Project wizard*

A **New Project** wizard opens.

- **3** Expand **Convertigo Samples and Demos** category:
{% include image.html file="man_img/newSampleProject.jpg" url="images/man_img/newSampleProject.jpg" alt="Opening a sample project in New project wizard" caption="Opening a sample project in New project wizard" max-width="400" %}

*Figure 1 - 2: Opening a sample project in New project wizard*

- **4** Expand **Reference Manual examples** and select the sample project to open depending on the object example you are consulting (some example projects are not yet available in Studio, those showing legacy extraction rules for examples):

{% include image.html file="man_img/newStepsSampleProject.jpg" url="images/man_img/newStepsSampleProject.jpg" alt="Selecting appropriate sample project" caption="Selecting appropriate sample project" max-width="400" %}

*Figure 1 - 3: Selecting appropriate sample project*

- **5** Click on **Next**, then **Finish**.

In the case of Sequencer project referencing transactions from another project, a pop-up indicates that a related project is missing and should be opened before running the project (for example when opening Steps examples project, the Web Integrator documentation sample project should also be opened):

{% include image.html file="man_img/popup_missing_project.jpg" url="images/man_img/popup_missing_project.jpg" alt="Pop-up indicating a related project is missing" caption="Pop-up indicating a related project is missing" max-width="400" %}

*Figure 1 - 4: Pop-up indicating a related project is missing*

- **6** In this case, open the missing project(s) following the same procedure. Beware that some projects can be in **Convertigo Samples and Demos > Documentation samples** category in the wizard page:

{% include image.html file="man_img/newCWIsampleProject.jpg" url="images/man_img/newCWIsampleProject.jpg" alt="Opening missing CWI sample project in wizard" caption="Opening missing CWI sample project in wizard" max-width="400" %}

*Figure 1 - 5: Opening missing CWI sample project in wizard*

The following table lists the names of all projects that could be referenced by other projects and their location in the New Project wizard for you to know which project is missing:


Table 1 - 2: Sample projects names and their location in the New Project wizard

Sample project name | Location in the New Project wizard
------------------- | ----------------------------------
sample_documentation_CLI | Convertigo Samples and Demos > Documentation samples > Legacy integration
sample_documentation_CLP | Convertigo Samples and Demos > Documentation samples > Legacy publishing
sample_documentation_CMC | Convertigo Samples and Demos > Documentation samples > Mashup composition
sample_documentation_CMS | Convertigo Samples and Demos > Documentation samples > Mashup sequencing
sample_documentation_CWC | Convertigo Samples and Demos > Documentation samples > Web clipping
sample_documentation_CWI | Convertigo Samples and Demos > Documentation samples > Web integration
sample_refManual_http | Convertigo Samples and Demos > Reference Manual Examples > HTTP connector objects examples
sample_refManual_siteClipper | Convertigo Samples and Demos > Reference Manual Examples > Site Clipper objects examples
sample_refManual_statements | Convertigo Samples and Demos > Reference Manual Examples > HTML connector statements examples
sample_refManual_steps | Convertigo Samples and Demos > Reference Manual Examples > Sequencer steps examples
sample_refManual_variables | Convertigo Samples and Demos > Reference Manual Examples > Variables examples
sample_refManual_webClipper | Convertigo Samples and Demos > Reference Manual Examples > Web Clipper objects examples

In both cases, after opening a missing related project or not, the Reference Manual example project is then opened in the Studio. You can see its objects by deploying them in the **Projects view**:

{% include image.html file="man_img/stepsSampleProject.jpg" url="images/man_img/stepsSampleProject.jpg" alt="Reference Manual steps example project in Projects view" caption="Reference Manual steps example project in Projects view" max-width="400" %}