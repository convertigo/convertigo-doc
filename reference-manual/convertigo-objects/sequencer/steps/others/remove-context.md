---
layout: page
title: Remove context
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sequencer/steps/others/remove-context/
metadesc: Defines a step which removes a named Convertigo context.   The  Remove context  step removes a Convertigo context that was created by    • a previous 
ObjGroup: Sequencer
ObjCatName: others
ObjName: Remove context
ObjClass: com.twinsoft.convertigo.beans.steps.RemoveContextStep
ObjIcon: /images/beans/steps/images/remove_context_32x32.png
topnav: topnavobj
---
##### Defines a step which removes a named Convertigo context. 

The <i>Remove context</i> step removes a Convertigo context that was created by: <br/><br/>• a previous <i>Call Transaction</i> or <i>Call Sequence</i> step for which a specific context name was defined, <br/>• an <span class="computer">__context</span> parameter sent to Convertigo while previously calling a transaction/sequence. <br/><br/>The name of the context to remove is specified through the <b>Context name</b> property. <br/><span class="orangetwinsoft">Note:</span> The creation or the destruction of a named context is effective in server mode only.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the step is active.
Context name | JS expression | expert | Defines the name of the context to remove.<br/>This property is a JavaScript expression that is evaluated at sequence execution. The computed context name is appended to the current session <span class="computer">JSessionID</span> to define the context ID that is removed.
Output | boolean | expert | Defines whether the XML generated by this step should be appended to the resulting XML.<br/>Set this property to <span class="computer">true</span> to add the step's resulting XML to the sequence's output XML (default value for steps generating XML). Set this property to <span class="computer">false</span> to prevent the steps's XML result to appear in the sequence's output XML.<br/>Setting this property to <span class="computer">false</span> does not prevent the step's generated XML from being used as a source by other steps.
