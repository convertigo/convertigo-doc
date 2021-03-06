---
layout: page
title: Process execute
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sequencer/steps/others/process-execute/
metadesc: Defines a step able to execute a process.    A  Process execute  step executes the string command specified by the  Command line  property in a separa
ObjGroup: Sequencer
ObjCatName: others
ObjName: Process execute
ObjClass: com.twinsoft.convertigo.beans.steps.ProcessExecStep
ObjIcon: /images/beans/steps/images/processexec_32x32.png
topnav: topnavobj
---
##### Defines a step able to execute a process. 

A <i>Process execute</i> step executes the string command specified by the <b>Command line</b> property in a separate subprocess. <br/>The subprocess environment parameters and working directory may be defined through the <b>Environment parameters</b> and <b>Execution directory</b> properties. If left empty, they're inherited from the current process. <br/>Depending on the value of the <b>Wait for end</b> property, the step will wait or not until the subprocess has terminated.<br/><span class="orangetwinsoft">Note:</span> Only real programs can be executed thanks to this step. In other words, you cannot execute commands interpreted by a shell (Windows DOS or Linux Bash for example).

Property | Type | Category | Description
--- | --- | --- | ---
Command line | JS expression | standard | Defines the process command line.<br/>This property is a JavaScript expression that is evaluated at sequence execution. JavaScript variables and code are supported in this property. <br/>The syntax of this command line depends on the operating system where Convertigo is installed. If you want to execute some bash command use the ["bash", "-c", "my bash command"]. If you have a complex command to execute use the array syntax and separated each part of the command in a string array.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Encoding | String | standard | Defines the encoding used for the process output.<br/>Default value is <span class="computer">UTF-8</span>. If value is left empty, the default encoding of the Java virtual machine is used.
Environment parameters | XMLVector | standard | Defines the process environment parameters.<br/>This property allows to define a list of environment parameters to define for the process execution. For each environment parameter, two columns have to be set: <br/><br/>• <b>Variable</b>: defines the name of the parameter, <br/>• <b>Value</b>: defines the value of the parameter. <br/><br/><span class="orangetwinsoft">Notes:</span> <br/><br/>• A new environment parameter can be added to the list using the blue keyboard icon. The environment parameters defined in the list can be ordered using the arrow up and arrow down buttons, or deleted using the red cross icon. <br/><br/>• If left empty, environment parameters are inherited from the current process, Convertigo. <br/>
Execution directory | String | standard | Defines the process execution directory.<br/>If left empty, execution directory is inherited from the current process, Convertigo. <br/>For a project running in Convertigo Studio, the default directory is the installation directory (were is found the <span class="computer">ConvertigoStudio.exe</span> file). For a project running in Convertigo Server, the default directory is the application server root folder (tomcat folder for a standard Server installation on Windows).
Is active | boolean | standard | Defines whether the step is active.
Wait for end | boolean | standard | Specifies whether the sequence should wait for the end of the process before continuing with next step.<br/>Default value is <span class="computer">true</span>, so the following step in the parent sequence is executed only after the process execution has returned.
Output | boolean | expert | Defines whether the XML generated by this step should be appended to the resulting XML.<br/>Set this property to <span class="computer">true</span> to add the step's resulting XML to the sequence's output XML (default value for steps generating XML). Set this property to <span class="computer">false</span> to prevent the steps's XML result to appear in the sequence's output XML.<br/>Setting this property to <span class="computer">false</span> does not prevent the step's generated XML from being used as a source by other steps.
