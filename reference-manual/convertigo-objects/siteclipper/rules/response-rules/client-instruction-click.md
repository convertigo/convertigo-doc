---
layout: page
title: Client instruction click
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/siteclipper/rules/response-rules/client-instruction-click/
metadesc: Automatically clicks on a target element from a web page accessed through Convertigo Site Clipper. The action is performed in the client browser after
ObjGroup: SiteClipper
ObjCatName: response-rules
ObjName: Client instruction click
ObjClass: com.twinsoft.convertigo.beans.extractionrules.siteclipper.ClientInstructionClick
ObjIcon: /images/beans/extractionrules/siteclipper/images/rule_clientinstructionclick_color_32x32.png
topnav: topnavobj
---
##### Automatically clicks on a target element from a web page accessed through Convertigo Site Clipper. The action is performed in the client browser after the page is loaded.

The *Client instruction click* extraction rule stores an instruction of clicking on an element in a queue of client instructions. This queue is then unstacked when the page is client-side loaded. The instruction of clicking on an element is performed on the page when it is loaded by the client browser.

The target element is defined thanks to the **JQuery selector** property. This property is a JavaScript expression, evaluated by Convertigo when the extraction rule is applied.

In order to process the unstacking of client instructions in the web page, `client instruction engine` code is injected into the page after all response extraction rules are applied. When the page is client-side loaded, the `client instruction engine` runs and consumes each registered client instruction, in the same order as extraction rules.

Consuming the *Client instruction click* instruction, the engine selects the target element using the **JQuery selector** and clicks on it.

**Note:** The click is perfomed using the JQuery `click` function. For more information about this function, see the following page: `http://api.jquery.com/click/`.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | configuration | Defines whether the extraction rule is active.
JQuery selector | JS expression | configuration | JavaScript expression defining a JQuery selector matching the target element from the HTML document.<br/>This property defines a JQuery selector used to retrieve the target element (input field, text area, select, checkbox, radio button, etc.) on the client browser when the page is loaded. It is defined thanks to a JavaScript expression evaluated using the JavaScript scope of the current context. It should return a string to be used as a JQuery selector.<br/><br/>Here are some default syntaxes for JQuery selectors.<br/><br/>An id selector starts with `#` character, an attribute selector is between `[]` characters, a class selector starts with `.` character.<br/><br/>The `>` character separating several selectors defines a constraint to the direct ancestor. The space character separating several selectors defines a constraint to any ancestor.<br/><br/>The followings are some simple selectors that can be used in JQuery:<br/><br/>- Select an element by id: `#the_id_to_search`,<br/>- Select an any type of element by name: `[name="the_name_to_search"]` or also `*[name="the_name_to_search"]`,<br/>- Select an input element by name: `input[name="the_name_of_the_input_to_search"]`,<br/>- Select an any type of element by class: `.class_to_search`,<br/>- Select a div element by class: `div.class_of_a_div_to_search`,<br/>- Select an input by name, direct child of a form element selected by class: `form.form_class > input[name="input_name"]`,<br/>- Select an hidden input, descendant of a specified id: `#specified_id input[type="hidden"]`.<br/><br/>**Note:** The full JQuery selector documentation is available on the official JQuery website: `http://api.jquery.com/category/selectors/`.
