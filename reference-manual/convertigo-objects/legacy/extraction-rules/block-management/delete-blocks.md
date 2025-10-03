---
layout: page
title: Delete blocks
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/block-management/delete-blocks/
metadesc: Removes blocks from a legacy screen, based on presentation attributes or block position.    To simplify and speed up the process time of other rules, 
ObjGroup: Legacy
ObjCatName: block-management
ObjName: Delete blocks
ObjClass: com.twinsoft.convertigo.beans.common.RemoveBlocks
ObjIcon: /images/beans/common/images/removeblocks_color_32x32.png
topnav: topnavobj
---
##### Removes blocks from a legacy screen, based on presentation attributes or block position.

To simplify and speed up the process time of other rules, removing useless blocks can be an option. It limits the quantity of generated XML data and optimizes network traffic.

By default, the rule is created with the **Type** property set to `[^field]`, meaning that the rule does not apply to blocks of `field` type.

The *Delete blocks* extraction rule is also useful for cleaning up purposes when creating Data integration projects. Data to be kept are tagged using *XML Tagname* extraction rules, tables are tagged using a *Table* or *Subfile* extraction rule, and other resulting blocks are tagged as `block`. They can then be removed by configuring the **Tag name** property to `block`.

The *Delete blocks* extraction rule can also be used to remove portions of a screen not to be displayed (in webization projects).


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Content | String | configuration | Defines the regular expression matching the content of block(s) to be removed.<br/>Blocks which content corresponds to this regular expression are removed. For example, if set to `TEST`, all blocks containing "TEST" are removed.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Length | int | configuration | Defines the length of blocks (without trailing and ending spaces) to be removed.<br/>`-1` means an unspecified length (the length criterion is not used), `0` means that all blocks containing only spaces are deleted.
Tag name | String | configuration | Defines the tag name of blocks to be removed.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
