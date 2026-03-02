---
layout: page
title: Panel
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/common-gui-components/panel/
metadesc: Handles screen panels.    The  Panel  extraction rule allows the grouping of a set of blocks within a panel. It creates a  panel  type element surroun
ObjGroup: Legacy
ObjCatName: common-gui-components
ObjName: Panel
ObjClass: com.twinsoft.convertigo.beans.common.Panel
ObjIcon: /images/beans/common/images/panel_color_32x32.png
topnav: topnavobj
---
##### Handles screen panels.

The *Panel* extraction rule allows the grouping of a set of blocks within a panel. It creates a `panel` type element surrounding these blocks.

The extraction rule is based on remarkable character patterns in order to determine:

- the panel position,
- blocks being a part of it.

To determine the panel position, the rule can also use screen attributes. This is mostly the case for 5250 applications, where windows can be displayed with no border characters, but with colored borders.

**Note:** XML elements of the `panel` type are handled by the `panel` XSL template described in the `panel.xsl` file. To change the way panels are displayed in the HTML page, edit this file.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Minimum number of sides | int | configuration | Defines the minimum number of sides for a panel to be detected.<br/>By default, the rule needs 4 sides for a panel to be detected. Sometimes, applications display text in borders (Window description for example). Borders might therefore not match exactly the rule parameters, so you can reduce the number of sides and still have the panel detected.
Panel bottom | String | configuration | Defines the bottom character (zone 7, see *"Panel zone description"* table below).
Panel left | String | configuration | Defines the left character (zone 4, see *"Panel zone description"* table below).
Panel lower left | String | configuration | Defines the lower left character (zone 6, see *"Panel zone description"* table below).
Panel lower right | String | configuration | Defines the lower right character (zone 8, see *"Panel zone description"* table below).
Panel right | String | configuration | Defines the right character (zone 5, see *"Panel zone description"* table below).
Panel top | String | configuration | Defines the top character (zone 2, see *"Panel zone description"* table below).
Panel upper left | String | configuration | Defines the upper left character (zone 1, see *"Panel zone description"* table below).
Panel upper right | String | configuration | Defines the upper right character (zone 3, see *"Panel zone description"* table below).
Remove blocks in borders | boolean | configuration | If checked, all text blocks found in the panel border are deleted.<br/>In some applications, windows are detected through their colored border, but there can be also text in borders. As a result, the webized screen is of poor quality. Set this parameter to `true` to remove text in borders.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Title attribute  | int | selection | Defines the attributes of the title of the panel.<br/>In some applications, a panel can contain a text in the border that corresponds to the window title. This property allows to configure the presentation attributes of this title to differentiate it from the rest of the panel border.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
