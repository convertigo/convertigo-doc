---
layout: page
title: Google Login
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/mobile-components/action-components/google-login/
metadesc: Defines a  Google Login / Logout  action component.   This component helps login in or logout using Google. It uses Google login to authenticate users
ObjGroup: Actions
ObjCatName: action-components
ObjName: GooglePlusLoginAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/mobile/components/dynamic/images/googleloginaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>Google Login / Logout</i> action component. <br/>

 This component helps login in or logout using Google. It uses Google login to authenticate users.<br/>
<br/>
Setup needs some configuration. Declare your app in <a href='https://developers.google.com/mobile/add?platform=android&cntapi=signin'>https://developers.google.com/mobile/add?platform=android&cntapi=signin</a> for Android apps.<br/>
<br/>
Use <a href='https://developers.google.com/mobile/add?platform=ios&cntapi=signin'>https://developers.google.com/mobile/add?platform=ios&cntapi=signin</a> for iOS apps.<br/>
<br/>
See also some documentation on <a href='https://ionicframework.com/docs/v3/native/google-plus/'>https://ionicframework.com/docs/v3/native/google-plus/</a> about the Cordova plugin used.<br/>
 You can access the data from the next action in the chain in (TS) mode with:<br/>
<br/>
<code><br/>
 • out.email: The email<br/>
 • out.userId: the user id<br/>
 • out.displayName: the display name<br/>
 • out.familyName: the family name<br/>
 • out.givenName: the given name<br/>
 • out.imageUrl: the image url<br/>
 • out.idToken: the id token<br/>
 • out.serverAuthCode: the server authentication code<br/>
 • out.accessToken: the access token</code><br/>
 Whenever cordova platform is not available, the value defined in mocked response option is returned.<br/>
 Default mocked value for login are <code>{email: 'user@convertigo.com', userId: 'my_id', displayName: 'John Doe', familyName: 'Doe', givenName: 'John', imageUrl: 'http://saffroninteractive.com/wp-content/uploads/2017/10/empty-avatar2.png', idToken'my_id_token', serverAuthCode: '12', accessToken: 'my_access_token'}</code>.<br/>
 Default mocked value for logout is <code>true</code>.

Name | Description 
--- | ---
Action | The action to do can be Login or Logout.
Web Client ID | The web client ID (Optional). Has to be set if you want to retrieve an 'idToken' or a 'serverAuthCode'.
mocked access token login | The mocked response access token for the GooglePlus login action in case of running not supported platform. Must be a string.
mocked display name | The mocked response display name for the GooglePlus login action in case of running not supported platform. Must be a string.
mocked email | The mocked response email for the GooglePlus login action in case of running not supported platform. Must be a string.
mocked family name | The mocked response family name for the GooglePlus login action in case of running not supported platform. Must be a string.
mocked given name | The mocked response given name for the GooglePlus login action in case of running not supported platform. Must be a boolean.
mocked id token | The mocked response token for the GooglePlus login action in case of running not supported platform. Must be a string.
mocked image url | The mocked response image url for the GooglePlus login action in case of running not supported platform. Must be a string.
mocked response logout | The mocked response logout for the GooglePlus login action in case of running not supported platform. Must be a boolean.
mocked server auth code login | The mocked response server auth code for the GooglePlus login action in case of running not supported platform. Must be a string.
mocked user id | The mocked response user id for the GooglePlus login action in case of running not supported platform. Must be a string.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

