---
layout: page
title: InfiniteScroll
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/list-components/infinitescroll/
metadesc: ion-infinite-scroll.   The  InfiniteScroll  component holds an infinite scroll logic and requires a  child   InfiniteScrollContent  component in order
ObjGroup: Lists
ObjCatName: list-components
ObjName: InfiniteScroll
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/infinitescroll_color_32x32.png
topnav: topnavobj
---
ion-infinite-scroll. <br/>

 The <i>InfiniteScroll</i> component holds an infinite scroll logic and requires a <b>child</b> <i>InfiniteScrollContent</i> component in order to display its content.<br/>
It allows you to perform a given task when the user scrolls a specified distance from the bottom or top of the page.<br/>
To do so, add the <b>ionInfinite</b> <i>Event</i> to your <i>InfiniteScroll</i> with a <i>CustomAction</i> inside.<br/>
Copy/paste below code in your action and add yours.<br/>
<code><pre>//disable scroll
event.enable(false);

let isOK = true;
//TODO: add your code
//get next items and push them
//...
if (isOK) {
	//enable scroll
	event.enable(true);
}

//specify loading is complete
event.complete();
resolve();
</pre></code><br/>
For more information: <a href='https://ionicframework.com/docs/v3/api/components/infinite-scroll/InfiniteScroll/'>InfiniteScroll</a>.

Name | Description 
--- | ---
Enabled | Define whether or not the infinite scroll should be enabled or not.
Position | Define the position of the infinite scroll element.
Threshold | Define the threshold distance in percents or pixels, from the bottom of the content.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Identifier | Defines the component identifier.
Is active | Defines whether the component is active.

