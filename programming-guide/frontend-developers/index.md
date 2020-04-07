---
title: Front-end Developers
keywords: pages, authoring, exclusion, frontmatter
last_updated: 02/04/2020
summary: "This chapter describes you how to use Convertigo backend objects to connect your data and build backend services."
sidebar: c8o_sidebar
permalink: /programming-guide/frontend-developers/
---
This chapter describes you how to use Convertigo frontend objects to build your front end application.

## Front Overview

### Mobile Palette

#### Using a component
To use a component, it is very simple. Click on the one you want and drag'n'drop it where you want it in your application tree or directly in the viewver (Windows only). Once it is done, you can name it to be clearer in your app tree by taping F2. 

FIGURE 1 - showing drag’n’drop and naming

In the bottom-left corner a panel with the object properties allows you to configure the component as you want. For each property, you can select a standard value or a personal one with text value or with a TypeScript expression. You can even use the Source Mode. If a property is missing, you can add a custom one with the attr bean, just drag'n'drop it under your component and add it an attribute name and value. 

FIGURE 2 - showing properties panel 

### Pages Overview

Pages are all the screens that make up your application. You can add any UI components, events, actions you want to.

By default pages are designed with header, content and footer. 

In the properties panel, you can choose to add the page to the hamburger menu, with its icon, title etc. 
The preloading property allows you to choose the priority for ease loading. 

The Segment property is the route for your page. Then if your segment is “one” then your route would be “/one” in live testing in your browser url.

#### Menus

Menus are graphically separated in the tree but you can interact with it wherever you are in the application in the front-end part from pages.

In the properties panel, you have many attributes to set up your menu. 

You can define a unique identifier for your menus.

You can manipulate menus in custom action by getting the instance, see below : 

```java
let menuCtrl = page.getInstance(MenuController);
menuCtrl.open(<id/name, swipe(left, right) or empty>);
```

#### Send and retrieve data

##### Send data

To send data from a page to an other you have two possibilities. You can use a PushPage Action with its property "Page data". For this one, you can send a __string__ (in txt mode), a __JSON object__ (in TS mode) or even a JSON object in the form of a string (but you will need to parse it before using it).

You can source your data from a [Call Sequence](../../../reference-manual/convertigo-objects/sequencer/steps/convertigo-request-steps/call-sequence/) result.


In addition of your data, of course, you have to source the targetted page.

The other possibility to send data is to use segment's route.
In your Page properties, change the segment property with parameters such as :

    segmentName:/param/:param

You can add params as many as you want.

##### Retrieve data

Then, admit that we have this object :

    {id: 1, from: "Paris", to: "NYC"}

I want to display the name of my user on my targetted page.
All the data you sent is in the object <code>this.navParams.data</code>.

So if you want to display the flight's destination just use a TypeScript expression to display it : <br />
```java
this.navParams.data.to
```
To retrieve data from the segment's route, the way of going about it remains the same via the object <code>this.navParams.data</code>.

FIGURE 3 - showing writing navParams and reload with username.

#### Page classes

Page classes are editable, to do this, just right click on your page in application tree and click "Edit page class". The page's code appears into the text editor.
To customize the application class, you need to add your code between comments, otherwise your code will be lost when application will be generated.

You can write any TypeScript or JavaScript code.

To make some import, add your code between :

```js
/*Begin_c8o_PageImport*/
/*End_c8o_PageImport*/
```

To make page declarations :

```js
/*Begin_c8o_PageDeclaration*/
/*End_c8o_PageDeclaration*/
```

To custom constructor :

```js
/*Begin_c8o_PageConstructor*/
/*End_c8o_PageConstructor*/
```

To add methods or functions specific to your page :

```js
/*Begin_c8o_PageFunction*/
/*End_c8o_PageFunction*/
```

## Binding with Backend services

## Custom Actions

## Events

## Actions

## Shared Actions

## Shared Components

## Theming

## Styling

## Using extended libraries

## Miscellaneous front-end steps

## Using FullSync in Convertigo front-end

## Debugging front end applications