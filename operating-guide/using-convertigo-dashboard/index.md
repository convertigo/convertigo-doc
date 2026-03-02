---
title: Using Convertigo Dashboard
keywords: pages, authoring, exclusion, frontmatter
last_updated: 19/02/2026
summary: "This chapter introduces the Convertigo Dashboard and shows how to use Dashboard, Backend, Frontend and Packages for a project."
sidebar: c8o_sidebar
permalink: /operating-guide/using-convertigo-dashboard/
---
This chapter introduces and describes how to use the Convertigo Dashboard (formerly named Test Platform).

The examples in this chapter use the `sampleMobileRetailStore` project.

You can access the Dashboard directly at:

`http://<server>:<port>/convertigo/dashboard/`

## Dashboard

The Dashboard home page lists deployed projects and provides quick access to project tools.

Main features:

- Search/filter projects from the top search box.
- Filter by project type (Backend, Frontend, Library, Project).
- Open project actions directly: Backend, Frontend, References, Packages (currently labeled `Platforms` in this build), Swagger.

{% include image.html file="guide_img/dashboard-01-dashboard-page-filtered-on-samplemobileretailstore.png" caption="Figure: Dashboard page filtered on sampleMobileRetailStore" %}

## Backend

The Backend view lets you browse and execute requestables (Sequences and Transactions).

With `sampleMobileRetailStore`:

- Open the project backend from the Dashboard list.
- Expand a requestable (for example `fill_server_database`).
- Choose a response format (`JSON`, `XML`, `BIN`, `CXML`) and run it with **Execute**.
- Use the visibility filters to show or hide private/hidden/public requestables.

{% include image.html file="guide_img/dashboard-02-backend-view-for-samplemobileretailstore.png" caption="Figure: Backend view for sampleMobileRetailStore" %}

## Frontend

The Frontend view is a responsive preview workspace for the mobile/web app.

With `sampleMobileRetailStore`, you can:

- Select a device profile from the left panel (for example iPhone models).
- Preview the app in the embedded frame.
- Use navigation, reload, zoom, rotate, and open-in-new-tab controls.

{% include image.html file="guide_img/dashboard-03-frontend-preview-for-samplemobileretailstore.png" caption="Figure: Frontend preview for sampleMobileRetailStore" %}

## Packages

The Packages view (currently labeled `Platforms` in this build) is the build/package area for mobile platforms.

With `sampleMobileRetailStore`, this page provides:

- Project mobile metadata (endpoint, application id, version).
- Package/build information per platform (Android/iOS), including revisions and Cordova version.
- Download links (for example source package) and QR code access for generated packages.
- **Build Platform** action to trigger a new build.

{% include image.html file="guide_img/dashboard-04-packages-platforms-view-for-samplemobileretailstore.png" caption="Figure: Packages (Platforms) view for sampleMobileRetailStore" %}
