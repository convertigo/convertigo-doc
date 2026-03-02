---
layout: page
title: Subfile
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/sna-gui-components/subfile/
metadesc: Extracts structured data from an  AS/400  like subfile.    The  Subfile  extraction rule extracts table data from screens for AS/400 specific subfile 
ObjGroup: Legacy
ObjCatName: sna-gui-components
ObjName: Subfile
ObjClass: com.twinsoft.convertigo.beans.sna.Subfile
ObjIcon: /images/beans/common/images/table_color_32x32.png
topnav: topnavobj
---
##### Extracts structured data from an `AS/400` like subfile.

The *Subfile* extraction rule extracts table data from screens for AS/400 specific subfile format. It is similar to the *Table* extraction rule, but runs automatically with no need to manually configure columns.

Subfiles are detected only if required parameters are properly set. A number of conditions must also be met for the rule to apply:

- End of the subfile zone must be indicated by an end marker string (End, +, More..., etc.),
- Presentation attributes of the end marker must be different than those of the subfile content (usually white on black background),
- Presentation attributes of data must be different than those of the end marker or titles (data usually displayed in green on black background),
- Subfile must start with a title line,
- Presentation attributes of titles must be different than those of the subfile content (usually white on black background, sometimes underlined),
- Each title must be separated from the next by a minimum of 2 spaces (if the title line is made of one large field only) OR each title is in a distinct AS400 DSPV map field,
- Each title is left-aligned in its column,
- Actions (if any) are to be listed above the subfile,
- Presentation attributes of actions (if any) must be different than those of titles (usually blue on black background),
- Each action (if any) must respect the following pattern: `<action code><separator><action label>`. By default, `separator` is represented by the "=" sign. For example: `E=Edit`, `A=Add`, etc.
- For actions to be detected, the first column of each non-empty line in the subfile must contain an input field.

**Note:** Actions (last four points) are optional for correct subfile detection.As a conclusion, the subfile structure always follows the same pattern:

`<Actions>` (optionnal)`<Title line>``<Subfile content>``<End marker>`This order cannot be changed, and no other data can be inserted in the 5250 screen zone of the subfile.


Property | Type | Category | Description
--- | --- | --- | ---
Actions line attributes  | int | configuration | Defines the attributes of the actions of the subfile (if existing).<br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
End marker string attributes | int | configuration | Defines the attributes of the end marker string.<br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Start detection from line | int | configuration | Detects subfile from specified line.<br/>The end marker string is detected by default anywhere on the screen. You can specify the line where this detection should start. Useful to ignore subfile markers that could be present in the subfile data.
Subfile end marker strings | String | configuration | Defines the list of strings that can be used to detect the end of the subfile.<br/>This string must be located according to the CUA spec (below last subfile row, to the far right) and be provided as a comma separated list of marker strings. Make sure that all of them are set, including in any language. For example: `A suivre...,Fin,+,Bottom,End,More...`
Title row attributes | int | configuration | Defines the attributes of the title row of the subfile.<br/>Make sure that attributes are described so that all title lines match. For example, the **underline** parameter of this property can be set to "`don't care`" to match the normal and underline titles.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
