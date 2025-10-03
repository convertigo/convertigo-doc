---
layout: page
title: Merge blocks
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/block-management/merge-blocks/
metadesc: Merges multiple blocks into one or several bigger blocks.    The  Merge blocks  extraction rule    looks for series of blocks matching the following p
ObjGroup: Legacy
ObjCatName: block-management
ObjName: Merge blocks
ObjClass: com.twinsoft.convertigo.beans.common.MergeBlocks
ObjIcon: /images/beans/common/images/mergeblocks_color_32x32.png
topnav: topnavobj
---
##### Merges multiple blocks into one or several bigger blocks.

The *Merge blocks* extraction rule:

- looks for series of blocks matching the following pattern: `[any block #1] [separator string block] [any block #2]`
- merges their content in the first block : `['block #1 content' 'separator string' 'block #2 content']`

Separator strings are optional. If not specified, the content of blocks is merged whatsoever, provided that they match rule selection parameters (**Screen zone**, **Presentation attributes**).

By default, the *Merge blocks* extraction rule works on separate lines, meaning that two blocks must be on the same line to be merged. However, the rule can be set so that blocks are merged even if they belong to separate lines. In this case, a line break string can be set.

When two blocks from different lines are merged, this line break string is inserted in their content: `[block nb 1] [separator string block] [block nb 2]`

Once merged, the resulting block is as follows:`['block nb 1 content' 'separator string' 'line break string' 'block nb 2 content']`.

**Note:**

- This rule does not add any specific XML attribute. However, the resulting block inherits the attributes (column, line, colors...) from the first merged block of the row.
- Since this rule does not create a new block type, it does not involve any specific XSL stylesheet.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Line separator | String | configuration | Defines the character to add to distinct lines.<br/>If **Multiline** property is set to `true`, and if two blocks belonging to separate lines are merged, then the string value of this property is inserted in-between.
Multiline | boolean | configuration | Defines whether the merge should be multiline.<br/>Enables to merge blocks located on different lines. If set to `false`, one block will result on each line; if set to `true`, one block will result from all blocks from every lines.
Separator | String | configuration | Defines a separator string, case independent (optional).<br/>Merges only blocks separated by a third block, the content of which is equal to the value of the separator string.<br/><br/>If this property is not filled, the rule merges matching blocks that are not separated by any blocks.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
