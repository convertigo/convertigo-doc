---
layout: page
title: Serial
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sequencer/steps/flow-control-steps/serial/
metadesc: Defines a step executing child steps in series.   All child steps of a  Serial  step are executed one after another, it is similar to the basic behavi
ObjGroup: Sequencer
ObjCatName: flow-control-steps
ObjName: Serial
ObjClass: com.twinsoft.convertigo.beans.steps.SerialStep
ObjIcon: /images/beans/steps/images/serial_32x32.png
topnav: topnavobj
---
##### Defines a step executing child steps in series. 

All child steps of a <i>Serial</i> step are executed one after another, it is similar to the basic behavior of step execution when they are positioned just under the parent <i>Generic Sequence</i>.<br/>A <i>Serial</i> step is completed (i.e. the sequence will continue flow execution) when all child steps have been completed. This means the step following a <i>Serial</i> step starts right after the last child step is completed.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the step is active.
Output | boolean | expert | Defines whether the XML generated by this step should be appended to the resulting XML.<br/>Set this property to <span class="computer">true</span> to add the step's resulting XML to the sequence's output XML (default value for steps generating XML). Set this property to <span class="computer">false</span> to prevent the steps's XML result to appear in the sequence's output XML.<br/>Setting this property to <span class="computer">false</span> does not prevent the step's generated XML from being used as a source by other steps.
