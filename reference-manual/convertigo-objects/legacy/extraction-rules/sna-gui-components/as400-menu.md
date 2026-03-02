---
layout: page
title: AS400 menu
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/sna-gui-components/as400-menu/
metadesc: Defines an  AS/400  like menu.    The  AS400 menu  extraction rule handles  AS/400  and other IBM mainframe application menus, such as  5250  or  3270
ObjGroup: Legacy
ObjCatName: sna-gui-components
ObjName: AS400 menu
ObjClass: com.twinsoft.convertigo.beans.sna.Menu
ObjIcon: /images/beans/sna/images/menu_color_32x32.png
topnav: topnavobj
---
##### Defines an `AS/400` like menu.

The *AS400 menu* extraction rule handles `AS/400` and other IBM mainframe application menus, such as `5250` or `3270` screen menus. In such applications, menus have all a standard format which the *AS400 menu* extraction rule automatically manages.

The rule detects in the green screen patterns such as the following:

`<number><separator> <menu item label>`The `number` can be any number. The `separator` is represented by one character only; it is set in the **Separators** property. The `menu item label` can be any string of characters.

The *AS400 menu* extraction rule creates an XML element of `snamenu` type. This element contains the menu itself, with each line of the menu being tagged as a `menuitem` element, of `menuitem` type.

Each `menuitem` element includes the following attributes added by the extraction rule:

- `id`: Number identified in the original text detected as pattern (i.e. number of the menu item),
- `literal`: Text content of the menu item (i.e. its label).

**Note:** XML elements of the `snamenu` type are handled by the `SNA menu` XSL template described in the `snamenu.xsl` file. To change the way SNA menus are displayed in the HTML page, edit this file.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Separators | String | configuration | Defines a concatenated list of separator characters that can be used between a menu item number and its label.<br/>This property lists separator characters used to separate each menu item number from its label.<br/><br/>For example, "`.`" is a separator that matches the `1. User task` menu item.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
