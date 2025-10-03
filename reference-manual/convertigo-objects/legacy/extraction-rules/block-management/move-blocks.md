---
layout: page
title: Move blocks
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/block-management/move-blocks/
metadesc: Moves blocks in a legacy screen.    The  Move blocks  extraction rule moves blocks extracted from a legacy screen to a different target position in th
ObjGroup: Legacy
ObjCatName: block-management
ObjName: Move blocks
ObjClass: com.twinsoft.convertigo.beans.common.MoveBlocks
ObjIcon: /images/beans/common/images/moveblocks_color_32x32.png
topnav: topnavobj
---
##### Moves blocks in a legacy screen.

The *Move blocks* extraction rule moves blocks extracted from a legacy screen to a different target position in the screen (defined through the **Moving layout** property).


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Moving layout | XMLRectangle | configuration | Defines the target screen zone for moved blocks.<br/>This property allows to position the moved blocks to a specific area of the screen. The moved blocks will be updated with the specified screen zone values as positioning attributes.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0). `-1` represents an undefined value.<br/><br/>These positioning attributes have to be handled by the XSL template rule that displays the blocks.
Relative move | boolean | configuration | Defines whether the move is relative to the original blocks position or not relative.<br/>If set to `true`, blocks are moved from their original position to a number of columns and a number of lines from it. If set to `false`, blocks are moved at the exact defined position.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
