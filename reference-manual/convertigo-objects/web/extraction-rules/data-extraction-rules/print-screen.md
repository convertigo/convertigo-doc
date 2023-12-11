---
layout: page
title: Print screen
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/extraction-rules/data-extraction-rules/print-screen/
metadesc: Takes a screenshot of the current web page.   The  Print screen  extraction rule creates a screenshot of the currently displayed web page and generate
ObjGroup: Web
ObjCatName: data-extraction-rules
ObjName: Print screen
ObjClass: com.twinsoft.convertigo.beans.common.XMLPrintScreen
ObjIcon: /images/beans/common/images/xmlprintscreen_color_32x32.png
topnav: topnavobj
---
##### Takes a screenshot of the current web page. 

The <i>Print screen</i> extraction rule creates a screenshot of the currently displayed web page and generates a <span class="computer">Base64</span> representation that is inserted in an element of the output XML. <br/>The <i>Print screen</i> extraction rule can take a screenshot of the whole web page or of a part of the page. To select only a part of the page, you can use the <b>Capture corner</b> and <b>Capture size</b> properties. <br/>The image compression method of the generated binary data can be chosen using the <b>Image format</b> property. 

Property | Type | Category | Description
--- | --- | --- | ---
Capture corner left | int | configuration | Defines the horizontal space in pixel between the left of the browser window and the left of the captured frame.<br/>The <i>Print screen</i> extraction rule can capture only a part of the web page. Use this property to choose the position of the left of the screenshot area. <br/>Leave this property to its <span class="computer">0</span> default value if you want to capture a screenshot from the left of the page.
Capture corner top | int | configuration | Defines the vertical space in pixel between the top of the browser window and the top of the captured frame.<br/>The <i>Print screen</i> extraction rule can capture only a part of the web page. Use this property to choose the position of the top of the screenshot area. <br/>Leave this property to its <span class="computer">0</span> default value if you want to capture a screenshot from the top of the page.
Capture size height | int | configuration | Defines the height of the captured frame (in pixels).<br/>The <i>Print screen</i> extraction rule can capture only a part of the web page. Use this property to choose the height of the screenshot area. <br/>Leave this property to its <span class="computer">-1</span> default value if you want to capture the whole height of the web page.
Capture size width | int | configuration | Defines the width of the captured frame (in pixels).<br/>The <i>Print screen</i> extraction rule can capture only a part of the web page. Use this property to choose the width of the screenshot area. <br/>Leave this property to its <span class="computer">-1</span> default value if you want to capture the whole width of the web page.
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Data url prefix | boolean | configuration | Includes a prefix to the Base64 binary data to allow a direct use of the image from the XML.<br/>Setting this property to <span class="computer">true</span> adds a <span class="computer">data:image/&lt;xxx&gt;;base64,</span> prefix to the image binary data in the output XML, with <span class="computer">&lt;xxx&gt;</span> value is <span class="computer">jpg</span> or <span class="computer">png</span> depending on the <b>Image format</b> property value. <br/>This allows the developer to directly use the image data without writing it in a file. For example, it can be used in an <span class="computer">src</span> attribute of an <span class="computer">IMG</span> HTML tag.
Image format | ImageFormat | configuration | Defines the image compression method used to generate the image binary data.<br/>This property can take several values: <br/><br/>• <span class="computer">png</span>: using this value generates a fine but heavy image, <br/>• <span class="computer">jpeg</span>:  using this value generates a blurred but lightweight image.<br/>
Image scale | float | configuration | Defines the ratio to reduce (&lt;1) or increase (&gt;1) the size of the final captured image.<br/>The <i>Print screen</i> extraction rule can automatically perform a transformation on the captured image: <br/><br/>• increasing its original size if you use a value superior to <span class="computer">1</span>, <br/>• reducing its original size if you use a value inferior to <span class="computer">1</span>.<br/>
Is active | boolean | configuration | Defines whether the extraction rule is active.
Tag name | String | configuration | Defines the tag name in the resulting XML (default tag name is <span class="computer">PrintScreen</span>).
Waiting delay | long | selection | Defines the minimum delay (in ms) to wait after the "completed" event to realize the screenshot.<br/>This property allows to define a time to wait before the screenshot is performed and after the last <span class="computer">document:completed</span> event, in order to be sure that the page is fully rendered before the image is generated. <br/>The default value is set to <span class="computer">100</span> ms.
