---
layout: page
title: Google Map
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/google-map-components/google-map/
metadesc: agm-map  Defines a  Google Map  component. This component displays a Google map able to be positioned on a given latitude and longitude.  You can inse
ObjGroup: Google Map
ObjCatName: google-map-components
ObjName: GoogleMap
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/gmap_color_32x32.png
topnav: topnavobj
---
agm-map
##### Defines a <i>Google Map</i> component.
This component displays a Google map able to be positioned on a given latitude and longitude.

You can insert in the map any number of <i>Map Marker</i> components to mark positions on the map, and within <i>Map Marker</i> an <i>Information Window</i> component to display more information on a given marker.

<i>Information Window</i> components can have any type of HTML information inside to display formated information when the user clicks on a mark, including action buttons.

All coordinates are of JSON <code>number</code> type. To be sure to generate <code>number</code> types within <i>Sequences</i>, add an <i>Attribute</i> step <code>type=double</code> to your <i>Element</i> steps.
 For more information: <a href='https://angular-maps.com/api-docs/agm-core/components/AgmMap.html' target='_blank'>AgmMap</a>.

Name | Description 
--- | ---
Display Height | The Height in pixels (px) or in percentage (%) the map uses on the screen.
Latitude | Number : The map will be centered at this latitude. Must be a 'number' jSON type (ex: 51.678418).
Longitude | Number : The map will be centered at this longitude. Must be a 'number' jSON type (ex: 7.809007).
Zoom level | The zoom level of the map. The default zoom level is 8.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

