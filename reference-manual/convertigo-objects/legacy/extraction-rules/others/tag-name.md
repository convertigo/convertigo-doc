---
layout: page
title: Tag name
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/others/tag-name/
metadesc: Names the selected block(s) with a tag name.    The  Tag name  extraction rule is mostly used in data integration projects. By default, all blocks are
ObjGroup: Legacy
ObjCatName: others
ObjName: Tag name
ObjClass: com.twinsoft.convertigo.beans.common.TagName
ObjIcon: /images/beans/common/images/tagname_color_32x32.png
topnav: topnavobj
---
##### Names the selected block(s) with a tag name.

The *Tag name* extraction rule is mostly used in data integration projects. By default, all blocks are given the `block` tag name.

**Note:**

- The *Tag name* extraction rule does not create any XML attribute.
- Since this rule does not create a new block type, it does not involve any specific XSL stylesheet.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Field history | boolean | configuration | Saves the field values that the user has entered.<br/>Applies to `field` type elements (input fields) only. If set to `true`, any data entered in an input field will be saved in a local history so that when the user inputs data, he can search it and choose from saved data.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Label policy | int | configuration | Defines the labeling policy.<br/>Can take one of the following values:<br/><br/>- `Explicit`: the tag is named after the **XML tag name** property value<br/>- `From previous block`: the tag is named after the previous block content. Can be useful in form-like screen to automatically tag multiple data fields with the label preceding the field. For example:<br/><br/>`    Label-01 DATA-01``    Label-02 DATA-02`will be automatically tagged as:<br/><br/>`    <Label-01>DATA-01<Label-01>``    <Label-02>DATA-02<Label-02>`<br/>- `From next block`: the tag will be set from the next block content
Mashup event | String | configuration | Defines mashup events dispatched on click.<br/>Mashup events can be of two types:<br/><br/>- Calling directly a transaction or a sequence in Convertigo,<br/>- Launching an event in Mashup Composer.<br/><br/>**Mashup event** property allows to define a combination of one direct call to a Convertigo transaction or sequence and/or one launch of Mashup Composer event. Filling this property adds a `mashup_event` attribute to the block, containing the previous combination in a JSON syntax of one of the following formats:<br/><br/>- `{"requestable":{"__transaction":"<transaction name>","__connector":"<connector name>"}}` for a transaction call only,<br/>- `{"requestable":{"__sequence":"<sequence name>"}}` for a sequence call only,<br/>- `{"event":"<event name>"}` for a mashup event only,<br/>- `{"requestable":{"__transaction":"<transaction name>","__connector":"<connector name>"},"event":"<event name>"}` for a transaction call and a mashup event,<br/>- `{"requestable":{"__sequence":"<sequence name>"},"event":"<event name>"}` for a sequence call and a mashup event.<br/><br/>This `mashup_event` attribute and its content have to be handled by the XSL file applying at the end of the transaction to generate a real Convertigo call and/or Mashup Composer event on click on the displayed object.
XML tag name | String | configuration | Defines the new XML tag name.<br/>If this property is empty, the tag name is automatically found according to the label policy.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
