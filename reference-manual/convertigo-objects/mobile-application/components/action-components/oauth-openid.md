---
layout: page
title: OAuth / OpenID
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/action-components/oauth-openid/
metadesc: OAuth login.   Enable the applications to use oAuth compliant authentication services such as LinkedIn, Microsoft Azure or any other OpenID compliant 
ObjGroup: Actions
ObjCatName: action-components
ObjName: OAuthLoginAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/oauthloginaction_color_32x32.png
topnav: topnavobj
---
OAuth login. <br/>

 Enable the applications to use oAuth compliant authentication services such as LinkedIn, Microsoft Azure or any other OpenID compliant IDP.<br/>
<br/>
This action will work on web and devices. On web browsers this will result by opening a popup window asking the user for credentials. On devices, the provider login screen will be pushed on the page stack.<br/>
<br/>
This action requires the <b>lib_OAuth</b> project to be installed in the Studio workspace and deployed on the target Convertigo MBaaS servers.<br/>
<br/>
This actions outputs in the <i>out</i> an object that can be:<br/>
 • <code>{'login':'ok','object':{...provider metadata ...}}</code> if the users starts a new session with Convertigo MBaaS server<br/>
 • <code>{'token':'... OAuth token data ...'}</code> if a session has already been established with Convertigo MBaaS server.<br/>
<br/>
<h2>Provider Specific Documentation</h2><br/>
 • Microsoft Azure AD: You have to declare your app in the Microsoft Application Registration Portal (<a href='https://apps.dev.microsoft.com'>https://apps.dev.microsoft.com</a>). You will be given a Client Id, use this to configure the <b>Client ID</b> property.<br/>
<br/>
You must also configure two redirections urls:<br/>
<br/>
 <i>http://localhost:18080/convertigo/projects/lib_OAuth/getToken.html</i> and.<br/>
 <i>https://login.live.com/oauth20_desktop.srf</i>.<br/>
<br/>
The first one will be used for developping in the studio, the second one when the project will be deployed on a Convertigo MBaaS Server.<br/>
<br/>
 • LinkedIn : You have to declare you app in the LinkedIn API portal (<a href='https://www.linkedin.com/secure/developer?newapp='>https://www.linkedin.com/secure/developer?newapp=</a>). You will be given a <b>Client ID</b> and a <b>Client Secret</b>.<br/>
<br/>
You must also declare two redirection URLs:<br/>
<br/>
<i>http://localhost:18080/convertigo/projects/lib_OAuth/getTokenLinkedIn.html</i> and.<br/>
<i>https://www.convertigo.com/authorize</i>.<br/>
<br/>
The first one will be used for developping in the studio, the second one when the project will be deployed on a Convertigo MBaaS Server.<br/>
<br/>
LinkedIn OAuth requires configuration on the client side and the Convertigo MBaaS server side. On the client side configure the given <b>Client ID</b> value in the <b>Client ID</b> property. On the Convertigo MBaaS side,  configure two symbols with the admin console :<table><tr><td>lib_oauth.linkedin.clientid</td><td>Client ID value</td></tr><tr><td>lib_oauth.linkedin.keysecret</td><td>Client Secret value</td></tr></table>.

Name | Description 
--- | ---
Authorization endpoint | For OpenID only, specifies the authorization end point url. Mandatory.
Client ID | The OAuth Client ID as configured in the provider's portal.
OAuth Provider | The OAuth login provider: may be one of the predefined providers such as Azure, LinkedIn. If set to a given provider, will automatically configure unset properties to predefined values. These setting can be overriden by explicilty setting a value.
Redirect URI | For OpenID only, specifies an authorized redirect uri. Mandatory.
Response Type | The response type. If not set, response type is automatically configured from the 'provider' setting, by you may override this setting here.
Scope | The Scope permissions. If not set, scopes are automatically configured from the 'provider' setting, by you may override this setting here.
Server LoginSequence | &lt;Project.Sequence&gt;. The MBaaS Server sequence to call for login. If not set, is automatically configured from the 'provider' setting. You may override this setting here.
Server checkToken | &lt;Project.Sequence&gt;. The MBaaS Server sequence to call for checking tokens. If not set, is automatically configured from the 'provider' setting. You may override this setting here.
Tenant ID | The AzureAD tenant ID as configured in the AzureAD portal. (AzureAD only) If left empty, will default to 'common'
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

