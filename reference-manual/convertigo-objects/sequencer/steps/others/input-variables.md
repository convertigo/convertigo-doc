---
layout: page
title: Input variables
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sequencer/steps/others/input-variables/
metadesc: Defines an XML element containing dynamically the input variables of parent  Sequence .   Placed at the beginning of a  Sequence , this step allows st
ObjGroup: Sequencer
ObjCatName: others
ObjName: Input variables
ObjClass: com.twinsoft.convertigo.beans.steps.InputVariablesStep
ObjIcon: /images/beans/steps/images/inputVariablesstep_32x32.png
topnav: topnavobj
---
##### Defines an XML element containing dynamically the input variables of parent <b>Sequence</b>. 

Placed at the beginning of a <b>Sequence</b>, this step allows steps ordered after to use the <b>Sequence</b> input variables as source.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the step is active.
Node name | String | standard | Defines the tag name of the generated XML element.<br/>This property can contain any name, no words are reserved, and must follow the rules on XML naming:<br/><br/>• it can contain letters, numbers, and other characters, <br/>• it cannot start with a number, <br/>• it cannot contain spaces nor punctuation character.<br/>
Output | boolean | expert | Defines whether the XML generated by this step should be appended to the resulting XML.<br/>Set this property to <span class="computer">true</span> to add the step's resulting XML to the sequence's output XML (default value for steps generating XML). Set this property to <span class="computer">false</span> to prevent the steps's XML result to appear in the sequence's output XML.<br/>Setting this property to <span class="computer">false</span> does not prevent the step's generated XML from being used as a source by other steps.
