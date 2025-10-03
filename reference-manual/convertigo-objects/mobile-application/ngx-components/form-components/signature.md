---
layout: page
title: Signature
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/ngx-components/form-components/signature/
metadesc: c8o-signature.   Displays a Signature pad. This component uses an Angular2 component based on the Signature Pad JavaScript library. For more informati
ObjGroup: Forms
ObjCatName: form-components
ObjName: SignatureComponent
ObjClass: ion_objects.json
ObjIcon: /images/beans/ngx/components/dynamic/images/signature_32x32.png
topnav: topnavobj
---
c8o-signature. <br/>

 Displays a Signature pad. This component uses an Angular2 component based on the Signature Pad JavaScript library.<br/>
For more information: <a href='https://github.com/szimek/signature_pad'>signature_pad</a>.<br/>
<br/>
<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.<br/>


Name | Description 
--- | ---
Background color | Color used to clear the background. Defaults to 'rgba(0,0,0,0)' (transparent black). Use a non-transparent color e.g. 'white' or 'rgb(255,255,255)' (opaque white) if you'd like to save signatures as JPEG images.
Binding | The object or variable to bind with the control.
Canvas height | Height of the signature area (number of pixels). If not set the component resize to the container height by default.
Canvas width | Width of the signature area (number of pixels). If not set the component resize to the container witdh by default.
Control name | The associated declared control name.
Dot size | Radius of a single dot. Defaults to 1.5.
Draw throttle | Draw the next point at most once per every x milliseconds. Set it to 0 to turn off throttling. Defaults to 16.
Line max width | Maximum width of a line. Defaults to 2.5.
Line min width | Minimum width of a line. Defaults to 0.5.
Pen color | Color used to draw the lines. Defaults to 'black' or 'rgb(0,0,0)'.
Velocity weight | Weight used to modify new velocity based on the previous velocity. Defaults to 0.7.
Comment | Describes the object comment to include in the documentation report.  <p>This property generally contains an explanation about the object.</p>
Identifier | Defines the component identifier.
Is active | Defines whether the component is active.

