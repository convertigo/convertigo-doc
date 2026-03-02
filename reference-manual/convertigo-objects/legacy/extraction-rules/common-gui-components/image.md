---
layout: page
title: Image
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/common-gui-components/image/
metadesc: Adds an image on a legacy screen.    Unlike other extraction rules, the  Image  extraction rule is not designed to extract data from the green screen,
ObjGroup: Legacy
ObjCatName: common-gui-components
ObjName: Image
ObjClass: com.twinsoft.convertigo.beans.common.Image
ObjIcon: /images/beans/common/images/image_color_32x32.png
topnav: topnavobj
---
##### Adds an image on a legacy screen.

Unlike other extraction rules, the *Image* extraction rule is not designed to extract data from the green screen, but to add an image on the detected screen.

This rule adds an `image` type XML element to the XML document. The `image` XML element is then processed by XSL transformation to display the image in the HTML page.

**Note:** XML elements of the `image` type are handled by the `image` XSL template described in the `image.xsl` file. To change the way images are displayed in the HTML page, edit this file.


Property | Type | Category | Description
--- | --- | --- | ---
Action | String | configuration | Defines the action triggered when clicking on the image.<br/>Action can be:<br/><br/>- a key action as `KEY_PF1`,<br/>- the name of a transaction if the **Transaction** property is set to `true`.
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Image label | String | configuration | Defines the alternative text displayed when the image is missing.
Image layout | XMLRectangle | configuration | Defines the screen zone where the image is to be displayed.<br/>This property allows to position the added image element to a specific area of the screen. The created block will be created with the specified screen zone values as positioning attributes.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0). `-1` represents an undefined value.<br/><br/>These positioning attributes have to be handled by the XSL template rule that displays the image.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Keep image size | boolean | configuration | Defines whether the image must be kept to its original size or forced into the image layout.<br/>If set to `false`, the image is sized according to the image layout.
Mashup event | String | configuration | Defines mashup events dispatched on click.<br/>Mashup events can be of two types:<br/><br/>- Calling directly a transaction or a sequence in Convertigo,<br/>- Launching an event in Mashup Composer.<br/><br/>**Mashup event** property allows to define a combination of one direct call to a Convertigo transaction or sequence and/or one launch of Mashup Composer event. Filling this property adds a `mashup_event` attribute to the block, containing the previous combination in a JSON syntax of one of the following formats:<br/><br/>- `{"requestable":{"__transaction":"<transaction name>","__connector":"<connector name>"}}` for a transaction call only,<br/>- `{"requestable":{"__sequence":"<sequence name>"}}` for a sequence call only,<br/>- `{"event":"<event name>"}` for a mashup event only,<br/>- `{"requestable":{"__transaction":"<transaction name>","__connector":"<connector name>"},"event":"<event name>"}` for a transaction call and a mashup event,<br/>- `{"requestable":{"__sequence":"<sequence name>"},"event":"<event name>"}` for a sequence call and a mashup event.<br/><br/>This `mashup_event` attribute and its content have to be handled by the XSL file applying at the end of the transaction to generate a real Convertigo call and/or Mashup Composer event on click on the displayed object.
Transaction | boolean | configuration | Defines whether a transaction must be launched when clicking on the image.<br/>If set to `true`, defines the launching of the transaction set in the **Action** property on image click, by adding a `dotransaction` attribute to the `image` XML element.
URL | String | configuration | Defines the image URL.<br/>The URL can be defined either as an absolute or as a relative (to the project directory) URL.
Z-order | String | configuration | Defines the image `z-order`.<br/>Filling this property will define a `z-order` attribute to the added image. If left empty, no attribute is added to the `image` type XML element.<br/><br/>**Note:** This attribute has to be handled in the webization framework to be taken into account. The `image` XSL template doesn't handle this property by default.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
