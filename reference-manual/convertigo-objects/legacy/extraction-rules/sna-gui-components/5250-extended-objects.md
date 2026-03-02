---
layout: page
title: 5250 extended objects
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/sna-gui-components/5250-extended-objects/
metadesc: Automatic  5250  extended objects extraction.    This rule automatically detects  Extended TN5250 NPTUI  objects in mainframe legacy screens.  Unlike 
ObjGroup: Legacy
ObjCatName: sna-gui-components
ObjName: 5250 extended objects
ObjClass: com.twinsoft.convertigo.beans.sna.Nptui
ObjIcon: /images/beans/sna/images/nptui_color_32x32.png
topnav: topnavobj
---
##### Automatic `5250` extended objects extraction.

This rule automatically detects `Extended TN5250 NPTUI` objects in mainframe legacy screens.

Unlike standard extraction rules, the *5250 extended objects* rule doens't visually identify objects in displayed screen. In fact, extended objects are well-defined structures and their presence in a screen is embedded inside the `TN5250` stream. One instance of the rule is then enough to correctly detect all NPTUI objects in the screen class.

There are various extended, or NPTUI, elements available in such an application. Usual NPTUI objects are the following:

- **Radio buttons**: they are extracted as XML elements of `choice` type, which are handled by the `choice` XSL template described in the `choice.xsl` file. To change the way choices are displayed in the HTML page, edit this file.
- **Checkboxes**: they are extracted as XML elements of the `checkbox` type, which are handled by the `checkbox` XSL template described in the `checkbox.xsl` file. To change the way checkboxes are displayed in the HTML page, edit this file.
- **Windows**: they are extracted as XML elements of the `panel` type, which are handled by the `panel` XSL template described in the `panel.xsl` file. To change the way panels are displayed in the HTML page, edit this file.
- **Continuous fields**: they are extracted as XML elements of `filed` type, which are handled by the `field` XSL template described in the `field.xsl` file. To change the way fields are displayed in the HTML page, edit this file.
- **Buttons**: they are extracted as XML elements of `keyword` type, which are handled by the `keyword` XSL template described in the `keyword.xsl` file. To change the way keywords are displayed in the HTML page, edit this file.
- **Sliders**: they are extracted as XML elements of `slider` type, which are handled by the `slider` XSL template described in the `slider.xsl` file. To change the way sliders are displayed in the HTML page, edit this file.


Property | Type | Category | Description
--- | --- | --- | ---
Button | boolean | configuration | Activates the button extraction.<br/>If set to `true`, the buttons are extracted.
Checkbox | boolean | configuration | Activates the checkbox extraction.<br/>If set to `true`, the checkboxes are extracted.
Choice | boolean | configuration | Activates the choice field extraction.<br/>If set to `true`, the choice fields are extracted.
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Menu | boolean | configuration | Activates the menu extraction.<br/>If set to `true`, the menus are extracted.
Radio | boolean | configuration | Activates the radio button extraction.<br/>If set to `true`, the radio buttons are extracted.
Scrollbar | boolean | configuration | Activates the scrolling bar extraction.<br/>If set to `true`, the scrolling bars are extracted.
Window | boolean | configuration | Activates the window extraction.<br/>If set to `true`, the windows are extracted.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
