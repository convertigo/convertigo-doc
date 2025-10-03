---
layout: page
title: Call Sequence
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sequencer/steps/convertigo-request-steps/call-sequence/
metadesc: Defines a step invoking a sequence.    The  Call Sequence  step enables to call any existing sequence from the same project or another. It provides in
ObjGroup: Sequencer
ObjCatName: convertigo-request-steps
ObjName: Call Sequence
ObjClass: com.twinsoft.convertigo.beans.steps.SequenceStep
ObjIcon: /images/beans/steps/images/sequencestep_32x32.png
topnav: topnavobj
---
##### Defines a step invoking a sequence.

The *Call Sequence* step enables to call any existing sequence from the same project or another. It provides input variables to the target sequence, and returns XML data from the call.

Variables to be used for the call must be described at step level by adding *Variables* child objects. You can manually set variables or use the **Import variables from the target sequence** contextual menu to automatically copy the variable definitions from the target sequence.

The target sequence returns structured XML data, its XML schema has to be generated while developing the sequence and is automatically imported to the *Call Sequence* step while configuring its **Sequence** property. Thus, the sequence's schema is known by the calling step and elements from the sequence result can be correctly sourced from it.

**Note:**

- A *Call Sequence* step with all its properties filled and including the target variables can be easily created at once in the Convertigo Studio **Projects** view. To do so, drag-and-drop with `Ctrl` key pressed a sequence from its parent project to a sequence or a block step where the *Call Sequence* step has to be created.
- The client/server HTTP session of parent sequence is spread to the called sequence context, even if it is called internally (**Internal invoke** property set to `true`).


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Context name | JS expression | standard | Defines the specific context name to use (one is automatically created otherwise).<br/>This property is a JavaScript expression that is evaluated at sequence execution. If not empty, the computed context name is appended to current session's `JSessionID` to define the context ID of the context that is created.<br/><br/>The execution context of called transaction / sequence is named:<br/><br/>- after the **Context name** property of the *Call Transaction* / *Call Sequence* step,<br/>- automatically thanks to parent sequence parameters, if the **Context name** property is not specified.<br/><br/>Every automatically named context will be deleted at the end of the sequence execution. Explicitly named contexts will remain for further transaction or sequence use.<br/><br/>To re-use a named context, call the transaction / sequence in the same session and pass the context name through:<br/><br/>- the **Context name** property of *Call Transaction* / *Call Sequence* step,<br/>- the `__context` parameter sent to Convertigo while calling the transaction / sequence.<br/><br/>**Note:** The creation or the destruction of context is effective in server mode only.
Inherit context | boolean | standard | Defines whether the context used by the current sequence for transaction's steps should also be used by the target sequence.<br/>Sequences are executing all child transactions (transactions called thanks to *Call transaction* steps) in a context automatically created (except for transactions called thanks to a *Call transaction* step with **Context** property set). For other child transactions, the automatically created context can be passed to a child sequence (called thanks to a *Call Sequence* step) for it to re-use this context for executing its child transactions. To do so, set this property to `true`.
Internal invoke | boolean | standard | Defines if the called transaction/sequence should be called internally (through the Convertigo engine) or externally (i.e. via the web application server, in HTTP).<br/>Since version 6.3.3 of Convertigo, the HTTP session of parent sequence is spread to called transaction/sequence context even if the transaction/sequence is called using internal invoke.
Is active | boolean | standard | Defines whether the step is active.
Sequence | String | standard | Defines the target project and sequence to request from this project.<br/>The target sequence must be one of the sequences from an existing project, the project in which the *Call Sequence* step is added or another project opened in the same Convertigo.<br/><br/>This property is set by selecting the target sequence in a list of values of the following form: `<project_name>.<sequence_name>` to avoid mistakes in case of sequences with the same name in several projects.
Output | boolean | expert | Defines whether the XML generated by this step should be appended to the resulting XML.<br/>Set this property to `true` to add the step's resulting XML to the sequence's output XML (default value for steps generating XML). Set this property to `false` to prevent the steps's XML result to appear in the sequence's output XML.<br/><br/>Setting this property to `false` does not prevent the step's generated XML from being used as a source by other steps.
