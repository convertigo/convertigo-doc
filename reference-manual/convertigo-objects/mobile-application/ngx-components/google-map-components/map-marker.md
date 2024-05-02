---
layout: page
title: Map Marker
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/google-map-components/map-marker/
metadesc: agm-marker  Defines a  Map Marker  component. Markers indicate unique geographic points on the map. You can customize your markers by replacing the ma
ObjGroup: Google Map
ObjCatName: google-map-components
ObjName: MapMarker
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/gmapmarker_32x32.png
topnav: topnavobj
---
agm-marker<br/>

##### Defines a <i>Map Marker</i> component.<br/>
Markers indicate unique geographic points on the map. You can customize your markers by replacing the marker icon with a custom image.<br/>
Several <i>Map Marker</i> can be displayed on a map, just add them in your <i>Goolgle Map</i> component.<br/>
 For more information: <a href='https://angular-maps.com/api-docs/agm-core/directives/AgmMarker.html'>AgmMarker</a>.

Name | Description 
--- | ---
Icon | Icon (the URL of the image) for the foreground. Setting an empty string for this field will place the default Google Map Maker Icon.
Latitude | Number : The Marker will be displayed at this latitude. Must be a 'number' jSON type (ex: 51.678418).
Longitude | Number : The Marker will be displayed at this longitude. Must be a 'number' jSON type (ex: 7.809007).
Title | The marker title.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Identifier | Defines the component identifier.  
Is active | Defines whether the component is active. 

