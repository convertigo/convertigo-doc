---
layout: page
title: Field/Text
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/common-gui-components/field-text/
metadesc: Adds a field or text on the webized screen.    Unlike other extraction rules, the  Field/Text  extraction rule does not extract data from green screen
ObjGroup: Legacy
ObjCatName: common-gui-components
ObjName: Field/Text
ObjClass: com.twinsoft.convertigo.beans.common.Field
ObjIcon: /images/beans/common/images/field_color_32x32.png
topnav: topnavobj
---
##### Adds a field or text on the webized screen.

Unlike other extraction rules, the *Field/Text* extraction rule does not extract data from green screen, but adds text elements on screen.

This rule adds `field` or `static` type XML element to the XML document. These elements are then processed by XSL transformation to display a field or text label in the HTML page.

**Note:**

- XML elements of the `field` type are handled by the `field` XSL template described in the `field.xsl` file. To change the way fields are displayed in the HTML page, edit this file.
- XML elements of the `static` type are handled by the `static` XSL template described in the `static.xsl` file. To change the way texts are displayed in the HTML page, edit this file.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Field attributes | int | configuration | Defines the generated field/text presentation attributes.<br/>This property allows to configure the presentation attributes to set to the created text/field, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Field layout | XMLRectangle | configuration | Defines the screen zone where the field/text is to be displayed.<br/>This property allows to position the created text or field element to a specific area of the screen. The created block will be created with the specified screen zone values as positioning attributes.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0). `-1` represents an undefined value.<br/><br/>These positioning attributes have to be handled by the XSL template rule that displays the element.
Field name | String | configuration | Defines the field name.<br/>When data is submitted by the user through this field, it is sent to Convertigo as a variable named after this property. It can then be used in a transaction. Use the `__field_c<column>_l<line>` syntax to have Convertigo add data on screen at defined line and column.
Field type | String | configuration | Defines the field/text type.<br/>The element can be either of `field` or of `static` type.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Mashup event | String | configuration | Defines mashup events dispatched on click.<br/>Mashup events can be of two types:<br/><br/>- Calling directly a transaction or a sequence in Convertigo,<br/>- Launching an event in Mashup Composer.<br/><br/>**Mashup event** property allows to define a combination of one direct call to a Convertigo transaction or sequence and/or one launch of Mashup Composer event. Filling this property adds a `mashup_event` attribute to the block, containing the previous combination in a JSON syntax of one of the following formats:<br/><br/>- `{"requestable":{"__transaction":"<transaction name>","__connector":"<connector name>"}}` for a transaction call only,<br/>- `{"requestable":{"__sequence":"<sequence name>"}}` for a sequence call only,<br/>- `{"event":"<event name>"}` for a mashup event only,<br/>- `{"requestable":{"__transaction":"<transaction name>","__connector":"<connector name>"},"event":"<event name>"}` for a transaction call and a mashup event,<br/>- `{"requestable":{"__sequence":"<sequence name>"},"event":"<event name>"}` for a sequence call and a mashup event.<br/><br/>This `mashup_event` attribute and its content have to be handled by the XSL file applying at the end of the transaction to generate a real Convertigo call and/or Mashup Composer event on click on the displayed object.
Value | String | configuration | Defines the field or text value, depending on the element type.<br/>If the added element is of:<br/><br/>- `field` type: the created field is filled with the value.<br/>- `static` type: the value is added as static text on screen.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
