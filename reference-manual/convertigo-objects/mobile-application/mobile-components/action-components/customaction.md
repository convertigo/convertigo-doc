---
layout: page
title: CustomAction
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/action-components/customaction/
metadesc: Defines  CustomAction  action component.   This component helps you writing your own processing code. To edit code, double click the  CustomAction . Y
ObjGroup: Actions
ObjCatName: action-components
ObjName: UICustomAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.res.UICustomAction
ObjIcon: /images/beans/mobile/components/images/uicustomaction_color_32x32.png
topnav: topnavobj
---
##### Defines <i>CustomAction</i> action component. <br/>

 This component helps you writing your own processing code.<br/>
To edit code, double click the <i>CustomAction</i>. You are free to code in TypeScript any custom processing you want. Be sure to write your code between the<br /><code>/*Begin_c8o_function */<br />/*End_c8o_function */</code><br />delimiters.<br /><br />Custom actions can be inserted in an <i>Event</i> processing chain, combined with any other <i>Actions</i>. For example, you could have a <i>Camera</i> Action called when the user clicks on a button an you would like to process this action's output. To do this, place a <i>CustomAction</i> under the <i>Camera</i> action. This way, the <i>CustomAction</i> will be called <b>after</b> the <i>Camera</i> has finished (when the user clicks on ok to save the image...).<br /><br />When you finish processing in your CustomAction, you can call <code>resolve(data)</code> to pass control to the next CustomAction in the chain. The <code>data</code> object will be seen a the <code>parent.out</code> or <code>stack["ActionName"].out</code> object you can configure in the (TS) source of the next action in the chain.You can also call <code>reject(err)</code> to signal an error in the Custom Action processing. In this case, the <i>Failure Handler</i> or <i>Error Handler</i> error handler will be called. <br /><br />You can pass <i>Variable</i>s to any action. To do so, simply add <i>Variable</i> components under the <i>CustomAction</i>. You are free to associate the variable to any fixed text (<b>TX</b>) , TypeScript expression (<b>TS</b>), source (<b>SC</b>) and the value will be transmitted to the action.<br /><br />You can access the variables value in your custom action code by using : <br /><br /> <code>vars.myVariable</code> (where myVariable is the variable name)<br /><br /> You can call from <i>CustomAction</i> code any additional package available on NPM. To do so, simply configure the <i>Application packages</i> property with a NPM Package and version number, and  configure the <i>Page Imports</i> property to declare all the packages import you will need. This will automatically insert TypeScript 'Import' statements in the page where the <i>CustomAction</i> is used. If you want to use use one the imported classes, you may have to get an Instance of it. To do so, you can use the CAF utility method <code>this.getInstance(Class)</code>.<br /><br /> Some NPM packages may require also additional module declarations. To do so, configure the <i>Application modules</i> property, the <i>Application providers</i> property and the <i>Application imports</i> property. This will insert automatically the module to the app.module.ts file in the @NgModule 'imports' or 'provider' arrays, and add an 'Import' TypeScript statement in the file header. <br /><br /> Some other NPM packages may also require an Additional Cordova plugin. (For example ionic Native packages). You can also declare these plugins in the <i>Application plugins</i> property. This will cause Convertigo Studio to automatically add the plugin to the project's Cordova Config.xml file.<br /><br /> <i>CustomAction</i>s are also a great way to add some additional NPM packages to your projects, even if you do not write some code in the <i>CustomAction</i> itself, but in any other place (Page class, (TS) mode binding...)

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 
Application imports | Defines the imports needed by this action.  Add here any 'Import' statements needed in the app.module.ts
Application modules | Defines the modules needed by this action.  Add here any application module to be inserted in the @NgModule({Imports[]}) in app.module.ts
Application packages | Defines the packages needed by this action.  Add here any NPM Package needed by you code. They will be automatically added to the app's Packages.json
Application plugins | Defines the plugins needed by this action.  Add here any additional Cordova plugin your code needs (Ex ion native Packages).
Application providers | Defines the providers needed by this action.  Add here any application module to be inserted in the @NgModule({Providers[]}) in app.module.ts
Page imports | Defines the imports needed by this action.  Add here any 'Import' statements your code would require to compile.

