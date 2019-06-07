---
layout: page
title: Calendar Picker
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/action-components/calendar-picker/
metadesc: Defines a  Calendar Picker  action component.   Use this action to display a Calendar to pick dates. When the date (or dates) are picked data will be 
ObjGroup: Actions
ObjCatName: action-components
ObjName: CalendarPickerAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/calendaraction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Calendar Picker</i> action component. <br/>

 Use this action to display a Calendar to pick dates. When the date (or dates) are picked data will be available in the <code>out</code> (TS) object in this format :<br/>
 • <code>{ date: CalendarResult }</code> for 'single mode'<br/>
 • <code>{ from: CalendarResult, to:CalendarResult  }</code> for 'range mode'<br/>
 • <code>[CalendarResult]</code> for 'multi mode'.<br/>
Where <code>CalendarResult</code> is :<br/>
<br/>
<code>class CalendarResult {<br/>
&nbsp;&nbsp;&nbsp;time: number;<br/>
&nbsp;&nbsp;&nbsp;unix: number;<br/>
&nbsp;&nbsp;&nbsp;dateObj: Date;<br/>
&nbsp;&nbsp;&nbsp;string: string;<br/>
&nbsp;&nbsp;&nbsp;years: number;<br/>
&nbsp;&nbsp;&nbsp;months: number;<br/>
&nbsp;&nbsp;&nbsp;date: number;<br/>
}</code><br/>
<br/>
For more information : <a target='_blank' href='https://github.com/hsuanxyz/ion2-calendar'>ion2-calendar</a>.

Name | Description 
--- | ---
Can be backwards selected | Define if the calendar can be backwards selected.
Close icon | Display close Icon.
Close label | The close button label.
Day Title | The default title displayed for Days.
Days configuration | Define the days configuration.
Default date | Default selected date as a Javascript <code>Date()</code> object.
Default dates (multi) | Default selected dates as an array of Javascript <code>Date()</code> objects. For 'multi' mode only.
Default range (range) | Default selected date range as an <code>{from: Date(), to:Date()}</code> object. For 'range' mode only.
Disable week days | Weeks days to be disabled (0 to 6).
Done icon | Display done icon.
Done label | The done button label.
From | start date, default , today.
Month format | Month format ('MMM YYYY').
Month picker format | Month Labels.
Pick mode | Picker mode.
Subtitle | The default  subtitle displayed for Days.
Title | The calendar title.
To | End date, default, infinite.
Week start | Define the week start day.
Weekdays labels | Define the week days labels.
color | Specifies ionic color.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

