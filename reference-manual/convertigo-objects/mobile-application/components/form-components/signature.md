---
layout: page
title: Signature
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/mobile-application/components/form-components/signature/
metadesc: c8o-signature.   Displays a Signature pad. This component uses an Angular2 component based on the Signature Pad JavaScript library. For more informati
ObjGroup: Forms
ObjCatName: form-components
ObjName: SignatureComponent
ObjClass: com.twinsoft.convertigo.beans.mobile.components.dynamic.ComponentManager$1
ObjIcon: /images/beans/mobile/components/dynamic/images/signaturecomponent_color_32x32.png
topnav: topnavobj
---
c8o-signature. 
 Displays a Signature pad. This component uses an Angular2 component based on the Signature Pad JavaScript library.
For more information: <a href='https://www.npmjs.com/package/angular2-signaturepad' target='_blank'>angular2-signaturepad</a>.

<span class='orangetwinsoft'><u>Note:</u></span> Make sure to add your component under a <i>Generic Item</i> or <code>&lt;ion-item&gt;</code> to make it work properly in form.
If you'd like to have some label, add a <i>Text</i> under a <i>Div</i>. Do not use <i>Label</i> component.

Name | Description 
--- | ---
Background color | Color used to clear the background. Defaults to 'rgba(0,0,0,0)' (transparent black). Use a non-transparent color e.g. 'white' or 'rgb(255,255,255)' (opaque white) if you'd like to save signatures as JPEG images.
Canvas height | Height of the signature area (px). If not set the component resize to the container height by default.
Canvas width | Width of the signature area (px). If not set the component resize to the container witdh by default.
Control name | The associated declared form's control name.
Dot size | Radius of a single dot. Defaults to 1.5.
Draw throttle | Draw the next point at most once per every x milliseconds. Set it to 0 to turn off throttling. Defaults to 16.
Line max width | Maximum width of a line. Defaults to 2.5.
Line min width | Minimum width of a line. Defaults to 0.5.
Pen color | Color used to draw the lines. Defaults to 'black' or 'rgb(0,0,0)'.
Velocity weight | Weight used to modify new velocity based on the previous velocity. Defaults to 0.7.

