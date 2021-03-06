---
layout: page
title: Concat
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sequencer/steps/xml-steps/concat/
metadesc: Concatenates defined sources.    Concat  steps are used to concatenate string elements into one new resulting XML element inserted in the output.  The
ObjGroup: Sequencer
ObjCatName: xml-steps
ObjName: Concat
ObjClass: com.twinsoft.convertigo.beans.steps.XMLConcatStep
ObjIcon: /images/beans/steps/images/concatstep_32x32.png
topnav: topnavobj
---
##### Concatenates defined sources. 

<i>Concat</i> steps are used to concatenate string elements into one new resulting XML element inserted in the output. <br/>The <i>Concat</i> step uses an array of input strings (set using the <b>Sources</b> property) to be concatenated. An optional <b>Separator</b> parameter can also be added. If used, the separator is inserted in the resulting string between each concatenated element. <br/>The resulting string is added to the sequence XML output and can be used as a new source for other steps. <br/><span class="orangetwinsoft">Note:</span> In Convertigo Studio, when a <i>Concat</i> step is created in a sequence, it can be easily replaced by an <i>Element</i> step, using the right-click menu on the step and choosing the option <b>Change to</b> &gt; <b>Element</b>. <br/><br/>• The <b>Node name</b> property remains the same. <br/>• The first source filled in the <i>Concat</i> step is moved to the <b>Source</b> property of the <i>Element</i> step. <br/>• <b>Default value</b> properties defined in <i>Concat</i> step lines are concatenated and moved to the <b>Default value</b> property of the <i>Element</i> step.<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the step is active.
Node name | String | standard | Defines the tag name of the generated XML element.<br/>This property can contain any name, no words are reserved, and must follow the rules on XML naming:<br/><br/>• it can contain letters, numbers, and other characters, <br/>• it cannot start with a number, <br/>• it cannot contain spaces nor punctuation character.<br/>
Assigned XSD Simple type QName | XmlQName | expert | Defines the schema base type to assign as a type to this simple XML element.<br/>This property allows to assign a simple XSD type to the simple XML element generated by this step. It can only be used when the step actually generates a simple XML element.
Output | boolean | expert | Defines whether the XML generated by this step should be appended to the resulting XML.<br/>Set this property to <span class="computer">true</span> to add the step's resulting XML to the sequence's output XML (default value for steps generating XML). Set this property to <span class="computer">false</span> to prevent the steps's XML result to appear in the sequence's output XML.<br/>Setting this property to <span class="computer">false</span> does not prevent the step's generated XML from being used as a source by other steps.
Separator | String | expert | Defines the text to be used as a separator string.<br/>If set, this text is added between each text to concatenate. Default value is a white space, think about removing it if you do not want to use it.
Sources | XMLVector | expert | Defines a list of source items to use as values.<br/>This property allows defining a list of source items that are used to create the result value. Each source item contains three columns to be set: <br/><br/>• <b>Description</b>: Defines a comment or description about this source item. <br/>• <b>Source</b>: Defines the source. A source is a reference on a step previously existing in the parent sequence, associated with an XPath applied on the step's result DOM. At runtime, the XPath is applied on the step's current execution result XML and extracts a list of XML nodes resulting from this execution. <br/>• <b>Default value</b>: Defines the default value for this source. If the source's XPath doesn't match in the referenced step or if the source is left blank, the default value is used. Otherwise, the source item creates no data. <br/><br/>Each source item may define a source and a default value. <br/><span class="orangetwinsoft">Note:</span> A new source item can be added to the list using the blue keyboard icon. The source items defined in the list can be ordered using the arrow up and arrow down buttons, or deleted using the red cross icon.
