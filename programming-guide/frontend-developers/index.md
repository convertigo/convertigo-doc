---
title: Front-end Developers
keywords: pages, authoring, exclusion, frontmatter
last_updated: 02/04/2020
summary: "This chapter describes you how to use Convertigo backend objects to connect your data and build backend services."
sidebar: c8o_sidebar
permalink: /programming-guide/frontend-developers/
---

{{site.data.alerts.note}}
With {{site.data.strings.product_name}}, you can build in minutes, Cross–Platform UIs based on the Ionic / Angular technology accessing the full power of Convertigo MBaaS server.
{{site.data.alerts.end}}

## Front Overview

{{site.data.strings.product_name}} is building the next generation product including one of the most powerful Front End Low code builder on the market.

It uses a new graphical user interface builder able to build, in a few minutes, ready-to-deploy applications leveraging the full power of Convertigo MBaaS backend!

An application produced with {{site.data.strings.product_name}} is not a “prototype” nor a “quick & dirty” application. Built applications are fully deployable on cross-platform devices and work on complex enterprise data.

{{site.data.strings.product_name}} is based on well-known industry standard technologies such as Cordova, Angular 13 and Ionic 6 frameworks.

{% include image.html file="man_img/MB-Overview.png" url="images/man_img/MB-Overview.png" alt="Convertigo Builder overview" caption="Convertigo Builder overview" %}

The new Builder module brings a “NgxApp” object in project tree under the “Application” object. This object is representing the graphical UI displayed on the right pane. To design and build an application, the user simply drags & drops components from the “NGX palette” tab to the correct location in the “NgxApp” tree.

The Viewer right pane will automatically reflect the changes in real time showing the user what the application will look like. The user can also modify any of the component properties and see in real time the result in the right pane application viewer.

## Application Viewer

The application you are working on will be displayed in the “**Application Viewer**”. This is a standard Eclipse view that can be displayed by:

 * Right click on the “NgxApp” component -> Execute.
 * Double click on the “NgxApp” component.
 * Hit the “ENTER” key when the “NgxApp” component is selected.

When the application viewer is launched, it will start to build in real time the current application described in your project. For this, the viewer will need to download from Internet all your application dependencies modules. This download is done once from the NPM repository using the standard NPM tool. This is why you should have NPM (NodeJS > 8.X) installed on your workstation to use Builder.

The NPM install process can last several minutes according to your Internet Bandwith and CPU power. A progress indicator will show you how much data has been downloaded. A typical application will require about 180MB of packages dependencies to be downloaded and installed in your project. In most cases, the NPM install process is done only once in the life of your project, but you can choose to re-install NPM dependencies, or to update them by right-clicking on:

 * “NgxApp” component -> “Update packages and Execute…”
 * “NgxApp” component -> “Re-install packages and Execute…”

Once the packages have been downloaded, the viewer will start to build your application to be displayed. This process will take about 20 to 30 seconds and will be done only once when you launch the viewer. While the viewer is displayed, any modification in the Builder project tree will be reflected in real time in the viewer.

Applications can be shown as iOS devices (iPhones, iPads), as Android devices or as a Desktop application. The user can click on the device menu to show all available devices. Custom devices can also be created by giving the device a name and configuring its width and height in pixels. Users can Zoom in and Zoom out the apps to see more details or to fit the whole app in the app viewer.

{% include image.html file="man_img/landscape-viewer.png" url="images/man_img/landscape-viewer.png" alt="Landscape-viewer" caption="Landscape-viewer" max-width="400" %}
{% include image.html file="man_img/Portrait-viewer.png" url="images/man_img/Portrait-viewer.png" alt="Portrait-viewer" caption="Portrait-viewer" max-width="400" %}

Users can also switch to landscape to see how the apps behave when the device is oriented in landscape mode.

Sometimes, viewing the application in a standard Web browser can be useful to test how the app behaves in a desktop browser. This can be easily done by using the “**Open in default browser**” button.

The “**Headless build**” button acts as the “**Open in default browser**” button but deactivate live build in the “Application Viewer”. Live build is only performed in the external browser saving memory and CPU consumption.

Another interesting feature called “**datasets**” is also controlled from here to create and use different datasets to be used for data binding testing.

The Mobile Builder has several controls you can use to help you running the app :

- **Devices**: Selects device viewport.
- **Orientation**: Changes device orientation (Landscape / portrait)
- **Refresh**: Relaunches the app on the current page
- **Back**: Goes back on page (Like the back button on the device)
- **Remove highlight**: Removes any highlighted object (Object are highlighted when you right click on them)
- **Debug**: Shows Debugger view in the Studio.
- **Open in default browser**: Launches application in your default external browser
- **Headless build**: Launches application in your default external browser and deactivates “**Application Viewer**”.
- **Build mode**: Can be one of 3 modes : **Production**, **Fast** or **Watch**
- **Autobuild**: Toggle button. If Selected the app will be built and refreshed automatically each time you modify a component in the application. Some times on slow machines, you would prefer to disable this to build the app only when you want, so unselect the toggle and re-select it when you want to build the app.
- **Manage Modules**: Lets you update or re-install NPM node_modules for this app. Can be useful for corrupted NPM node_modules installations.
- **Select Dataset**: When you create applications you have some times to use datasets to populate some of your UI components such as list or forms. You can use this button to save a current dataset (the data that is currently displayed in your app resulting from Sequence or FullSync bindings), and reuse it later on a page to test how your UI will react with this dataset. This is very useful to build UIs when back end data is not available.
- **Save Dataset**: Saves current data in the app as a dataset
- **Delete Dataset**: Deletes a dataset

### NGX Palette

The Builder comes with a “NGX Palette” containing the main components useful for creating the content of your application pages. Components are grouped by categories, but you can quickly find a component using the search bar. When you select a component, help for its use is displayed in the right pane. Simply drag and drop your components from the palette into the tree view of your pages.

{% include image.html file="man_img/MobilePalette.png" url="images/man_img/MobilePalette.png" alt="NGXPalette" caption="NGXPalette" max-width="400" %}

When you drop a component on existing one in the tree, it will be inserted under. You can reorder it by using the ‘up’ and ‘down’ buttons on the top of the project tree. You can also move the component to another position in the tree branch by drag & dropping it on the same branch.

Although this is not as precise as dragging on the tree, you can also drag a component directly on the Application Viewer space. In this case, the zone where the component will be droppped will be highlighted in blue and a sub-menu will appear to propose you to insert component **before**, **inside** or **after** the target.

{% include image.html file="man_img/mobile-components.png" url="images/man_img/mobile-components.png" alt="NGX Component" caption="NGX Components" max-width="400" %}

{% include image.html file="man_img/mobile-components-drop.png" url="images/man_img/mobile-components-drop.png" alt="NGX Component Drag & Drop in Application viewer" caption="NGX Components Drag & Drop in Application viewer" max-width="400" %}

Any component can be selected from the project tree view which allows you to access and modify its properties in the “Properties” view. When you double-click on a component it is automatically highlighted in blue with a red dotted border in the application viewer. You can also double-click on a page to display this exact page on the app viewer. The other way round, if you right-click on a component in the application viewer, it will be highlighted and its component will also be selected in the project tree.

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

{% highlight js %}
/*Begin_c8o_PageImport*/
/*End_c8o_PageImport*/
{% endhighlight js %}

To make page declarations :

{% highlight js %}
/*Begin_c8o_PageDeclaration*/
/*End_c8o_PageDeclaration*/
{% endhighlight js %}

To custom constructor :

{% highlight js %}
/*Begin_c8o_PageConstructor*/
/*End_c8o_PageConstructor*/
{% endhighlight js %}

To add methods or functions specific to your page :

{% highlight js %}
/*Begin_c8o_PageFunction*/
/*End_c8o_PageFunction*/
{% endhighlight js %}

## Binding with Backend services

To bind data with Backend services, you have to pass by the Source mode. 

But first and foremost, you have to make a [CallSequence](../../../reference-manual/convertigo-objects/mobile-application/components/action-components/callsequence/) in an event processing chain, this can be a classical [event](../../../reference-manual/convertigo-objects/mobile-application/components/control-components/event/) or a [PageEvent](../../../reference-manual/convertigo-objects/mobile-application/components/control-components/pageevent/), to get the data to be displayed. 

On the UI component you want your data to be displayed, click on the Source mode. A window with all the Sequences from your project and others opens.
Select the one you are interested in and select the data you want in your data structure.

FIG 4 - showing selecting a sequence

If you want to be freer you can also do it by TS mode with the listen() function, see below:

{% highlight js %}
listen(['FlightShare.CreateFlight'])?.flight?.from
{% endhighlight js %}

{{site.data.alerts.note}}
Don't forget to add "?" before your key names to prevent the underlying Angular Framework to popup 'undefined' errors. These errors can occur as when the binding events are generated by Angular the data may has not yet be received by the client, so the listen is not yet defined.
{{site.data.alerts.end}}

To send data to back end, you'll have to make a new [CallSequence](../../../reference-manual/convertigo-objects/mobile-application/components/action-components/callsequence/) selecting the targeted requestable which post data to your backend service.<br/>
Then right click on your callSequence and click "Import variables from targeted sequence". This is what you will have to bind to send data.<br>
To store your data, you can use the [SetGlobal](../../../reference-manual/convertigo-objects/mobile-application/components/action-components/setglobal/) object. <br/>
To retrieve this value to bind it, in TS mode use <code>this.global?.myPropety</code>.

FIG 5 - showing sending data to backend

## Custom Actions

You can write your own actions by using the ‘**CustomAction**’ action component. This action will behave exactly like the other actions in the chain for the processing flow, but will have 2 differences:

The action can be coded in TypeScript. For this, double-click on the action and edit the code between the comments :

{% highlight js %}
/* Begin_c8o.... */ 

  /* --- Your code here --- */

/* End_c8o .... */ 
{% endhighlight js %}

You can add variable objects to this action by dropping ‘**Variable**’ components on the ‘**CustomAction**’. You will be able to use data binding on these variables, and as they will be transmitted to the ‘**CustomAction**’, you will be able to use these variable values in your custom code. To access a variable value, use **vars.VariableName** where **VariableName** is the name of the variable you want to target.

{% include image.html file="man_img/Write-Custom-code-event.png" url="images/man_img/Write-Custom-code-event.png" alt="CustomAction component event" caption="CustomAction component event" max-width="400" %}

Custom actions can be inserted in an [Event](../../../reference-manual/convertigo-objects/mobile-application/components/control-components/event/) processing chain, combined with any other <i>Actions</i>. For example, you could have a <i>Camera</i> Action called when the user clicks on a button an you would like to process this action's output. To do this, place a <i>CustomAction</i> under the <i>Camera</i> action. This way, the <i>CustomAction</i> will be called <b>after</b> the <i>Camera</i> has finished (when the user clicks on ok to save the image...).<br />

When you finish processing in your CustomAction, you can call <code>resolve(data)</code> to pass control to the next CustomAction in the chain. The <code>data</code> object will be seen a the <code>parent.out</code> or <code>stack["ActionName"].out</code> object you can configure in the (TS) source of the next action in the chain.You can also call <code>reject(err)</code> to signal an error in the Custom Action processing. In this case, the <i>Failure Handler</i> or <i>Error Handler</i> error handler will be called. <br /><br />You can pass <i>Variable</i>s to any action. To do so, simply add <i>Variable</i> components under the <i>CustomAction</i>. You are free to associate the variable to any fixed text (**TXT**) , TypeScript expression (**TS**), source (**SC**) and the value will be transmitted to the action.

{% highlight js %}
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
{% endhighlight js %}

The code above is the default code for a CustomAction.

You can access the variables value in your custom action code by using :

<code>vars.myVariable</code> (where myVariable is the variable name).

You can access event data through the <code>event</code> object.

## Mobile debugger

{{site.data.strings.product_name}} includes a 100% visual debugger able to monitor and debug your apps. This debugger has roughly the same features and usage than the Google Chrome debugger. To activate it, just click on the mobile debug tab (cf fig. 1) and click the debugger icon (cf fig. 2). The tool can be used to adjust styles, margins, and components placements precisely. Therefore, unlike other platforms, {{site.data.strings.product_name}} can be used to create tailored applications.

{% include image.html file="man_img/Mobile-debugger-12.png" url="images/man_img/Mobile-debugger-12.png" alt="Mobile debugger 1" caption="Mobile debugger 1" max-width="400" %}

The mobile debugger also shows all the network interaction between the device and a Convertigo Server. This is a key tool to understand protocols used for calling Convertigo MBaaS Microservices or for executing a FullSync replication. Exploring the data exchanged on the network helps debugging your application.

{% include image.html file="man_img/Mobile-debugger-2.png" url="images/man_img/Mobile-debugger-2.png" alt="Mobile debugger 2" caption="Mobile debugger 2" max-width="400" %}

## Data binding

Data binding makes applications able to display data from the backend services. With Convertigo this is done by a simple Drag & Drop!
One of the most powerful features of {{site.data.strings.product_name}} is the Automatic Databinding. Data can be linked inbound and outbound without writing any line of code!
This can be done by using the “NGX Picker” tool. This picker displays all the Sequences, FullSync databases, Iterator directives and Forms available for your project and for each of them the data model returned. Drag & dropping one of the model fields to a component will automatically bind it to the data.

{% include image.html file="man_img/builder-ngx-picker.png" url="images/man_img/builder-ngx-picker.png" alt="NGX Ppicker" caption="NGX Picker" max-width="400" %}

### Data binding Modes

Every component property can be bound in different modes. Click on one of the modes (TX, TS or SC) to activate it, then click on ‘…’ button to enter a value or pick a source.

- (TX) mode : property will be bound to some static text.
- (TS) mode : property will be bound to a TypeScript expression.
It can be a string (write it within enclosing simple quotes), a number (write it as is) or an expression calling some of the page methods, for example **myMethod()**
- (SC) mode : property will be bound to a source picked by the **NGX picker** tool, coming from a **Sequence call**, a *FullSync call*, an *Iterator directive* or a *Form*.

### Collection binding

Collection binding will make a component with its content repeated for each data occurrence. This is useful to display a list of items.

Sometimes, you’d like the returned data to be bound to a collection, for example when you want to display a list of items.
Use the “**ForEach**” directive component by drag & dropping it in a “List Container” component. 
Configure its “Directive source” property by clicking the “SC” toggle and the “…” button, then select the recurring data field of your source.

In example below, the “**ForEach**” component contains one “**ListItem**” component which will be repeated for each “employee”.

{% include image.html file="man_img/Collection-binding.png" url="images/man_img/Collection-binding.png" alt="Collection binding" caption="Collection binding" max-width="400" %}
## Events

An application reacts to events generated by users, for example when they click on a button, submit a form, or swipe an object. You can handle these events by dropping the ‘**Event**’ component from the palette on a mobile component. A ‘**Controls**’ folder will be created with the event in it. Any component can receive an ‘**Event**’ component (buttons, images, containers, etc…). Once the ‘**Event**’ is placed, you can configure its ‘**Event Type**’ property to the event of your choice. Builder has a built-in event list (click, tap, swipe, ect…) but you may use your own by typing yourself the event enclosed by parenthesis, eg: (myEvent)

An application also reacts to some internal events triggered by ‘Pages’, for example when a page is displayed, or created. To handle these type of events you can use the ‘**Page event**’ component by dropping it directly on a ‘Page’.

## Actions

You process the event by dropping ‘Actions’ on the event. The action will be executed when the event is triggered. The action flow will be executed in the following way:

 * Every ‘Action’ placed as siblings in the tree beneath an event will be executed at the same time, as a parallel flow.
 * Every ‘Action’ placed below another action, will be executed when the first action ends, as a sequential flow also called an ‘Action chain’.

{% include image.html file="man_img/event-components.png" url="images/man_img/event-components.png" alt="Event component" caption="Event component" max-width="400" %}

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

{{site.data.strings.product_name}} applications can be easily styled as they are based on the powerful Ionic {{site.data.strings.ionic_version}} framework.
You can use the “**Style**” component to apply styles to the entire application, to a whole page and/or to a given component.

Simply Drag & Drop the “**Style**” component from the “**NGX palette**”. The following picture shows a “**Style**” component which will apply for a whole page.

{% include image.html file="man_img/Styling-appllications-1.png" url="images/man_img/Styling-appllications-1.png" alt="Styling appllications 1" caption="Styling appllications 1" max-width="400" %}

In the same way, dropping “**Style**” on a component will apply it to this component only. You can add as many “**Style**” components as you want.

{% include image.html file="man_img/Styling-applications-2.png" url="images/man_img/Styling-applications-2.png" alt="Styling applications 2" caption="Styling appllications 2" max-width="400" %}

Double clicking on a “**Style**” will open the “**Style editor**” where you can write some CSS compliant rules. This editor supports CSS typing completion to assist you in writing.

{% include image.html file="man_img/Styling-applications-3.png" url="images/man_img/Styling-applications-3.png" alt="Styling applications 3" caption="Styling appllications 3" max-width="400" %}

You can also use the “**Theme**” component to apply a theme to your application by dragging & dropping it from the “**NGX palette**” on the project “**NgxApp**” component.
The “**Theme**” can be edited by double-clicking on it.

{% include image.html file="man_img/Styling-applications-4.png" url="images/man_img/Styling-applications-4.png" alt="Styling appllications 4" caption="Styling appllications 4" max-width="400" %}

## Using forms

Form management is a built-in feature of {{site.data.strings.product_name}}.

To add and design a form, simply drag & drop a “**Form**” and its “**input**” components in the content of a page. 
Form “**input**” components can be *input fields*, *checkboxes*, *range sliders*, *select dropdowns*, *radio buttons*, *toggles* or any other HTML form element. 
Drop an “**onSubmit**” Event on the form to handle submission. Bind this event by dropping on it some action components like the “**CallSequence**” to perform a backend service request. Configure the “formControlName” property of each input component if you’d like to bind them to some service input data (e.g: sequence variable name).

{% include image.html file="man_img/Using-forms-1.png" url="images/man_img/Using-forms-1.png" alt="Using forms 1" max-width="500" %}

Even better, you can build a form in just one action by drag & dropping a “Sequence” directly on a “Form” component! {{site.data.strings.product_name}} will automatically generate for you all the form ‘input’ components with labels, bind the “onSubmit” event to this sequence, and bind all the form ‘input’ components to the sequence input variables. You are then free to customize the form the way you want.

Forms also support field validators. They are now directly accessible from within components properties. For example, an “**input**” component has a “**Required**” property to disable submit button until it is filled with a value:

{% include image.html file="man_img/Using-forms-2.png" url="images/man_img/Using-forms-2.png" alt="Using forms 2" max-width="400" %}

## Writing custom code

Although Low Code technology helps in writing applications in a few clicks, you might want to write your own custom code to perform some bespoke processing in your app. {{site.data.strings.product_name}} enables this by letting you write some TypeScript code at the application level or at a specific page level.

### Customizing code at the application level

To write code at the application level, right-click on the application component and select the “Edit application class” menu.

{% include image.html file="man_img/Write-Custom-code-1.png" url="images/man_img/Write-Custom-code-1.png" alt="Write Custom code 1" max-width="500" %}

Write your TypeScript code between comments:

{% highlight js %}
/* Begin_c8o.... */ 

  /* --- Your code here --- */

/* End_c8o .... */ 
{% endhighlight js %}

This code will be saved in the application or the page component. {{site.data.strings.product_name}} TypeScript editor supports syntax coloring and code assist completion.

### Customizing code at the page level

You can do the same at the page level to customize code for a given page. You will be able to add new page methods, import your components and do some initialization tasks in the constructor. For this, right-click on page and select “**Edit Page class…**”. Again, be sure to write your TypeScript code between the /* Begin_c8o_XXX */ and the /* End_c8o_XXX */ comments.

### Using Custom Actions

You can also write TypeScript custom code for a “CustomAction” component. To do this, drag & drop the “**CustomAction**” component on an “**Event**” component. Then, double click on the “**CustomAction**” to open the editor.

{% include image.html file="man_img/Write-Custom-code-2.png" url="images/man_img/Write-Custom-code-2.png" alt="Write Custom code 2" max-width="500" %}

Be sure to use the **resolve()** function in your custom code to execute the next action in the chain.

### Injecting Services

When you write some custom code in a custom action or in the page class, you may need to access some services. By default, some services are pre-injected , you can access them directly :

Service | Usage
--- | ---
routerProvider : C8oRouter | The CAF (Convertigo Angular Framework) router. Gives access to several utilitiy functions you may use in your code. See https://github.com/convertigo/c8osdk-angular-caf
navParams: NavParams | The Ionic NavParams. You can access navParams.data to get the data pushed along a page
loadingCtrl: LoadingController | The Ionic NavControler. You can use this to perform your custom navigation, for example to push a Page on the stack.
sanitizer: DomSanitizer | Angular Utility
ref: ChangeDetectorRef | Angular Utility
injector: Injector | Angular utility to dynamically inject a service
menuCtrl: MenuController | The Ionic Menu controller. Use this to control the page menu.

Of course, you may need to inject other services to be able to use them. This is why the CAF provides an Utilitity method on the page component able to do that dynamically:

{% highlight js %}
let myService = this.getInstance(ServiceName) 
{% endhighlight js %}

will inject dynamically “ServiceName” and let you use it by the “**myService**” reference variable.
## Using extended libraries

## Miscellaneous front-end steps

## Using FullSync in Convertigo front-end

## Debugging front end applications