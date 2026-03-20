---
layout: page
title: Style of blocks
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/presentation/style-of-blocks/
metadesc: Defines a <span class="computer">style  attribute on blocks displayed in HTML presentation.   The  Style of blocks  extraction rule is used to change 
ObjGroup: Legacy
ObjCatName: presentation
ObjName: Style of blocks
ObjClass: com.twinsoft.convertigo.beans.common.Style
ObjIcon: /images/beans/common/images/style_color_32x32.png
topnav: topnavobj
---
##### Defines a <span class="computer">style</span> attribute on blocks displayed in HTML presentation. 

The <i>Style of blocks</i> extraction rule is used to change the presentation style of webized screen elements. It adds a <span class="computer">style</span> attribute to blocks matching its selection parameters. The value of this attribute is a string in CSS format either: <br/><br/>• built by Convertigo using the different properties of the rule, <br/>• or directly defined in the <b>Free style</b> property by Convertigo programmer. <br/><br/>With appropriate XSL templates, this attribute is used to change the style of the displayed blocks.<br/><span class="orangetwinsoft">Notes:</span> <br/><br/>• The <i>Style of blocks</i> rule is used on <span class="computer">static</span> (i.e. non editable) blocks.<br/>• Only the <span class="computer">style</span> attribute is added to extracted XML elements.<br/>• Since this rule does not create a new block type, it does not involve any specific XSL stylesheet. However, the <span class="computer">static</span> XSL template does use the <span class="computer">style</span> attribute. <br/>• There is no need for the Convertigo developer to know CSS syntax to use this extraction rule (unless he/she wants to use the <b>Free Style</b> parameter).<br/>

Property | Type | Category | Description
--- | --- | --- | ---
Background color | int | configuration | Defines the background color of the block.<br/>The color is chosen into a list of colors.
Bold | boolean | configuration | Defines whether the font is <span class="computer">bold</span> or not.
Border | boolean | configuration | Defines whether the element has a border or not.
Border color | int | configuration | Defines the element border color.<br/>The color is chosen into a list of colors.
Border width | String | configuration | Defines the border width (in pixels).
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Font color | int | configuration | Defines the font color.<br/>The color is chosen into a list of colors.
Font family | int | configuration | Defines the font family.<br/>The font family is chosen into a list of fonts.
Font size | String | configuration | Defines the font size  (<span class="computer">pt</span> for point, <span class="computer">px</span> for pixel).
Free style | String | configuration | CSS formatted style, takes place of other styles defined here.<br/>If used, this parameter overrides all other parameters. The Convertigo developer can input a string to be used as value for the <span class="computer">style</span> XML attribute. In order to be compatible with Convertigo default XSL templates, this string must be in proper CSS syntax.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/><br/>If set to <span class="computer">true</span>, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Italic | boolean | configuration | Defines whether the font is <span class="computer">italic</span> or not.
Underlined | boolean | configuration | Defines whether the font is <span class="computer">underlined</span> or not.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/>Presentation attributes to configure are :<br/><br/>• <b>Color</b>: <span class="computer">Foreground</span> color, <span class="computer">Background</span> color, to choose in a list of predefined colors or "not to take into account".<br/>• <b>Decoration</b>: <span class="computer">bold</span>, <span class="computer">reverse</span>, <span class="computer">underlined</span>, <span class="computer">blink</span>, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".<br/>
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule. <br/>The screen area is defined through four coordinates: <br/><br/>• x (area left corner), <br/>• y (area upper corner), <br/>• w (area width), <br/>• h (area height). <br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0). <br/><span class="computer">-1</span> represents an undefined value: <span class="computer">(x=-1, y=-1, w=-1, h=-1)</span> is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to: <br/><br/>• <span class="computer">static</span>, the rule applies to blocks of <span class="computer">static</span> type only. <br/>• <span class="computer">static &#124; field</span>, the rule applies to blocks of <span class="computer">static</span> or <span class="computer">field</span> type only. <br/>• <span class="computer">[^field]</span>, the rule applies to all but <span class="computer">field</span> type blocks.<br/><br/><span class="orangetwinsoft">Notes:</span><br/><br/>• For more information about regular expression patterns, see the following page: <span class="computer">http://www.regular-expressions.info/reference.html</span>. <br/>• To test regular expressions, you can use the regular expression tester at the following URL: <span class="computer">http://www.regular-expressions.info/javascriptexample.html</span>.<br/>
