---
layout: page
title: Style of blocks
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/presentation/style-of-blocks/
metadesc: Defines a  style  attribute on blocks displayed in HTML presentation.    The  Style of blocks  extraction rule is used to change the presentation styl
ObjGroup: Legacy
ObjCatName: presentation
ObjName: Style of blocks
ObjClass: com.twinsoft.convertigo.beans.common.Style
ObjIcon: /images/beans/common/images/style_color_32x32.png
topnav: topnavobj
---
##### Defines a `style` attribute on blocks displayed in HTML presentation.

The *Style of blocks* extraction rule is used to change the presentation style of webized screen elements. It adds a `style` attribute to blocks matching its selection parameters. The value of this attribute is a string in CSS format either:

- built by Convertigo using the different properties of the rule,
- or directly defined in the **Free style** property by Convertigo programmer.

With appropriate XSL templates, this attribute is used to change the style of the displayed blocks.

**Note:**

- The *Style of blocks* rule is used on `static` (i.e. non editable) blocks.
- Only the `style` attribute is added to extracted XML elements.
- Since this rule does not create a new block type, it does not involve any specific XSL stylesheet. However, the `static` XSL template does use the `style` attribute.
- There is no need for the Convertigo developer to know CSS syntax to use this extraction rule (unless he/she wants to use the **Free Style** parameter).


Property | Type | Category | Description
--- | --- | --- | ---
Background color | int | configuration | Defines the background color of the block.<br/>The color is chosen into a list of colors.
Bold | boolean | configuration | Defines whether the font is `bold` or not.
Border | boolean | configuration | Defines whether the element has a border or not.
Border color | int | configuration | Defines the element border color.<br/>The color is chosen into a list of colors.
Border width | String | configuration | Defines the border width (in pixels).
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Font color | int | configuration | Defines the font color.<br/>The color is chosen into a list of colors.
Font family | int | configuration | Defines the font family.<br/>The font family is chosen into a list of fonts.
Font size | String | configuration | Defines the font size (`pt` for point, `px` for pixel).
Free style | String | configuration | CSS formatted style, takes place of other styles defined here.<br/>If used, this parameter overrides all other parameters. The Convertigo developer can input a string to be used as value for the `style` XML attribute. In order to be compatible with Convertigo default XSL templates, this string must be in proper CSS syntax.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Italic | boolean | configuration | Defines whether the font is `italic` or not.
Underlined | boolean | configuration | Defines whether the font is `underlined` or not.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
