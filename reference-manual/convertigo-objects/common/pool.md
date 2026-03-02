---
layout: page
title: Pool
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/common/pool/
metadesc: Creates a pool for a given Javelin connector.    A  Pool  is a set of preloaded Convertigo contexts on a defined connector.  When the Convertigo engin
ObjGroup: Common
ObjCatName: 
ObjName: Pool
ObjClass: com.twinsoft.convertigo.beans.core.Pool
ObjIcon: /images/beans/core/images/pool_color_32x32.png
topnav: topnavobj
---
##### Creates a pool for a given Javelin connector.

A *Pool* is a set of preloaded Convertigo contexts on a defined connector.

When the Convertigo engine starts, the pool's contexts are loaded, executing a **starting transaction** defined in the properties.

Thanks to the execution of the **starting transaction**, the pool's contexts are led to a steady state.

**Note:**

- The steady state can be defined as a particular screen class that has to be reached by the connector (*Javelin screen class*).
- Defining a pool is useful for performance optimization, in that it allows accessing to pre-established and advanced connections with the host.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Connection address | String | standard | Replaces the connection address (optional).<br/>If defined, this property overrides the connection address set as connector parameter for the loaded contexts.
Initial screen class | String | standard | Defines the steady state screen class.<br/>On connectors for which it applies (*Javelin connector*), this property allows to define the steady state screen class.<br/><br/>This initial screen class has several implications:<br/><br/>- it's the screen class that must be reached by the context thanks to the **starting transaction** execution,<br/>- the transactions that are executed thereafter on one of the pool's contexts must lead back to this screen class to let the context in steady state for a further use.<br/><br/>If you want to realize non-atomic calls, i.e. call several successive transactions on the same context without restoring the context's steady state between calls, it is possible to lock the context by setting the `context.lockPooledContext` property to `true`.<br/><br/>**Note:** be sure to reset the `context.lockPooledContext` property to `false` at the end of your non atomic calls, otherwise this locked context will remain unavailable.
Number of contexts | int | standard | Defines the size of the pool.<br/>This property defines the number of contexts to load for this pool.
Starting transaction | String | standard | Defines the transaction to be automatically executed when loading the Convertigo context.<br/>This transaction must lead the connector to a steady state (a particular screen class).
Starting transaction variables | XMLVector | standard | Defines the starting transaction variables.<br/>This property allows to define a list of variables that will be sent to the starting transaction executed on each context.<br/><br/>For each variable, you have to describe three properties:<br/><br/>- **Context number**: number between 1 and the size of the pool (defined in the the **Number of contexts** property). The variable will be sent with the associated value only for this context number. To define a variable for all loaded contexts, this property can take the following value: `*`.<br/>- **Parameter name**: name of the variable.<br/>- **Parameter value**:value of the variable.<br/><br/>**Note:** A new variable can be added to the list using the blue keyboard icon. The variables defined in the list can be ordered using the arrow up and arrow down buttons, or deleted using the red cross icon.
