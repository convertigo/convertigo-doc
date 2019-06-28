---
layout: page
title: Continue with Site Clipper
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/web/statements/others/continue-with-site-clipper/
metadesc: Redirects to a  Site Clipper connector .    Continue with Site Clipper  statement ends an  HTML transaction  by redirecting the context to a  Site Cli
ObjGroup: Web
ObjCatName: others
ObjName: Continue with Site Clipper
ObjClass: com.twinsoft.convertigo.beans.statements.ContinueWithSiteClipperStatement
ObjIcon: /images/beans/statements/images/ContinueWithSiteClipperStatement_color_32x32.png
topnav: topnavobj
---
##### Redirects to a <i>Site Clipper connector</i>. 

<i>Continue with Site Clipper</i> statement ends an <i>HTML transaction</i> by redirecting the context to a <i>Site Clipper connector</i>. It is set at the end of an handler to end the <i>HTML transaction</i>, which results in that no other handler nor statement from the transaction is executed after it. <br/>This statement specifies a redirection URL to its parent connector in the transaction's XML output. This rewritten URL is an absolute URL pointing to the current Convertigo project, with a particular syntax:<br/><br/>• it starts with the usual project's path, <br/>• it then specifies the Convertigo context and the <i>Site Clipper connector</i> to use, <br/>• it ends with the <span class="computer">.siteclipper</span> extension, <br/>• after the extension, the target resource URL is concatenated, replacing the '<span class="computer">://</span>' symbols after the target resource protocol, (<span class="computer">http://</span> for example, by a '<span class="computer">/</span>' character. <br/><br/>This gives the following URL form: <br/><span class="computer">http://&lt;convertigo_server_host&gt;:&lt;convertigo_server_port&gt;/convertigo/projects/&lt;project_name&gt;/context=&lt;context_name&gt;&amp;connector=&lt;connector_name&gt;.siteclipper/&lt;target_resource_protocol&gt;/&lt;target_resource_host&gt;/&lt;target_resource_URI&gt;</span> <br/>The <i>Site Clipper connector</i> accessed thanks to this URL then relays all HTTP messages between the client and the target server. For more information about Site Clipper, see <i>Site Clipper connector</i> and related objects documentation. <br/><span class="orangetwinsoft">Note:</span> The <i>Site Clipper connector</i> to which redirect is in the same project. Thus, the <i>HTML transaction</i> and the <i>Site Clipper connector</i> can share the same context. 

Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | standard | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Is active | boolean | standard | Defines whether the statement is active.
Site Clipper connector | String | standard | Define the <i>Site Clipper connector</i> to which redirect.<br/>The target connector can be chosen among the connectors from the same project as the <i>Continue with Site Clipper</i> statement. Indeed, the HTML transaction including the <i>Continue with Site Clipper</i> statement and the <i>Site Clipper</i> connector must share the same context.
