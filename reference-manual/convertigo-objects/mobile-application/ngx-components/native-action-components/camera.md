---
layout: page
title: Camera
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/native-action-components/camera/
metadesc: Defines a  Camera  action component.   This component helps taking a photo or capturing a video.  Supported platform(s)    • Android  • iOS  • Browser
ObjGroup: Native Actions
ObjCatName: native-action-components
ObjName: CameraAction
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/cameraaction_32x32.png
topnav: topnavobj
---
##### Defines a <i>Camera</i> action component. <br/>

 This component helps taking a photo or capturing a video.<br/>
<u>Supported platform(s):</u><br/>
 • Android<br/>
 • iOS<br/>
 • Browser<br/>
<br/>
You can access data from the next action in the chain in (TS) mode with:<code><br/>
 • out: the picture taken</code><br/>
<br/>
If running in browser always return a base64-encoded string, else contains the format specified in the options.<br/>
It uses the native Cordova camera plugin which provides an API for taking pictures and for choosing images from the system's image library.<br/>
For Cordova IOS, you have to uncomment XML parts about the cordova-plugin-camera permissions.<br/>
For more information : <a href='https://github.com/apache/cordova-plugin-camera'>Camera</a>.

Name | Description 
--- | ---
AllowEdit | Allow simple editing of image before selection.
ArrowDir | Direction the arrow on the popover should point. Defined in Camera.PopoverArrowDirection Matches iOS UIPopoverArrowDirection (only for iOS).
CameraDirection | Choose the camera to use (front- or back-facing). Defined in Camera.Direction.
CorrectOrientation | Rotate the image to correct for the orientation of the device during capture.
DestinationType | Choose the format of the return value. Defined in Camera.DestinationType. Default is FILE_URI. DATA_URL, Return image as base64-encoded string, FILE_URI, Return image file URI, NATIVE_URI, Return image native URI (e.g., assets-library:// on iOS or content:// on Android).
EncodingType | Choose the returned image file's encoding. Defined in Camera.EncodingType. Default is JPEG. JPEG Return JPEG encoded image, PNG Return PNG encoded image.
Height | height (only for iOS).
MediaType | Set the type of media to select from. Only works when PictureSourceType is PHOTOLIBRARY or SAVEDPHOTOALBUM. Defined in Camera.MediaType PICTURE: 0 allow selection of still pictures only. DEFAULT. Will return format specified via DestinationType VIDEO allow selection of video only, WILL ALWAYS RETURN FILE_URI, ALLMEDIA allow selection from all media types.
Quality | Picture quality in range 0-100. Default is 80.
SaveToPhotoAlbum | Save the image to the photo album on the device after capture.
SourceType | Set the source of the picture. Defined in Camera.PictureSourceType. Default is CAMERA. PHOTOLIBRARY, CAMERA, SAVEDPHOTOALBUM.
TargetHeight | Height in pixels to scale image. Must be used with targetWidth. Aspect ratio remains constant.
TargetWidth | Width in pixels to scale image. Must be used with targetHeight. Aspect ratio remains constant.
Width | width (only for iOS).
X | abscissa (only for iOS).
Y | ordered (only for iOS).
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Is active | Defines whether the component is active.

