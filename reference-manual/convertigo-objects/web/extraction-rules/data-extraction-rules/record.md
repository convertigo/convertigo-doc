---
layout: page
title: Record
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/extraction-rules/data-extraction-rules/record/
metadesc: Extracts data from a web page in an XML record.   The  Record  extraction rule helps you extract a set of data from HTML text parts with identical and
ObjGroup: Web
ObjCatName: data-extraction-rules
ObjName: Record
ObjClass: com.twinsoft.convertigo.beans.common.XMLRecord
ObjIcon: /images/beans/common/images/xmlrecord_color_32x32.png
topnav: topnavobj
---
##### Extracts data from a web page in an XML record. 

The <i>Record</i> extraction rule helps you extract a set of data from HTML text parts with identical and recurring presentation in a web page.<br/>Extracted data are organized into a simple XML structure made of:<br/><br/>• a parent base element "corresponding to" the base recurring HTML elements containing data to extract, e.g a <span class="computer">&lt;RECORD&gt;</span><br/>• child elements "corresponding to" HTML text parts containing data, e.g <span class="computer">&lt;DATAT1&gt;, &lt;DATAT2&gt;, etc.</span><br/><br/>The rule is applied if the result of the record Xpath expression evaluation exists in the HTML page DOM.<br/>The resulting record elements are appended to the HTML transaction output DOM as follows: <br/><span class="computer">&lt;record_tagname referer="referer_url"&gt;</span><br/><span class="computer">  &lt;data1_tagname&gt;extracted text from data1 xpath&lt;/data1_tagname&gt;</span><br/><span class="computer">  &lt;data2_tagname&gt;extracted text from data2 xpath&lt;/data2_tagname&gt;</span><br/><span class="computer">&lt;/record_tagname&gt;</span><br/><span class="computer">&lt;record_tagname referer="referer_url"&gt;</span><br/><span class="computer">  &lt;data1_tagname&gt;extracted text from data1 xpath&lt;/data1_tagname&gt;</span><br/><span class="computer">  &lt;data2_tagname&gt;extracted text from data2 xpath&lt;/data2_tagname&gt;</span><br/><span class="computer">&lt;/record_tagname&gt;</span>

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Display referer | boolean | configuration | Defines whether the referer URL is displayed in the output XML element.<br/>If this property is set to <span class="computer">true</span>, the referer URL is added as an attribute, named <span class="computer">referer</span>, to the XML element added by the extraction rule.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Tag name | String | configuration | Defines the record tag name in resulting DOM (default tag name is <span class="computer">XMLRecord</span>).
Description | XMLVector | selection | Describes how to extract data into record child text elements.<br/>The record is structured as a recurring element containing data, which are defined through <b>Description</b> property. <br/>This property is a list of child elements descriptions, also named columns descriptions. Each column description is composed of the following fields:<br/><br/>• Name: Tag name of the child element (the default name is <span class="computer">data</span>).<br/>• Extract children: Indicates whether text extraction should recurse on child elements of the elements found thanks to the Xpath (by default it is set to <span class="computer">false</span>). As it needs more CPU if set to "true", it is then recommended to customize your XPath (using <span class="computer">//text()</span> function for example).<br/>• XPath: XPath expression selecting child element data. It is often defined relatively to parent <i>Record</i> extraction rule Xpath expression using the following syntax: <span class="computer">./</span>.<br/>
XPath | String | selection | Defines the Xpath expression of nodes on which the extraction rule applies.<br/>Depending on the extraction rule, the execution of this <b>Xpath</b> on the web page DOM can result in a single <span class="computer">Node</span> or a <span class="computer">NodeList</span>.
