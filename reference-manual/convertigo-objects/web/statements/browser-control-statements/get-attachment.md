---
layout: page
title: Get attachment
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/browser-control-statements/get-attachment/
metadesc: Downloads an attachment file.   This statement instructs Convertigo to wait for an attachment to be fully downloaded. This statement requires the Conv
ObjGroup: Web
ObjCatName: browser-control-statements
ObjName: Get attachment
ObjClass: com.twinsoft.convertigo.beans.statements.GetAttachmentStatement
ObjIcon: /images/beans/statements/images/getattachment_32x32.png
topnav: topnavobj
---
##### Downloads an attachment file. 

This statement instructs Convertigo to wait for an attachment to be fully downloaded. This statement requires the Convertigo internal browser to be set so as to receive attachments, by using an appropriate <i>Browser property change</i> statement. <br/>The required property must be changed prior to executing the action that triggers the download (click on a download link for example). The property change can be included either in a previous transaction or in a handler executed prior to the download. <br/><b>Important note</b>: <i>Get attachment</i> statement must be executed immediately after the action that triggers the download.<br/>Once the download is complete, the final destination for the retrieved document depends on the <b>Attachment recovery policy</b> property value:<br/><br/>• If the property is set to <span class="computer">localfile_&lt;whatever_value&gt;</span>, the file is stored locally in a temporary file, using the path defined by the <b>File path</b> property.<br/>• If the property is set to <span class="computer">base64</span>, the file is stored in memory encoded in base 64.<br/><br/><span class="orangetwinsoft">Note:</span> The file can be sent back to the client afterwards as binary data with the correct MIME type: the client should request Convertigo <span class="computer">.bin</span> requester (see the <i>"Interfaces to Convertigo"</i> chapter of the Reference Manual, <i>"HTTP protocol interface to Convertigo"</i> section, <i>"Convertigo URLs"</i>&gt;<i>"Convertigo requesters"</i> paragraph). 

Property | Type | Category | Description
--- | --- | --- | ---
Attachment recovery policy | Policy | standard | Defines how and where to recover the attachment file.<br/>This property can take one of the following values:<br/><br/>• <span class="computer">localfile_increment</span>: stores the downloaded file locally on the server, using the <b>File path</b> property; if a file with the same name has already been downloaded, it increments the name of the file with a number in order not to lose previous version, <br/>• <span class="computer">localfile_override</span>: stores the downloaded file locally on the server, using the <b>File path</b> property; if a file with the same name has already been downloaded, it overrides the previously downloaded file with the new version, <br/>• <span class="computer">base64</span>: stores the downloaded file in memory, encoded in base 64.<br/><br/>The <span class="computer">localfile_override</span> policy is the default value for this property.
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
File path | JS expression | standard | JavaScript expression defining the file path, including the file name, of the file to get (optional).<br/>If set, this property allows to override the initial file name and to define the path to the directory where the file must be get. This path is either absolute or relative to Convertigo environment. Relative paths starting with:<br/><br/>• <span class="computer">./</span> are relative to Convertigo workspace,<br/>• <span class="computer">.//</span> are relative to current project folder. <br/><br/>If not set, a default path is automatically generated: <span class="computer">.//downloads/&lt;original_name_from_the_server&gt;</span>. This path automatically creates a <span class="computer">downloads</span> folder in the project (if not existing) and stores in it the file with its original name suggested by the server.
Is active | boolean | standard | Defines whether the statement is active.
Threshold | long | standard | Defines the downloading activity threshold in millisecond.<br/>The <i>HTML connector</i> cannot know when a file download is terminated. On the other side, the <i>HTML connector</i> knows about downloading activity. <br/>This property allows to define a maximum time of inactivity to wait after the last downloading activity. If this threshold time is reached, the file download is considered as finished.
Timeout | long | standard | Defines the download timeout in millisecond.<br/>This property allows to define the maximum time to wait for the file to be downloaded. If the file download is not finished at the end of this time, the download is aborted.
