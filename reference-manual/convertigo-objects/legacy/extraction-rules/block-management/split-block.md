---
layout: page
title: Split block
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/block-management/split-block/
metadesc: Splits blocks depending on defined delimiter characters.    The  Split block  extraction rule allows splitting a block into parts, breaking blocks inc
ObjGroup: Legacy
ObjCatName: block-management
ObjName: Split block
ObjClass: com.twinsoft.convertigo.beans.common.SplitBlock
ObjIcon: /images/beans/common/images/splitblock_color_32x32.png
topnav: topnavobj
---
##### Splits blocks depending on defined delimiter characters.

The *Split block* extraction rule allows splitting a block into parts, breaking blocks including a specified delimiter character into smaller ones. This can be useful when other rules need separate blocks to be properly processed.

**Note:**

- The *Split block* extraction rule can match any text on a green screen.
- This rule does not add or create new attributes. Resulting blocks inherit most of the attributes from the original splitted block. Only position attributes (i.e. column and line) are updated to match actual position on the screen.
- Since this rule does not create a new block type, it does not involve any specific XSL stylesheet.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Delimiters | String | configuration | Defines a concatenated list of delimiter characters.<br/>Caution: Default value for this parameter is a blank space (not easily visible). When setting a new *Split block* rule, make sure to delete this default space before adding new delimiter character(s).
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Keep delimiters | boolean | configuration | Defines if delimiters should remain included in generated sub-blocks.<br/>If set to `true`, delimiter characters are kept upon splitting, remaining as new blocks of size 1. Otherwise, delimiter characters are discarded.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
