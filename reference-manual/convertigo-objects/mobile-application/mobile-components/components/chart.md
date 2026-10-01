---
layout: page
title: Chart
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/components/chart/
metadesc: canvas  Defines a  Chart  component. Charts can be  line, bar, radar, pie, polarArea or doughnut  according to the  chartType  property. Chart data ar
ObjGroup: Components
ObjCatName: components
ObjName: Charts
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/chart_color_32x32.png
topnav: topnavobj
---
canvas<br/>

##### Defines a <i>Chart</i> component.<br/>
Charts can be <code>line, bar, radar, pie, polarArea or doughnut</code> according to the <i>chartType</i> property.<br/>
Chart data are bound to properties provided by some TypeScript data or directly from a source.<br/>
<br/>
Please refer to <a href='https://www.npmjs.com/package/ng2-charts'>chart.js</a> documentation for each property and data formats.<br/>
To set width and height properties, use the Grid system.

Name | Description 
--- | ---
Chart Type | Indicates the type of charts, it can be: line, bar, radar, pie, polarArea, doughnut.
Chart base | Defines a base chart.
Chart height | Chart height.
Chart options | chart options (as from Chart.js documentation).
Chart width | Chart width.
Data | (Array<number[]>| number[]) - set of points of the chart, it should be Array<number[]> only for line, bar and radar, otherwise number[].
Data colors | data colors, will use default colors if not specified.
Data labels |  (Array<any>) - x axis labels. It's necessary for charts: line, bar and radar. And just labels (on hover) for charts: polarArea, pie and doughnut.
Data sets | (Array<number[]>| number[]) - set of points of the chart, it should be Array<number[]> only for line, bar and radar, otherwise number[].
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

