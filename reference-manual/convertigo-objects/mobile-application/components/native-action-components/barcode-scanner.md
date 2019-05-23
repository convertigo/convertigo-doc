---
layout: page
title: Barcode Scanner
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/native-action-components/barcode-scanner/
metadesc: Defines a  BarcodeScanner  action component.   The Barcode Scanner Plugin opens a camera view and automatically scans a barcode, returning the data ba
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: BarcodeAction
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/barcodeaction_color_32x32.png
topnav: topnavobj
---
##### Defines a <i>BarcodeScanner</i> action component. 
 The Barcode Scanner Plugin opens a camera view and automatically scans a barcode, returning the data back to you.
<u>Supported platorm(s):</u> 
 • Android
 • iOS

You can access scanned data from the next action in the chain in (TS) mode with:<code>
 • out.format: The scanned format code
 • out.cancelled: true if the user cancelled the scan
 • out.text: the scanned result</code>

Whenever cordova platform is not available, the value defined in mocking option is returned.
 Default mocked value are: 
<code>{format: 'QR_CODE', cancel: false, text: 'http://www.convertigo.com/'}</code>.
For more information : <a href='https://github.com/phonegap/phonegap-plugin-barcodescanner' target='_blank'>BarcodeScanner plugin docs</a>.

Name | Description 
--- | ---
Disable animations | Disable animations. Supported on iOS only.
Disable success beep | Disable success beep. Supported on iOS only.
Formats | Formats separated by commas. Defaults to all formats except PDF_417 and RSS_EXPANDED.
Orientation | Orientation. Supported on Android only. Can be set to portrait or landscape. Defaults to none so the user can rotate the phone and pick an orientation.
Prefer front camera | Prefer front camera. Supported on iOS and Android.
Prompt | Prompt text. Supported on Android only.
Result display duration | Display scanned text for X ms. 0 suppresses it entirely, default 1500. Supported on Android only.
Show flip camera button | Show flip camera button. Supported on iOS and Android.
Show torch button | Show torch  button. Supported on iOS and Android.
Torch on | Launch with the torch switched on (if available). Supported on Android only.
mocked cancel response | The mocked cancel response for the barcode action in case of running not supported platform. Must be a boolean.
mocked format response | The mocked format response for the barcode action in case of running not supported platform. Must be some text.
mocked text response | The mocked text response for the barcode action in case of running not supported platform. Must be a string.
Comment | Describes the object comment to include in the documentation report.  This property generally contains an explanation about the object. 
Is active | Defines whether the component is active. 

