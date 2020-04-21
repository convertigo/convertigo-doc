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

You can source your data from a [Call Sequence](../../../reference-manual/convertigo-objects/mobile-application/components/action-components/callsequence/) result.


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

To bind data with Backend services, you have to pass by the Source mode. 

But first and foremost, you have to make a [CallSequence](../../../reference-manual/convertigo-objects/mobile-application/components/action-components/callsequence/) in an event processing chain, this can be a classical [event](../../../reference-manual/convertigo-objects/mobile-application/components/control-components/event/) or a [PageEvent](../../../reference-manual/convertigo-objects/mobile-application/components/control-components/pageevent/), to get the data to be displayed. 

On the UI component you want your data to be displayed, click on the Source mode. A window with all the Sequences from your project and others opens.
Select the one you are interested in and select the data you want in your data structure.

FIG 4 - showing selecting a sequence

If you want to be freer you can also do it by TS mode with the listen() function, see below:

```js
listen(['FlightShare.CreateFlight'])?.flight?.from
```

{{site.data.alerts.note}}
Don't forget to add "?" before your key names to prevent the underlying Angular Framework to popup 'undefined' errors. These errors can occur as when the binding events are generated by Angular the data may has not yet be received by the client, so the listen is not yet defined.
{{site.data.alerts.end}}

To send data to back end, you'll have to make a new [CallSequence](../../../reference-manual/convertigo-objects/mobile-application/components/action-components/callsequence/) selecting the targeted requestable which post data to your backend service.<br/>
Then right click on your callSequence and click "Import variables from targeted sequence". This is what you will have to bind to send data.<br>
To store your data, you can use the [SetGlobal](../../../reference-manual/convertigo-objects/mobile-application/components/action-components/setglobal/) object. <br/>
To retrieve this value to bind it, in TS mode use <code>this.global?.myPropety</code>.

FIG 5 - showing sending data to backend

## Custom Actions

This component helps you writing your own processing code.<br/>
To edit code, double click the <i>CustomAction</i>. You are free to code in TypeScript any custom processing you want. Be sure to write your code between the<br />
```js
/*Begin_c8o_function */
/*End_c8o_function */
```
delimiters.<br />

Custom actions can be inserted in an [Event](../../../reference-manual/convertigo-objects/mobile-application/components/control-components/event/) processing chain, combined with any other <i>Actions</i>. For example, you could have a <i>Camera</i> Action called when the user clicks on a button an you would like to process this action's output. To do this, place a <i>CustomAction</i> under the <i>Camera</i> action. This way, the <i>CustomAction</i> will be called <b>after</b> the <i>Camera</i> has finished (when the user clicks on ok to save the image...).<br />

When you finish processing in your CustomAction, you can call <code>resolve(data)</code> to pass control to the next CustomAction in the chain. The <code>data</code> object will be seen a the <code>parent.out</code> or <code>stack["ActionName"].out</code> object you can configure in the (TS) source of the next action in the chain.You can also call <code>reject(err)</code> to signal an error in the Custom Action processing. In this case, the <i>Failure Handler</i> or <i>Error Handler</i> error handler will be called. <br /><br />You can pass <i>Variable</i>s to any action. To do so, simply add <i>Variable</i> components under the <i>CustomAction</i>. You are free to associate the variable to any fixed text (**TXT**) , TypeScript expression (**TS**), source (**SC**) and the value will be transmitted to the action.

```js
	/**
	 * Function CustomAction
	 *   
	 * 
	 * @param page  , the current page
	 * @param props , the object which holds properties key-value pairs
	 * @param vars  , the object which holds variables key-value pairs
	 * @param event , the current event object
	 */
	CTS1586435482725(page: C8oPageBase, props, vars, event: any) : Promise<any> {
		return new Promise((resolve, reject) => {
		/*Begin_c8o_function:CTS1586435482725*/
		page.c8o.log.debug('[MB] '+ props.actionFunction +': '+ props.actionName);
		resolve();
		/*End_c8o_function:CTS1586435482725*/
		});
    }
```

The code above is the default code for a CustomAction.

You can access the variables value in your custom action code by using :

<code>vars.myVariable</code> (where myVariable is the variable name).

You can access event data through the <code>event</code> object.

## Events

## Actions

## Shared Actions

## Shared Components

## Theming

Ionic is built on top of Sass, which allows you to set some defaults styles for your application but makes it extremly easy for you to change Ionic defaults.
To modify the default thme, double click on "Theme" in the style section of your application tree. The file will be opened in the text editor on right.

As for the page class there are different section to modify in function of what you want.

This includes :

* Name colors variables
* App iOS variables
* App Material Design variables
* App Windows variables
* Import for App theme 
* Import for Ionicons
* Import for fonts

You can add as many as themes you want.

## Styling

By default Ionic is coming with the Bootstrap framework for styling. You can overwrite default classes by adding new styles.

A good practice is to add new stylesheet for each global element you want to style. For example, if you have some text inputs with the same style anywhere in your application, just create a new stylesheet named "textInputs".<br> 
All stylesheets you create will be compiled in one file.

{{site.data.alerts.note}}
Take care about the order you when you create multiple stylesheets, it will be added one after another in the final file.
{{site.data.alerts.end}}

It is also possible to style an UI Component if you need a specific style. 

For this, make right click on your element in your application tree, click New -> UI Component then choose __Style__.
This is will generate a new style attribute on your element. To write some CSS code, double click on the new Style component, it will be opened in the text editor.

{{site.data.alerts.note}}
If you combine the both ways for an element with the same style property in both, the style attribute will overwrite the property.<br> 
Use it for specific cases only.
{{site.data.alerts.end}}


## Using extended libraries

## Miscellaneous front-end steps

## Using FullSync in Convertigo front-end

## Debugging front end applications