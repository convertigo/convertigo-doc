---
layout: page
title: DateTime
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/datetime/
metadesc: ion-datetime  Defines a  DateTime  component. The  DateTime  component is used to present an interface which makes it easy for users to select dates a
ObjGroup: Forms
ObjCatName: form-components
ObjName: DateTime
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/datetime_32x32.png
topnav: topnavobj
---
ion-datetime<br/>

##### Defines a <i>DateTime</i> component.<br/>
The <i>DateTime</i> component is used to present an interface which makes it easy for users to select dates and times.<br/>
The <i>DateTime</i> component is similar to the native <code>&lt;input type='datetime-local'&gt;</code> element, however, Ionic&apos;s DateTime component makes it easy to display the date and time in a preferred format, and manage the datetime values.<br/>
Use the <i>Value</i> property to set its value.<br/>
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a custom validation function.<br/>
For more information: <a href='https://ionic-docs-o31kiyk8l-ionic1.vercel.app/docs/api/datetime'>DateTime</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Binding | The object or variable to bind with the control.
Cancel text | The text to display on the picker's cancel button.
Clear text | The text to display on the picker's clear button.
Color | Specifies ionic color.
Control id | The datetime id.
Control name | The associated declared control name.
Day values | Values used to create the list of selectable days. By default every day is shown for the given month. However, to control exactly which days of the month to display, the dayValues input can take either an array of numbers, or string of comma separated numbers. Note that even if the array days have an invalid number for the selected month, like 31 in February, it will correctly not show days which are not valid for the selected month.
Disabled | If true the component will be disabled, preventing the the user from changing the value.
Done text | The text to display on the picker's 'Done' button. Default: Done.
First day of week | The first day of the week to use. Default is 0 and represents Sunday.
Hour values | Values used to create the list of selectable hours. By default the hour values range from 0 to 23 for 24-hour, or 1 to 12 for 12-hour. However, to control exactly which hours to display, the hourValues input can take either a number, an array of numbers, or string of comma separated numbers.
Hour values | The hour cycle to use: h12 for a cycle from 1 to 12 hours or h23 for a cycle from 0 to 23 hours. If no value is set, this is specified by the current locale.
Locale | Set the datetime's locale. If not set, the default value refers to the default locale set by your device.
Maximum datetime | The maximum datetime allowed. Use ISO 8601 datetime format YYYY-MM-DD. See https://www.w3.org/TR/NOTE-datetime for more formats. The format does not have to be specific to an exact datetime. For example, the maximum could just be the year, such as 1994. Defaults to the end of this year.
Minimum datetime | The minimum datetime allowed. Use ISO 8601 datetime format YYYY-MM-DD. See https://www.w3.org/TR/NOTE-datetime for more formats. The format does not have to be specific to an exact datetime. For example, the minimum could just be the year, such as 1994. Defaults to the beginning of the year.
Minute values | Values used to create the list of selectable minutes. By default the minutes range from 0 to 59. However, to control exactly which minutes to display, the minuteValues input can take either a number, an array of numbers, or string of comma separated numbers. For example, if the minute selections should only be every 15 minutes, then this input value would be minuteValues="0,15,30,45".
Mode | Specifies ionic mode.
Month values | Values used to create the list of selectable months. By default the month values range from 1 to 12. However, to control exactly which months to display, the monthValues input can take either a number, an array of numbers, or string of comma separated numbers. For example, if only summer months should be shown, then this input value would be monthValues="6,7,8". Note that month numbers do not have a zero-based index, meaning January's value is 1, and December's is 12.
Presentation | Set the datetime's presentation. 'date' will show a calendar picker to select the month, day, and year. 'time' will show a time picker to select the hour, minute, and (optionally) AM/PM. 'date-time' will show the date picker first and time picker second. 'time-date' will show the time picker first and date picker second.
Readonly | If true, the user cannot modify the value.
Show clear button | If true, a "Clear" button will be rendered alongside the default "Cancel" and "OK" buttons at the bottom of the datetime component. Developers can also use the button slot if they want to customize these buttons. If custom buttons are set in the button slot then the default buttons will not be rendered.
Show default buttons | If true, the default "Cancel" and "OK" buttons will be rendered at the bottom of the datetime component. Developers can also use the button slot if they want to customize these buttons. If custom buttons are set in the button slot then the default buttons will not be rendered.
Show default time label | If true, the default "Time" label will be rendered for the time selector of the ion-datetime component. Developers can also use the time-label slot if they want to customize this label. If a custom label is set in the time-label slot then the default label will not be rendered.
Show default title | If true, a header will be shown above the calendar picker. On ios mode this will include the slotted title, and on md mode this will include the slotted title and the selected date.
Size | If cover, the datetime will expand to cover the full width of its container. If fixed, the datetime will have a fixed width.
Value | The default datetime value. Use ISO 8601 datetime format like YYYY-MM-DD or hh:mm:ss or YYYY-MM-DDThh:mm:ss. See https://www.w3.org/TR/NOTE-datetime for more formats.
Year values | Values used to create the list of selectable years. By default the year values range between the min and max datetime inputs. However, to control exactly which years to display, the yearValues input can take either an array of numbers, or string of comma separated numbers. For example, to show upcoming and recent leap years, then this input's value would be yearValues="2024,2020,2016,2012,2008".
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

