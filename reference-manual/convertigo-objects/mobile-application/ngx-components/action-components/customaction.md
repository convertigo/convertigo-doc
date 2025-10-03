---
layout: page
title: CustomAction
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/action-components/customaction/
metadesc: Defines  CustomAction  action component.    This component helps you writing your own processing code.  To edit code, double click the  CustomAction .
ObjGroup: Actions
ObjCatName: action-components
ObjName: UICustomAction
ObjClass: com.twinsoft.convertigo.beans.ngx.components.res.UICustomAction
ObjIcon: /images/beans/ngx/components/dynamic/images/uicustomaction_32x32.png
topnav: topnavobj
---
##### Defines <i>CustomAction</i> action component. <br/>

 <p>This component helps you writing your own processing code.</p><p>To edit code, double click the <i>CustomAction</i>. You are free to code in TypeScript any custom processing you want. Be sure to write your code between the</p><code>/*Begin_c8o_function */<p>/*End_c8o_function */</code></p><p>delimiters.</p><p>Custom actions can be inserted in an <i>Event</i> processing chain, combined with any other <i>Actions</i>. For example, you could have a <i>Camera</i> Action called when the user clicks on a button an you would like to process this action's output. To do this, place a <i>CustomAction</i> under the <i>Camera</i> action. This way, the <i>CustomAction</i> will be called <b>after</b> the <i>Camera</i> has finished (when the user clicks on ok to save the image...).</p><p>When you finish processing in your CustomAction, you can call <code>resolve(data)</code> to pass control to the next CustomAction in the chain. The <code>data</code> object will be seen a the <code>parent.out</code> or <code>stack["ActionName"].out</code> object you can configure in the (TS) source of the next action in the chain. You can also call <code>reject(err)</code> to signal an error in the Custom Action processing. In this case, the <i>Failure Handler</i> or <i>Error Handler</i> error handler will be called.</p><p>You can pass <i>Variable</i>s to any action. To do so, simply add <i>Variable</i> components under the <i>CustomAction</i>. You are free to associate the variable to any fixed text (<b>TX</b>) , TypeScript expression (<b>TS</b>), source (<b>SC</b>) and the value will be transmitted to the action.</p><p>You can access the variables value in your custom action code by using :</p><code>vars.myVariable</code> (where myVariable is the variable name)<p>You can call from <i>CustomAction</i> code any additional package available on NPM. To do so, simply configure the <i>Application packages</i> property with a NPM Package and version number, and configure the <i>Page Imports</i> property to declare all the packages import you will need. This will automatically insert TypeScript 'Import' statements in the page where the <i>CustomAction</i> is used. If you want to use use one the imported classes, you may have to get an Instance of it. To do so, you can use the CAF utility method <code>this.getInstance(Class)</code>.</p><p>Some NPM packages may require also additional module declarations. To do so, configure the <i>Application modules</i> property, the <i>Application providers</i> property and the <i>Application imports</i> property. This will insert automatically the module to the app.module.ts file in the @NgModule 'imports' or 'provider' arrays, and add an 'Import' TypeScript statement in the file header.</p><p>Some other NPM packages may also require an Additional Cordova plugin. (For example ionic Native packages). You can also declare these plugins in the <i>Application plugins</i> property. This will cause Convertigo Studio to automatically add the plugin to the project's Cordova Config.xml file.</p><p><i>CustomAction</i>s are also a great way to add some additional NPM packages to your projects, even if you do not write some code in the <i>CustomAction</i> itself, but in any other place (Page class, (TS) mode binding...)</p>

Name | Description 
--- | ---
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.
Application assets | Defines the assets needed by this action.  <p>Add here any additional json to be inserted in the app:architect:build:option:assets[] of angular.json (Ex {"glob": "**/*", "input": "node_modules/tinymce", "output": "/tinymce/"})</p>
Application component imports | Defines the imports needed by this action.  <p>Add here any 'Import' statements your code would require to compile.</p>
Application module NgModules | Defines the modules needed by this action.  <p>Add here any module to be inserted in the @NgModule({Imports[]}) in app.module.ts</p>
Application module NgProviders | Defines the providers needed by this action.  <p>Add here any provider to be inserted in the @NgModule({Providers[]}) in app.module.ts</p>
Application module imports | Defines the imports needed by this action.  <p>Add here any 'Import' statements needed in the app.module.ts</p>
Application packages | Defines the packages needed by this action.  <p>Add here any NPM Package needed by you code. They will be automatically added to the app's Packages.json</p>
Application plugins | Defines the plugins needed by this action.  <p>Add here any additional Cordova plugin your code needs (Ex ion native Packages).</p>
Application scripts | Defines the scripts needed by this action.  <p>Add here any additional path to script file needed by your code</p>
Application styles | Defines the styles needed by this action.  <p>Add here any additional path to scss file needed by your code</p>
Local component imports | Defines the imports needed by this action.  <p>Add here any 'Import' statements your code would require to compile.</p>
Local module NgModules | Defines the modules needed by this action.  <p>Add here any module to be inserted in the @NgModule({Imports[]}) in the page.module.ts or comp.module.ts</p>
Local module NgProviders | Defines the providers needed by this action.  <p>Add here any provider to be inserted in the @NgModule({Providers[]}) in the page.module.ts or comp.module.ts</p>
Local module imports | Defines the imports needed by this action.  <p>Add here any 'Import' statements needed in the page.module.ts or comp.module.ts</p>

