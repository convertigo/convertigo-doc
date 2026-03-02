---
layout: page
title: Record
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/common-gui-components/record/
metadesc: Extract data from screen as a record (set of structured data).    The  Record  extraction rule extracts legacy data as a structured set of complex XML
ObjGroup: Legacy
ObjCatName: common-gui-components
ObjName: Record
ObjClass: com.twinsoft.convertigo.beans.common.Record
ObjIcon: /images/beans/common/images/record_color_32x32.png
topnav: topnavobj
---
##### Extract data from screen as a record (set of structured data).

The *Record* extraction rule extracts legacy data as a structured set of complex XML elements sharing similarities. For example, a record list can be a list of names and addresses.

A record is defined through a starting and an ending block, each one characterized by a block type and an XML tag name. In short, a *Record* rule can be defined as the definition of a pair of start and end tags indicating where the record starts and ends.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
End separator XML tag name | String | configuration | Defines the XML tag name of the separator block ending the record.
End separator type | String | configuration | Defines the type of the separator block ending the record.<br/>The end separator default type is `separator`. This parameter can take either default (`field`, `static`, etc.) or user-defined types.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Multiple records | boolean | configuration | Defines whether the record must be defined on a "per page" basis.<br/>If set to `true`, one record is generated for each screen.
Start separator XML tag name | String | configuration | Defines the XML tag name of the separator block starting the record.
Start separator type | String | configuration | Defines type of the separator block starting the record.<br/>The start separator default type is `separator`. This parameter can take either default (`field`, `static`, etc.) or user-defined types.
XML tag name | String | configuration | Defines the tag name of the XML record generated in output XML after extraction.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
