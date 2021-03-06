---
layout: page
title: Remove authenticated user
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/sequencer/steps/http-session-management/remove-authenticated-user/
metadesc: Removes the authenticated user ID from the context/session.   The  Remove authenticated user  step allows to remove the authenticated user ID from the
ObjGroup: Sequencer
ObjCatName: http-session-management
ObjName: Remove authenticated user
ObjClass: com.twinsoft.convertigo.beans.steps.RemoveAuthenticatedUserStep
ObjIcon: /images/beans/steps/images/removeAuthenticatedUser_32x32.png
topnav: topnavobj
---
##### Removes the authenticated user ID from the context/session. 

The <i>Remove authenticated user</i> step allows to remove the authenticated user ID from the context/session. The context/session is not authenticated anymore. <br/><span class="orangetwinsoft">Note:</span> Although its <b>Output</b> property is set to <span class="computer">false</span> by default, this step generates an <span class="computer">authenticatedUserID</span> XML Element in output, that should always be empty if the step succeeds. 

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the step is active.
Output | boolean | expert | Defines whether the XML generated by this step should be appended to the resulting XML.<br/>Set this property to <span class="computer">true</span> to add the step's resulting XML to the sequence's output XML (default value for steps generating XML). Set this property to <span class="computer">false</span> to prevent the steps's XML result to appear in the sequence's output XML.<br/>Setting this property to <span class="computer">false</span> does not prevent the step's generated XML from being used as a source by other steps.
