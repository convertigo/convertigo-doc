---
layout: page
title: Write JSON
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sequencer/steps/file-management-steps/write-json/
metadesc: Writes XML content converted to JSON in a JSON file.   The  Write JSON  step allows outputting XML content converted to JSON in a JSON file on disk. I
ObjGroup: Sequencer
ObjCatName: file-management-steps
ObjName: Write JSON
ObjClass: com.twinsoft.convertigo.beans.steps.WriteJSONStep
ObjIcon: /images/beans/steps/images/jsonW_32x32.png
topnav: topnavobj
---
##### Writes XML content converted to JSON in a JSON file. 

The <i>Write JSON</i> step allows outputting XML content converted to JSON in a JSON file on disk. It can either create a new JSON file or update an existing JSON file as JSON array. 

Property | Type | Category | Description
--- | --- | --- | ---
Append timestamp | boolean | standard | Defines whether the file name should be created with a timestamp.<br/>If set to <span class="computer">true</span>, the date is concatenated to the file name in <span class="computer">yyyymmddHHmmssSSS</span> format.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Encoding | String | standard | Defines the encoding used in output file.<br/>Default used encoding is <span class="computer">ISO-8859-1</span>.
Is active | boolean | standard | Defines whether the step is active.
Output file | JS expression | standard | Defines the output file path including the file name.<br/>This property is a JavaScript expression that is evaluated during the sequence execution and gives the path and name of the file to write. <br/>This path is either absolute or relative to Convertigo environment. Relative paths starting with:<br/><br/>• <span class="computer">./</span> are relative to Convertigo workspace,<br/>• <span class="computer">.//</span> are relative to current project folder. <br/>
Append Result | boolean | expert | Defines whether the XML must be appended at the end of the file.<br/>If set to <span class="computer">true</span>, and if the file exists, the step appends the XML at the end of the file. If set to <span class="computer">false</span>, it overrides the current file content.
Output | boolean | expert | Defines whether the XML generated by this step should be appended to the resulting XML.<br/>Set this property to <span class="computer">true</span> to add the step's resulting XML to the sequence's output XML (default value for steps generating XML). Set this property to <span class="computer">false</span> to prevent the steps's XML result to appear in the sequence's output XML.<br/>Setting this property to <span class="computer">false</span> does not prevent the step's generated XML from being used as a source by other steps.
Source | XMLVector | expert | Defines the source data to write.<br/>This property allows defining a list of nodes from a previous step used as data root to be written in the file. <br/>A <b>source</b> is defined as a reference on a step previously existing in the parent sequence, associated with an XPath applied on the step's result DOM. At runtime, the XPath is applied on the step's current execution result XML and extracts a list of XML nodes resulting from this execution. <br/>If the XPath doesn't match or if the source is left blank, the XML output document of the sequence (i.e., sequence resulting XML) is used as source. In this case, the step behavior can be seen as a sequence output dump. <br/>If REST or SOAP interfaces are used to call parent sequence, the XML output document is normally returned to the sequence caller.
Write Output False | boolean | expert | Defines if the XML should contains Output False elements.<br/>If set to <span class="computer">true</span> (default), all XML generated from the source is written to the file else only Step flagged as <span class="computer">Output True</span> will be.