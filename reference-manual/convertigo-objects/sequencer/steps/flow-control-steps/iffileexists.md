---
layout: page
title: IfFileExists
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sequencer/steps/flow-control-steps/iffileexists/
metadesc: Defines an <span class="computer">IF  conditional step looking for the existence of a file or a directory.   The  IfFileExists  step is one of Convert
ObjGroup: Sequencer
ObjCatName: flow-control-steps
ObjName: IfFileExists
ObjClass: com.twinsoft.convertigo.beans.steps.IfFileExistStep
ObjIcon: /images/beans/steps/images/ifFileExists_32x32.png
topnav: topnavobj
---
##### Defines an <span class="computer">IF</span> conditional step looking for the existence of a file or a directory. 

The <i>IfFileExists</i> step is one of Convertigo Sequencer conditional steps. This step contains other steps executed only if the file or directory defined through the <b>Source</b> property exists. <br/><span class="orangetwinsoft">Note:</span> In Convertigo Studio, when an <i>IfFileExists</i> step is created in a sequence, it can be easily replaced by an <i>IfFileExistsThenElse</i>, using the right-click menu on the step and choosing the option <b>Change to</b> &gt; <b>IfFileExistsThenElse</b>. The <b>Source</b> property remains the same and the steps present in the <i>IfFileExists</i> are moved to the <i>Then</i> sub-step.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the step is active.
Source | JS expression | standard | Defines the path of the file or directory which existence has to be checked.<br/>This property is a JavaScript expression that is evaluated during the sequence execution and gives the path of the file or directory which existence has to be checked. <br/>This path is either absolute or relative to Convertigo environment. Relative paths starting with:<br/><br/>• <span class="computer">./</span> are relative to Convertigo workspace,<br/>• <span class="computer">.//</span> are relative to current project folder. <br/>
Output | boolean | expert | Defines whether the XML generated by this step should be appended to the resulting XML.<br/>Set this property to <span class="computer">true</span> to add the step's resulting XML to the sequence's output XML (default value for steps generating XML). Set this property to <span class="computer">false</span> to prevent the steps's XML result to appear in the sequence's output XML.<br/>Setting this property to <span class="computer">false</span> does not prevent the step's generated XML from being used as a source by other steps.
