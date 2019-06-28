---
layout: page
title: Map Circle
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/google-map-components/map-circle/
metadesc: agm-circle  Defines a  Map Circle  component. This component displays a circular area of a specified radius on a  Google Map .  For more information  
ObjGroup: Google Map
ObjCatName: google-map-components
ObjName: MapCircle
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/gmapcircle_color_32x32.png
topnav: topnavobj
---
agm-circle
##### Defines a <i>Map Circle</i> component.
This component displays a circular area of a specified radius on a <i>Google Map</i>.
 For more information: <a href='https://angular-maps.com/api-docs/agm-core/directives/AgmCircle.html' target='_blank'>AgmCircle</a>.

Name | Description 
--- | ---
Clickable | boolean : Specifies whether this circle handles mouse events. Defaults to true.
Draggable | boolean : If set to true, the user can drag this circle over the map. Defaults to false.
FillColor | string : The fill color. All CSS3 colors are supported except for extended named colors.
FillOpacity | number : The fill opacity between 0.0 and 1.0.
Latitude | Number : The circle will be displayed at this latitude. Must be a 'number' jSON type (ex: 51.678418).
Longitude | Number : The circle will be displayed at this longitude. Must be a 'number' jSON type (ex: 7.809007).
Radius | Number : The radius in meters on the Earth's surface.
StrokeColor | string : The stroke color. All CSS3 colors are supported except for extended named colors.
StrokeOpacity | number : The stroke opacity between 0.0 and 1.0.
StrokePosition | number : The stroke position. Defaults to 0 (CENTER). (1=INSIDE, 2=OUTSIDE).
StrokeWeight | number : The stroke width in pixels.
Visible | boolean : Specifies whether this circle is visible on the map. Defaults to true.

