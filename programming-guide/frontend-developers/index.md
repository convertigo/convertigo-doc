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
To use a component, it is very simple. Click on the one you want and drag'n'drop it where you want it in your page. Once it is done, you can name it to be clearer in your app tree. 

FIGURE 1 - showing drag’n’drop and naming

In the bottom-left corner a panel with the object properties allows you to configure the component as you want. For each property, you can select a standard value or a personal one with text value or with a TypeScript expression. You can even use the Source Mode. If a property is missing, you can add a custom one with the attr bean, just drag'n'drop it under your component and add it an attribute name and value. 

FIGURE 2 - showing properties panel 

### Pages Overview

Pages are all the screens that make up your application. You can add any UI components, events, actions you want to.

By default pages are designed with header, content and footer. 

In the properties panel, you can choose to add the page to the hamburger menu, with its icon, title etc. 
The preloading property allows you to choose the priority for ease loading. 

The Segment is the route for your page. Then if your segment is “one” then your route would be “/one” in live testing in your browser url.

#### Menus

Menus are graphically separated in the tree but you can interact with it wherever you are in the application in the front-end part from pages.

In the properties panel, you have many attributes to set up your menu. 

You can define a unique identifier for your menus.

You can manipulate menus in custom action by getting the instance, see below : <br>
<code>let menuCtrl = page.getInstance(MenuController);</code> <br>
<code>menuCtrl.open(<id/name, swipe(left, right) or empty>);</code>

#### Navigation Routes

#### Send and retrieve data

##### Send data

###### PushPage Action

To send data from a page to an other you have two possibilities. You can use a PushPage Action and use the property "Page data" of it. For this one, you can send a string (in txt mode), a JSON object (in TS mode) or even a JSON object in the form of a string (but you will need to parse it before using it).

In addition of your data, of course, you have to source the targetted page.

###### Segment

If you don't want to use a PushPage Action, you can use the classical way with segments' routes. 
In your Page properties, change the segment property with parameters such as :

<code>segmentName/:param/:param</code>


##### Retrieve data

Then, admit that we have this object : 
<code>{id: 1, name: "John Doe"}</code>

I want to display the name of my user on my targetted page. <br />
All the data you sent is in the object <code>this.navParams.data</code>.<br />

So if I want to display my user's name I will use a TypeScript expression to display it : <br />
<code>this.navParams.data.name</code>

FIGURE 3 - showing writing navParams and reload with username.



#### Page classes

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