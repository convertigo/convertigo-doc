---
layout: page
title: DateTime
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/form-components/datetime/
metadesc: ion-datetime  Defines a  DateTime  component. The  DateTime  component is used to present an interface which makes it easy for users to select dates a
ObjGroup: Forms
ObjCatName: form-components
ObjName: DateTime
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/input_datetime_32x32.png
topnav: topnavobj
---
ion-datetime
##### Defines a <i>DateTime</i> component.
The <i>DateTime</i> component is used to present an interface which makes it easy for users to select dates and times.
The <i>DateTime</i> component is similar to the native <input type='datetime-local'> element, however, Ionic&apos;s DateTime component makes it easy to display the date and time in a preferred format, and manage the datetime values.
Use the <i>Value</i> property to set its value.
Like any other form's inputs, it has a <i>Control name</i> property you may change for a more friendly name to use in a <i>CustomValidator</i>.
For more information: <a href='https://ionicframework.com/docs/v3/components/#datetime' target='_blank'>DateTime</a>.

<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.

Name | Description 
--- | ---
Cancel text | The text to display on the picker's cancel button.
Control name | The associated declared form's control name.
Day Names | List of day names separated by a comma, if different from English standard names.
Day short names | Short abbreviated day of the week names. This can be used to provide locale names for each day in the week. Defaults to English.
Day values | Values used to create the list of selectable days. By default every day is shown for the given month. However, to control exactly which days of the month to display, the dayValues input can take either an array of numbers, or string of comma separated numbers. Note that even if the array days have an invalid number for the selected month, like 31 in February, it will correctly not show days which are not valid for the selected month.
Display format | The display format ex: hh:mm AAAA or  MM/DD/YYYY see https://ionicframework.com/docs/v3/api/components/datetime/DateTime/ for more formats.
Done text | The text to display on the picker's 'Done' button. Default: Done.
Hour values | Values used to create the list of selectable hours. By default the hour values range from 0 to 23 for 24-hour, or 1 to 12 for 12-hour. However, to control exactly which hours to display, the hourValues input can take either an array of numbers, or string of comma separated numbers.
Maximum datetime | The maximum datetime allowed. Use ISO 8601 datetime format YYYY-MM-DD. See https://www.w3.org/TR/NOTE-datetime for more formats.
Minimum datetime | The minimum datetime allowed. Use ISO 8601 datetime format YYYY-MM-DD. See https://www.w3.org/TR/NOTE-datetime for more formats.
Minute values | Values used to create the list of selectable minutes. By default the minutes range from 0 to 59. However, to control exactly which minutes to display, the minuteValues input can take either an array of numbers, or string of comma separated numbers. For example, if the minute selections should only be every 15 minutes, then this input value would be minuteValues='0,15,30,45'.
Month Names | List of month names separated by a comma, if different from English standard names.
Month short names | Short abbreviated names for each month name. This can be used to provide locale month names. Defaults to English.
Month values | Values used to create the list of selectable months. By default the month values range from 1 to 12. However, to control exactly which months to display, the monthValues input can take either an array of numbers, or string of comma separated numbers. For example, if only summer months should be shown, then this input value would be monthValues="6,7,8". Note that month numbers do not have a zero-based index, meaning January's value is 1, and December's is 12.
Picker Options | Any additional options that the picker interface can accept. See the Ionic Picker API docs for the picker options.
Picker format | The picker format ex: hh:mm AAAA or  MM/DD/YYYY see https://ionicframework.com/docs/v3/api/components/datetime/DateTime/ for more formats.
Placeholder | Set the datetime's placeholder.
Value | The default datetime value. Use ISO 8601 datetime format like YYYY-MM-DD or hh:mm:ss or YYYY-MM-DDThh:mm:ss. See https://www.w3.org/TR/NOTE-datetime for more formats.
Year values | Values used to create the list of selectable years. By default the year values range between the min and max datetime inputs. However, to control exactly which years to display, the yearValues input can take either an array of numbers, or string of comma separated numbers. For example, to show upcoming and recent leap years, then this input's value would be yearValues="2024,2020,2016,2012,2008".
color | Specifies ionic color.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

