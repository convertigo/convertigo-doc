---
layout: page
title: InfiniteScroll
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/list-components/infinitescroll/
metadesc: ion-infinite-scroll.   The  InfiniteScroll  component holds an infinite scroll logic and requires a  child   InfiniteScrollContent  component in order
ObjGroup: Lists
ObjCatName: list-components
ObjName: InfiniteScroll
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/infinitescroll_color_32x32.png
topnav: topnavobj
---
ion-infinite-scroll. 
 The <i>InfiniteScroll</i> component holds an infinite scroll logic and requires a <b>child</b> <i>InfiniteScrollContent</i> component in order to display its content.
It allows you to perform a given task when the user scrolls a specified distance from the bottom or top of the page.
To do so, add the <b>ionInfinite</b> <i>Event</i> to your <i>Custom Scroll</i> with a <i>CustomAction</i> inside.
Copy/paste below code in your action and add yours.
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
</pre></code>
For more information: <a href='https://ionicframework.com/docs/v3/api/components/infinite-scroll/InfiniteScroll/' target='_blank'>InfiniteScroll</a>.

Name | Description 
--- | ---
Enabled | Define whether or not the infinite scroll should be enabled or not.
Position | Define the position of the infinite scroll element.
Threshold | Define the threshold distance in percents or pixels, from the bottom of the content.

