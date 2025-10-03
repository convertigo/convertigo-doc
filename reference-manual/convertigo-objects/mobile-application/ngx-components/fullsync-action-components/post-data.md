---
layout: page
title: Post Data
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/fullsync-action-components/post-data/
metadesc: Defines a  Post Data  action component.   This component helps writing (post) data to a FullSync database. You can add  Variable  components to this a
ObjGroup: FullSync Actions
ObjCatName: fullsync-action-components
ObjName: FullSyncPostAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/fspostaction_32x32.png
topnav: topnavobj
---
##### Defines a <i>Post Data</i> action component. <br/>

 This component helps writing (post) data to a FullSync database.<br/>
You can add <i>Variable</i> components to this action.<br/>
<br/>
Each <i>Variable</i>'s name will be used as a jSON key with the variable value associated.<br/>
Also, if used in a form <code>submit</code> <i>Event</i>, all form inputs values will be automatically posted as key/value pairs, the key being the form control name and the value the current value of the input field.<br/>
<br/>
You can use the <i>root key</i> property to place the posted data in a wrapper object.<br/>
For more information : <a href='https://www.convertigo.com/documentation/latest/reference-manual/convertigo-mbaas-server/convertigo-full-sync-architecture/#interacting-locally-on-the-mobile-with-the-data'>interacting-locally-with-the-data/</a>. <br/>
<br/>
 If you want to disable loading controller, you can set property <i>disable loading controller</i> to true.

Name | Description 
--- | ---
Database | Defines the target FullSync Data base to post data to.
Disable loading controller | Defines if we want to disable loading controller showing
Group | The group name or groups this document will belong to. A given document can be seen and modified by any user belonging to the group or the groups defined here. This property can be a single group (give the group name as a string) or a list of groups. In this case, use a jSON object containing one key per group this document will belong to.
Policy | The write policy for this post. can be none (If the ID provided is already present, the post will fail), override (Data for this ID will override any existing object with the same ID in the database), merge (Data with the ID will be merged key by key with the data object already present in the database).
Root Key | The key used to 'Wrap' all posted key/ value pairs in an object. The key can be simple or composed of a path to the target object, ex : my.super.structure.myObject
Unique ID | The unique ID for this post.<br/>Posted data can be retrieved later on with a <i>Get Data</i> action, providing the same ID, or using a <i>Query View</i> action providing a valid key for the view queried.<br/>Data will be automatically replicated to Convertigo server if a <i>Sync Data</i> action has been previously executed in <code>continuous</code> mode.<br/><span class='orangetwinsoft'><u>Note:</u></span> If ID is not set, the system will compute automatically an UUID as unique ID for this post.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.

