---
title: Convertigo Mobile Builder
keywords: pages, authoring, exclusion, frontmatter
last_updated: 21/03/2019
summary: "Convertigo Mobile Builder is the Visual Drag & Drop Mobile App module for Convertigo Mobility Platform"
sidebar: c8o_sidebar
permalink: /reference-manual/convertigo-mobile-builder/
---
{{site.data.alerts.note}}
With Convertigo Mobile builder, you can build in minutes, Cross – Platform UIs based on the Ionic / Angular technology accessing the full power of Convertigo MBaaS server.
{{site.data.alerts.end}}

## Mobile builder overview

RAD (Rapid Application Development) is now a very well-known concept for classic application development. This type of technology is called RMAD when it is applied to Mobile Applications.

Convertigo is building the next generation product including one of the most powerful RMAD module on the market.

Convertigo Mobile Builder uses a new graphical user interface builder able to build, in a few minutes, ready-to-deploy applications leveraging the full power of Convertigo MBaaS backend!

Unlike other RAD systems, an application produced with Convertigo Mobile Builder is not a “prototype” nor a “quick & dirty” app. Built applications are fully deployable on cross-platform devices and work on complex enterprise data.

Convertigo Mobile Builder RMAD is based on well-known industry standard technologies such as Cordova, Angular  and Ionic  frameworks.

{% include image.html file="man_img/MB-Overview.png" url="images/man_img/MB-Overview.png" alt="Convertigo Mobile Builder overview" caption="Convertigo Mobile Builder overview" %}

The new Mobile Builder module brings an “Application” object in project tree under the “MobileApplication” object. This object is representing the graphical UI displayed on the right pane. To design and build an application, the user simply drags & drops mobile components from the mobile palette to the correct location in the Application tree.

The Viewer right pane will automatically reflect the changes in real time showing the user what the app will look like. The user can also modify any of the mobile component properties and see in real time the result in the right pane app viewer.

## Application Viewer

The application you are working on will be displayed in the “Application Viewer”. This is a standard Eclipse view that can be displayed by:

Right click on the “Application” component -> Execute
Double click on the “Application” component
Hit the “ENTER” key when the application component is selected
When the application viewer is launched, it will start to build in real time the current application described in your project. For this, the viewer will need to download from Internet all your application dependencies modules. This download is done once from the NPM repository using the standard NPM tool. This is why you should have NPM (NodeJS > 8.X) installed on your workstation to use Mobile Builder.

The NPM install process can last several minutes according to your Internet Bandwith and CPU power. A progress indicator will show you how much data has been downloaded. A typical application will require about 180MB of packages dependencies to be downloaded and installed in your project. In most cases the NPM install process is done only once in the life of your project, but you can choose to re-install NPM dependencies, or to update them by right-clicking on:

“Application” component -> “Update packages and Execute…”
“Application” component -> “Re-install packages and Execute…”
Once the packages have been downloaded, the viewer will start to build your app to be displayed. This process will take about 20 to 30 seconds and will be done only once when you launch the viewer. While the viewer is displayed, any modification in the Mobile Builder project tree will be reflected in real time in the viewer.

Applications can be shown as iOS devices (iPhones, iPADs) as Android devices or as Windows Mobile devices. The user can click on the device menu to show all available devices. Custom devices can also be created by giving the device a name and configuring its width and height in pixels. Users can Zoom in and Zoom out the apps to see more details or to fit the whole app in the app viewer.

{% include image.html file="man_img/landscape-viewer.png" url="images/man_img/landscape-viewer.png" alt="Landscape-viewer" caption="Landscape-viewer" max-width="400" %}
{% include image.html file="man_img/Portrait-viewer.png" url="images/man_img/Portrait-viewer.png" alt="Portrait-viewer" caption="Portrait-viewer" max-width="400" %}

Users can also switch to landscape to see how the apps behave when the device is oriented in landscape mode.

Sometimes, viewing the app in a standard Web browser can be useful to test how the app behaves in a desktop browser. This can be done easily by using the “browser” button.

Another interesting feature called “datasets” is also controlled from here to create and use different datasets to be used for data binding testing.

The Mobile Builder has several controls you can use to help you running the app :

- **Orientation**: Changes device orientation (Landscape / portrait)
- **Refresh**: Relaunches the app on the current page
- **Back**: Goes back on page (Like the back button on the device)
- **Remove** highlight: Removes any highlighted object (Object are highlighted when you right click on them)
- **Debug**: Shows Debugger view in the Studio.
- **Autobuild**: Toggle button. If Selected the app will be built and refreshed automatically each time you modify a component in the application. Some times on slow machines, you would prefer to disable this to build the app only when you want, so unselect the toggle and re-select it when you want to build the app.
- **Manage Modules**: Lets you update or re-install NPM node_modules for this app. Can be useful for corrupted NPM node_modules installations.
- **Build mode**: Can be one of 4 modes : fast, light debug, strong debug, and production
- **Select Dataset**: When you create applications you have some times to use datasets to populate some of your UI components such as list or forms. You can use this button to save a current dataset (the data that is currently displayed in your app resulting from Sequence or FullSync bindings), and reuse it later on a page to test how your UI will react with this dataset. This is very useful to build UIs when back end data is not available.
- **Save Dataset**: Saves current data in the app as a dataset
- **Delete Dataset**: Deletes a dataset

## Mobile components

The Mobile Builder comes with a “Mobile Palette” containing the main components useful for creating the content of your application pages. Components are grouped by categories, but you can quickly find a component using the search bar. When you select a component, help for its use is displayed in the right pane. Simply drag and drop your components from the palette into the tree view of your pages.

{% include image.html file="man_img/MobilePalette.png" url="images/man_img/MobilePalette.png" alt="MobilePalette" caption="MobilePalette" max-width="400" %}

When you drop a component on existing one in the tree, it will be inserted under. You can reorder it by using the ‘up’ and ‘down’ buttons on the top of the project tree. You can also move the component to another position in the tree branch by drag & dropping it on the same branch.

Although this is not as precise as dragging on the tree, you can also drag a component directly on the Application Viewer space. In this case, the zone where the component will be droppped will be highlighted in blue.

{% include image.html file="man_img/mobile-components.png" url="images/man_img/mobile-components.png" alt="Mobile Component" caption="Mobile Components" max-width="400" %}

Any mobile component can be selected from the project tree view which allows you to access and modify its properties in the “Properties” view. When you double-click on a component it is automatically highlighted in blue with a red dotted border in the application viewer. You can also double-click on a page to display this exact page on the app viewer. The other way round, if you right-click on a component in the application viewer, it will be highlighted and its mobile component will also be selected in the project tree.

## Handling events and actions

An application reacts to events generated by users, for example when they click on a button, submit a form, or wipe and object. You can handle these events by dropping the ‘Event’ component from the palette on a mobile component. A ‘control’ folder will be created with the event in it. Any mobile component can receive an 'Event component (buttons, images, containers, etc …). Once the ‘Event’ is placed, you can configure its ‘Event Type’ property to the event of your choice. Mobile builder has a built-in event list (click, tap, swipe, ect …) but you may use your own by typing yourself the event enclosed by parenthesis, eg: (myEvent)

An application also reacts to some internal events triggered by mobile ‘Pages’, for example when a page is displayed, or created. To handle these type of events you can use the the ‘Page event’ component by dropping it directly on a ‘Page’.

### Using Actions in events

You process the event by dropping ‘Actions’ on the event. The action will be executed when the event is triggered. The action flow will be executed in the following way:

Every ‘Action’ placed as siblings in the tree beneath an event will be executed at the same time, as a parallel flow.
Every ‘Action’ placed below another action, will be executed when the first action ends, as a sequential flow also called an ‘Action chain’.

{% include image.html file="man_img/event-components.png" url="images/man_img/event-components.png" alt="Event-components" caption="Event-components" max-width="400" %}

### Binding action properties to previous action data outputs

In some cases, you would like an Action in the action chain to use some data produced by another action upper in the chain. To do this, bind the action properties this way:

To bind an action’s property to output data produced by an action directly above use parent.out or directly out in TS mode (Binding mode set to TypeScript)
To bind a action’s property to output data produced by any action above use 

{% highlight js %}
stack['ActionName'].out 
{% endhighlight js %}


where ActionName is the name of the Action you want to target, in TS mode

### Writing your own Actions

You can write your own actions by using the ‘CustomAction’ action component. This action will behave exactly like the other actions in the chain for the processing flow, but will have 2 differences:

The action can be programmed in TypeScript. For this, double-click on the action and edit the code between the comments :

{% highlight js %}
/* begin_c8o.... */ 

  /* --- Your code here --- */

/* end_c8o .... */ 
{% endhighlight js %}

You can add variable objects to this action by dropping ‘Variable’ components on the CustomAction. You will be able to use data binding on these variables, and as they will be transmitted to the CustomAction, you will be able to use these variable values in your custom code. To access a variable value, use vars.VariableName where VariableName is the name of the variable you want to target

## Mobile debugger

Convertigo Mobile Builder includes a 100% visual debugger able to monitor and debug your mobile apps. This debugger has roughly the same features and usage than the Google Chrome debugger. To activate it, just click on the mobile debug tab(1) and click the debugger icon(2). The tool can be used to adjust styles, margins, and components placements precisely. Therefore, unlike other RMAD platforms, Convertigo mobile Builder can be used to create tailored applications.

{% include image.html file="man_img/Mobile-debugger-12.png" url="images/man_img/Mobile-debugger-12.png" alt="Mobile debugger 1" caption="Mobile debugger 1" max-width="400" %}

The mobile debugger also shows all the network interaction between the device and a Convertigo Server. This is a key tool to understand protocols used for calling Convertigo MBaaS Microservices or for executing a FullSync replication. Exploring the data exchanged on the network helps debugging your app.

{% include image.html file="man_img/Mobile-debugger-2.png" url="images/man_img/Mobile-debugger-2.png" alt="Mobile debugger 2" caption="Mobile debugger 2" max-width="400" %}

## Data binding

Data binding makes mobile applications able to display data from the backend services. With Convertigo this is done by a simple Drag & Drop!
One of the most powerful features of Convertigo Mobile builder RMAD is the Automatic Databinding. Data can be linked inbound and outbound without writing any line of code!
This can be done by using the “Mobile Picker” tool. This picker displays all the Sequences, FullSync databases, Iterator directives and Forms available for your project and for each of them the data model returned. Drag & dropping one of the model fields to a Mobile component will automatically bind it to the data.

{% include image.html file="man_img/photo-1.png" url="images/man_img/photo-1.png" max-width="400" %}

### Data binding Modes

Every component property can be bound in different modes. Click on one of the modes (TX, TS or SC) to activate it, then click on ‘…’ button to enter a value or pick a source.

- (TX) mode : property will be bound to some static text.
- (TS) mode : property will be bound to a TypeScript expression.
It can be a string (write it within enclosing simple quotes), a number (write it as is) or an expression calling some of the page methods, for example myMethod()
- (SC) mode : property will be bound to a source picked by the mobile picker tool, coming from a Sequence call, a FullSync call, an Iterator directive or a Form.

### Collection binding

Collection binding will make a component with its content repeated for each data occurrence. This is useful to display a list of items.

Sometimes, you’d like the returned data to be bound to a collection, for example when you want to display a list of items.
Use the “ForEach” directive component by drag & dropping it in a mobile “List Container” component. 
Configure its “Directive source” property by clicking the “SC” toggle and the “…” button, then select the recurring data field of your source.

In example below, the “ForEach” component contains one “Button” component which will be repeated for each “employee”.

{% include image.html file="man_img/Collection-binding.png" url="images/man_img/Collection-binding.png" alt="Collection binding" caption="Collection binding" max-width="400" %}

## Styling applications

Convertigo Mobile Builder RMAD applications can be easily styled as they are based on the powerful Ionic 2 framework.
You can use the “Style” component to apply styles to the entire application, to a whole page and/or to given a mobile component.

Simply Drag & Drop the “Style” component from the mobile palette. The following picture shows a “Style” component which will apply for a whole page.

{% include image.html file="man_img/Styling-appllications-1.png" url="images/man_img/Styling-appllications-1.png" alt="Styling appllications 1" caption="Styling appllications 1" max-width="400" %}

In the same way, dropping “Style” on a component will apply it to this component only. You can add as many “Style” components you want.

{% include image.html file="man_img/Styling-applications-2.png" url="images/man_img/Styling-applications-2.png" alt="Styling appllications 2" caption="Styling appllications 2" max-width="400" %}

Double clicking on a “Style” will open the “Style editor” where you can write some CSS compliant rules. This editor supports CSS typing completion to assist you in writing.

{% include image.html file="man_img/Styling-applications-3.png" url="images/man_img/Styling-applications-3.png" alt="Styling appllications 3" caption="Styling appllications 3" max-width="400" %}

You can also use the “Theme” component to apply a theme to your application by dragging & dropping it from the mobile palette on the project “Application” component.
The “Theme” can be edited by double-clicking on it.

{% include image.html file="man_img/Styling-applications-4.png" url="images/man_img/Styling-applications-4.png" alt="Styling appllications 4" caption="Styling appllications 4" max-width="400" %}

## Using forms

Form management is a built-in feature of Convertigo Mobile Builder RMAD.

To add and design a form, simply drag & drop a “Form” and its ‘input’ components in the content of a page. 
Form ‘input’ components can be input fields, check boxes, range sliders, select drop downs, radio buttons, toggles or any other HTML form element. 
Drop an “onSubmit” Event on the form to handle submission. Bind this event by dropping on it some action components like the “CallSequence” to perform a backend service request. Configure the “formControlName” property of each input component if you’d like to bind them to some service input data (e.g: sequence variable name).

{% include image.html file="man_img/Using-forms-1.png" url="images/man_img/Using-forms-1.png" alt="Using forms 1" max-width="500" %}

Even better, you can build a form in just one action by drag & dropping a “Sequence” directly on a “Form” component! Convertigo Mobile Builder will automatically generate for you all the form ‘input’ components with labels, bind the “onSubmit” event to this sequence, and bind all the form ‘input’ components to the sequence input variables. You are then free to customize the form the way you want.

Forms also support field validators. To use them, just drag & drop on an ‘input’ component a “ControlValidator” component and change its properties, or use a “CustomValidator” component to write a custom validation function. Simply double-click on the validator to open its editor, scroll down to the function and write your code between the /* Begin_c8o_function:validateXXX */ and the /* End_c8o_function:validate */ comments. You can also add a “CustomValidator” component to your “Form” component if you’d like to handle the whole form validation.

{% include image.html file="man_img/Using-forms-2.png" url="images/man_img/Using-forms-2.png" alt="Using forms 2" max-width="400" %}

## Writing custom code

Although RMAD technology helps in writing mobile applications in a few clicks, you might want to write your own custom code to perform some bespoke processing in your app. Convertigo Mobile Builder enables this by letting you write some TypeScript code at the application level or at a specific page level.

### Customizing code at the application level

To write code at the application level, right-click on the application component and select the “Edit application class” menu.

{% include image.html file="man_img/Write-Custom-code-1.png" url="images/man_img/Write-Custom-code-1.png" alt="Write Custom code 1" max-width="500" %}

Write your TypeScript code between the /* Begin_c8o_XXX */ and the /* End_c8o_XXX */ comments. This code will be saved in the application or the page component. Convertigo Mobile Builder TypeScript editor supports syntax coloring and code assist completion.

### Customizing code at the page level

You can do the same at the page level to customize code for a given page. You will be able to add new page methods, import your components and do some initialization tasks in the constructor. For this, right-click on page and select “Edit Page class…”. Again, be sure to write your TypeScript code between the /* Begin_c8o_XXX */ and the /* End_c8o_XXX */ comments.

### Using Custom Actions

You can also write TypeScript custom code for a “CustomAction” component. To do this, drag & drop the “CustomAction” component on an “Event” component. Then, double click on the “CustomAction” to open the editor.

{% include image.html file="man_img/Write-Custom-code-2.png" url="images/man_img/Write-Custom-code-2.png" alt="Write Custom code 2" max-width="500" %}

Be sure to use the resolve() function in your custom code to execute the next action in the chain.

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
{% endhighlight %}

will inject dynamically “ServiceName” and let you use it by the “myService” reference variable.
