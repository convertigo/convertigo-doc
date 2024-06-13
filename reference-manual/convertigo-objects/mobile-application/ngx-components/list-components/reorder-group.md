---
layout: page
title: Reorder Group
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/list-components/reorder-group/
metadesc: ion-reorder-group  Defines a  Reorder Group  component. The  Reorder Group  is a container for items using the  Reorder  component that is used to dra
ObjGroup: Lists
ObjCatName: list-components
ObjName: ReorderGroup
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/reordergroup_32x32.png
topnav: topnavobj
---
ion-reorder-group<br/>

##### Defines a <i>Reorder Group</i> component.<br/>
The <i>Reorder Group</i> is a container for items using the <i>Reorder</i> component that is used to drag items within the group.<br/>
Once the user drags an item and drops it in a new position, the ionItemReorder event is dispatched. A handler for it should be implemented that calls the event.target.complete() method.<br/>
The detail property of the ionItemReorder event includes all of the relevant information about the reorder operation, including the 'from' and 'to' indexes.<br/>
 For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/reorder-group'>Reorder Group</a>.

Name | Description 
--- | ---
Disabled | If true the component will be disabled, preventing the the user from changing the value.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

