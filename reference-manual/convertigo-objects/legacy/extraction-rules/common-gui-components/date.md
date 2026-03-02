---
layout: page
title: Date
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/common-gui-components/date/
metadesc: Handles fields of  date  type.    The  Date  extraction rule applies to Legacy Publishing only. It is intended to detect a field as a date and to mana
ObjGroup: Legacy
ObjCatName: common-gui-components
ObjName: Date
ObjClass: com.twinsoft.convertigo.beans.common.Date
ObjIcon: /images/beans/common/images/date_color_32x32.png
topnav: topnavobj
---
##### Handles fields of `date` type.

The *Date* extraction rule applies to Legacy Publishing only. It is intended to detect a field as a date and to manage it as such. As a consequence, blocks containing a date are extracted as `date` blocks with relevant attributes, not as `field` blocks containing a date as a string.

**Note:** This rule adds a `date` type XML element to the XML document. It is associated with the `date` XSL template, described in the `date.xsl` file. On the webized page, a calendar pops-up when clicking on the date, to select the appropriate value.


Property | Type | Category | Description
--- | --- | --- | ---
Am/pm marker | boolean | configuration | Includes the `am_pm_marker` attribute.
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Day in month | boolean | configuration | Includes the `day` attribute.<br/>The day is included on two digits, from `01` to `31`.
Day in week, long name | boolean | configuration | Includes the `day_in_week_long` attribute.<br/>The day is included in full spelling.
Day in week, short name | boolean | configuration | Includes the `day_in_week_short` attribute.<br/>The day is included in short (`Mon`, `Tue`, `Wed`, etc.).
Format | String | configuration | Defines the date format.<br/>This property defines the pattern to be complied with for the field to be recognized as a date (for example, `dd/mm/yyyy`). For more information on usable symbols, see Appendix "*Date format - Usable symbols*".
Hour in am/pm (0-11)  | boolean | configuration | Includes the `hour_in_day_0_to_11` attribute.
Hour in am/pm (1-12)  | boolean | configuration | Includes the `hour_in_day_1_to_12` attribute.
Hour in day (0-23)  | boolean | configuration | Includes the `hour_in_day_0_to_23` attribute.
Hour in day (1-24)  | boolean | configuration | Includes the `hour_in_day_1_to_24` attribute.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Language | String | configuration | Defines the language of the date (`ISO 639` compliant).
Millisecond  | boolean | configuration | Includes the `milliseconds` attribute.
Minute in hour | boolean | configuration | Includes the `minutes` attribute.
Month in year | boolean | configuration | Includes the `month` attribute.<br/>The month is included on two digits, from `01` to `12`.
Month in year, long name | boolean | configuration | Includes the `month_name_long` attribute.<br/>The month is included in full spelling.
Month in year, short name | boolean | configuration | Includes the `month_name_short` attribute.<br/>The month is included in short (`Jan`, `Feb`, `Mar`, `Apr`, etc.).
Second in minute | boolean | configuration | Includes the `seconds` attribute.
Time zone (General time zone) | boolean | configuration | Includes the `time_zone_text` attribute.
Time zone (RFC 822 time zone) | boolean | configuration | Includes the `time_zone_number` attribute.<br/>The time zone is included in accordance with the `RFC-822` standard.
Week in month | boolean | configuration | Includes the `week_in_month` attribute.<br/>The week of the month is included on two digits.
Week in year | boolean | configuration | Includes the `week_in_year` attribute.<br/>The week of the year is included on two digits, from `01` to `52`.
Year | boolean | configuration | Includes the `year` attribute.<br/>The year is included on four digits.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
