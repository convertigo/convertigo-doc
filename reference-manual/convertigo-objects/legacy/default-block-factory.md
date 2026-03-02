---
layout: page
title: Default block factory
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/default-block-factory/
metadesc: The block factory is the process that splits legacy screens into elementary blocks.    For extraction purpose, legacy application screens are broken i
ObjGroup: Legacy
ObjCatName: 
ObjName: Default block factory
ObjClass: com.twinsoft.convertigo.beans.common.DefaultBlockFactory
ObjIcon: /images/beans/common/images/defaultblockfactory_color_32x32.png
topnav: topnavobj
---
##### The block factory is the process that splits legacy screens into elementary blocks.

For extraction purpose, legacy application screens are broken into elementary entities called `blocks`. The process in charge of generating blocks is called *Default block factory*.

The block generation process can be divided into three major steps:

- The block factory analyses screen lines.
- For each line, the block factory extracts character strings having same attributes (text color, background color, bold, blinking...).
- For each character string having same attributes, the block factory breaks sentences into single words by performing a separation on blank spaces. For example, the sentence `the_nice_hat` (where "_" represents a blank space) is divided into five blocks: `the`, `_`, `nice`, `_` and `hat`. Consecutive blank spaces are grouped into one single block.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
