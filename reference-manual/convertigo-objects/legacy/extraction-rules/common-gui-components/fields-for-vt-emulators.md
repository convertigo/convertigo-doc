---
layout: page
title: Fields for VT emulators
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/common-gui-components/fields-for-vt-emulators/
metadesc: Finds and marks blocks as being of <span class="computer">field  type.   The  Fields for VT emulators  extraction rule applies to VT220 integration on
ObjGroup: Legacy
ObjCatName: common-gui-components
ObjName: Fields for VT emulators
ObjClass: com.twinsoft.convertigo.beans.common.FieldsVT
ObjIcon: /images/beans/common/images/fieldsvt_color_32x32.png
topnav: topnavobj
---
##### Finds and marks blocks as being of <span class="computer">field</span> type. 

The <i>Fields for VT emulators</i> extraction rule applies to VT220 integration only. It is used to recognize fields in VT emulator. <br/>In fact, unlike in IBM mainframes, VT screens including fields are not typed as fields. Field detection is based on display attributes (background color, foreground color, etc.). When matching blocks are found, they are added to the XML document as <span class="computer">field</span> type XML elements.<br/><span class="orangetwinsoft">Note:</span>XML elements of the <span class="computer">field</span> type are handled by the <span class="computer">field</span> XSL template described in the <span class="computer">field.xsl</span> file. To change the way fields are displayed in the HTML page, edit this file.

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/><br/>If set to <span class="computer">true</span>, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/>Presentation attributes to configure are :<br/><br/>• <b>Color</b>: <span class="computer">Foreground</span> color, <span class="computer">Background</span> color, to choose in a list of predefined colors or "not to take into account".<br/>• <b>Decoration</b>: <span class="computer">bold</span>, <span class="computer">reverse</span>, <span class="computer">underlined</span>, <span class="computer">blink</span>, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".<br/>
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule. <br/>The screen area is defined through four coordinates: <br/><br/>• x (area left corner), <br/>• y (area upper corner), <br/>• w (area width), <br/>• h (area height). <br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0). <br/><span class="computer">-1</span> represents an undefined value: <span class="computer">(x=-1, y=-1, w=-1, h=-1)</span> is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to: <br/><br/>• <span class="computer">static</span>, the rule applies to blocks of <span class="computer">static</span> type only. <br/>• <span class="computer">static &#124; field</span>, the rule applies to blocks of <span class="computer">static</span> or <span class="computer">field</span> type only. <br/>• <span class="computer">[^field]</span>, the rule applies to all but <span class="computer">field</span> type blocks.<br/><br/><span class="orangetwinsoft">Notes:</span><br/><br/>• For more information about regular expression patterns, see the following page: <span class="computer">http://www.regular-expressions.info/reference.html</span>. <br/>• To test regular expressions, you can use the regular expression tester at the following URL: <span class="computer">http://www.regular-expressions.info/javascriptexample.html</span>.<br/>
