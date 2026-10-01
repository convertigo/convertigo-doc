---
layout: page
title: Date
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/common-gui-components/date/
metadesc: Handles fields of <span class="computer">date  type.   The  Date  extraction rule applies to Legacy Publishing only. It is intended to detect a field 
ObjGroup: Legacy
ObjCatName: common-gui-components
ObjName: Date
ObjClass: com.twinsoft.convertigo.beans.common.Date
ObjIcon: /images/beans/common/images/date_color_32x32.png
topnav: topnavobj
---
##### Handles fields of <span class="computer">date</span> type. 

The <i>Date</i> extraction rule applies to Legacy Publishing only. It is intended to detect a field as a date and to manage it as such. As a consequence, blocks containing a date are extracted as <span class="computer">date</span> blocks with relevant attributes, not as <span class="computer">field</span> blocks containing a date as a string.<br/><span class="orangetwinsoft">Note:</span> This rule adds a <span class="computer">date</span> type XML element to the XML document. It is associated with the <span class="computer">date</span> XSL template, described in the <span class="computer">date.xsl</span> file. On the webized page, a calendar pops-up when clicking on the date, to select the appropriate value.

Property | Type | Category | Description
--- | --- | --- | ---
Am/pm marker | boolean | configuration | Includes the <span class="computer">am_pm_marker</span> attribute.
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Day in month | boolean | configuration | Includes the <span class="computer">day</span> attribute.<br/>The day is included on two digits, from <span class="computer">01</span> to <span class="computer">31</span>.
Day in week, long name | boolean | configuration | Includes the <span class="computer">day_in_week_long</span> attribute.<br/>The day is included in full spelling.
Day in week, short name | boolean | configuration | Includes the <span class="computer">day_in_week_short</span> attribute.<br/>The day is included in short (<span class="computer">Mon</span>, <span class="computer">Tue</span>, <span class="computer">Wed</span>, etc.).
Format | String | configuration | Defines the date format.<br/>This property defines the pattern to be complied with for the field to be recognized as a date (for example, <span class="computer">dd/mm/yyyy</span>). For more information on usable symbols, see Appendix "<i>Date format - Usable symbols</i>".
Hour in am/pm (0-11)  | boolean | configuration | Includes the <span class="computer">hour_in_day_0_to_11</span> attribute.
Hour in am/pm (1-12)  | boolean | configuration | Includes the <span class="computer">hour_in_day_1_to_12</span> attribute.
Hour in day (0-23)  | boolean | configuration | Includes the <span class="computer">hour_in_day_0_to_23</span> attribute.
Hour in day (1-24)  | boolean | configuration | Includes the <span class="computer">hour_in_day_1_to_24</span> attribute.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/><br/>If set to <span class="computer">true</span>, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Language | String | configuration | Defines the language of the date (<span class="computer">ISO 639</span> compliant).
Millisecond  | boolean | configuration | Includes the <span class="computer">milliseconds</span> attribute.
Minute in hour | boolean | configuration | Includes the <span class="computer">minutes</span> attribute.
Month in year | boolean | configuration | Includes the <span class="computer">month</span> attribute.<br/>The month is included on two digits, from <span class="computer">01</span> to <span class="computer">12</span>.
Month in year, long name | boolean | configuration | Includes the <span class="computer">month_name_long</span> attribute.<br/>The month is included in full spelling.
Month in year, short name | boolean | configuration | Includes the <span class="computer">month_name_short</span> attribute.<br/>The month is included in short (<span class="computer">Jan</span>, <span class="computer">Feb</span>, <span class="computer">Mar</span>, <span class="computer">Apr</span>, etc.).
Second in minute | boolean | configuration | Includes the <span class="computer">seconds</span> attribute.
Time zone (General time zone) | boolean | configuration | Includes the <span class="computer">time_zone_text</span> attribute.
Time zone (RFC 822 time zone) | boolean | configuration | Includes the <span class="computer">time_zone_number</span> attribute.<br/>The time zone is included in accordance with the <span class="computer">RFC-822</span> standard.
Week in month | boolean | configuration | Includes the <span class="computer">week_in_month</span> attribute.<br/>The week of the month is included on two digits.
Week in year | boolean | configuration | Includes the <span class="computer">week_in_year</span> attribute.<br/>The week of the year is included on two digits, from <span class="computer">01</span> to <span class="computer">52</span>.
Year | boolean | configuration | Includes the <span class="computer">year</span> attribute.<br/>The year is included on four digits.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/>Presentation attributes to configure are :<br/><br/>• <b>Color</b>: <span class="computer">Foreground</span> color, <span class="computer">Background</span> color, to choose in a list of predefined colors or "not to take into account".<br/>• <b>Decoration</b>: <span class="computer">bold</span>, <span class="computer">reverse</span>, <span class="computer">underlined</span>, <span class="computer">blink</span>, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".<br/>
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule. <br/>The screen area is defined through four coordinates: <br/><br/>• x (area left corner), <br/>• y (area upper corner), <br/>• w (area width), <br/>• h (area height). <br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0). <br/><span class="computer">-1</span> represents an undefined value: <span class="computer">(x=-1, y=-1, w=-1, h=-1)</span> is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to: <br/><br/>• <span class="computer">static</span>, the rule applies to blocks of <span class="computer">static</span> type only. <br/>• <span class="computer">static &#124; field</span>, the rule applies to blocks of <span class="computer">static</span> or <span class="computer">field</span> type only. <br/>• <span class="computer">[^field]</span>, the rule applies to all but <span class="computer">field</span> type blocks.<br/><br/><span class="orangetwinsoft">Notes:</span><br/><br/>• For more information about regular expression patterns, see the following page: <span class="computer">http://www.regular-expressions.info/reference.html</span>. <br/>• To test regular expressions, you can use the regular expression tester at the following URL: <span class="computer">http://www.regular-expressions.info/javascriptexample.html</span>.<br/>
