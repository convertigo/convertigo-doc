---
title: Fill out a PDF document from Convertigo no-code Forms
keywords: pages, authoring, exclusion, frontmatter
last_updated: 24/03/2022
summary: "This chapter describes how to fill out a pdf document with no-code Form Builder"
sidebar: c8o_sidebar
permalink: /programming-guide/no-code-forms/fill-out-pdf/
---

## Fill out a PDF document with no-code Form Builder ##

### Description ###

With Convertigo Forms you can fill out a [**PDF form**](https://en.wikipedia.org/wiki/PDF#Forms) from the Convertigo forms responses using a [**PDF form**](https://en.wikipedia.org/wiki/PDF#Forms) template file.

This is done by using a "**Triggered on form submission**" component and choosing into Convertigo Actions library, the "**Fill out a PDF document**" action.

### Compatible components ###
Only the following components are compatible with this feature:
- **Input text**
- **Date**
- **Time**
- **Barcode**
- **Location**
- **Camera**
- **Signature**
- **Checkbox** 

### Compatible PDFs ###

Your PDF, must be a fillable PDF Form.

Also, in order to be linked, the PDF Form object's name and Convertigo form's Technical ID must be the same.

#### How to transform a standard PDF to a Fillable PDF ####
In the furthers sections , we will show you how to make your PDF a Fillable PDF Form using a free online tool nammed [PDF Escape](https://www.pdfescape.com/), but you can also use any software to convert your PDF in a PDF Form such as [Adobe Acrobate DC](https://www.adobe.com/acrobat/how-to/create-fillable-pdf-forms-creator.html) for example.


### How to link a field of the form to a field of the PDF ? ###

#### Linking an **Input text**, **Date**, **Time**, **Barcode**, or **Location** component to the PDF Form ###

1) Go to [pdfescape.com](https://www.pdfescape.com/) and click on Free Online.
2) Click on Upload PDF to PDFescape and upload it the PDF you want to transform.
3) From the top left tools choose Form Field and select **Text**
4) On the PDF type on field to make fillable and draw a zone where you wants your answer to appears
5) Then Right click on this zone and choose Object Properties... 
6) In the field Name: Type a name and then press ok.
7) On the left side of the page, you can click on the save and download icon to get your Form PDF.
8) Then go back to Convertigo Forms choose the component you wants to link to this field, and change its technical ID to the name you previously choose for the pdf form field name.
9) Then you can add  a "**Triggered on form submission**" component and choosing into Convertigo Actions library, the "**Fill out a PDF document**" action. 
10) Import the PDF form you previously downlaoded and publish your form.
11) You can now see the pdf on your responses.

See the following video (you can clik on it to have the sound on):

#### Linking a **Camera**, or a **Signature**, component to the PDF Form ###

1) Go to [pdfescape.com](https://www.pdfescape.com/) and click on Free Online.
2) Click on Upload PDF to PDFescape and upload it the PDF you want to transform.
3) From the top left tools choose Form Field and select **Submit button**
4) On the PDF type on field to make fillable and draw a zone where you wants your answer to appears
5) Then Right click on this zone and choose Object Properties... 
6) In the field Name: Type a name and then press ok.
7) On the left side of the page, you can click on the save and download icon to get your Form PDF.
8) Then go back to Convertigo Forms choose the component you wants to link to this field, and change its technical ID to the name you previously choose for the pdf form field name.
9) Then you can add  a "**Triggered on form submission**" component and choosing into Convertigo Actions library, the "**Fill out a PDF document**" action. 
10) Import the PDF form you previously downlaoded and publish your form.
11) You can now see the PDF filled on your responses.

See the following video (you can clik on it to have the sound on):

#### Linking a **Checkbox** component to the PDF Form ###

1) Go to [pdfescape.com](https://www.pdfescape.com/) and click on Free Online.
2) Click on Upload PDF to PDFescape and upload it the PDF you want to transform.
3) From the top left tools choose Form Field and select **Checkbox**
4) On the PDF type on field to make fillable and draw a zone where you wants your answer to appears
5) Then Right click on this zone and choose Object Properties... 
6) In the field Name: Type a name and add the suffix _1 and then press ok.
7) repeat the step 4, 5 and 6 for as many checkbox as you have and each time keep the same name and increase suffix to _2, _3, _3 etc..
8) On the left side of the page, you can click on the save and download icon to get your Form PDF.
9) Then go back to Convertigo Forms choose your checkbox you wants to link to this field, and change its technical ID to the name you previously choose for the pdf form field name, **without the suffix**.
10) The first option of your checkbox will be linked to the name_1 of your PDF, the second to the name_2 etc...
11) Then you can add  a "**Triggered on form submission**" component and choosing into Convertigo Actions library, the "**Fill out a PDF document**" action. 
12) Import the PDF form you previously downlaoded and publish your form.
13) You can now see the PDF filled on your responses.

See the following video (you can clik on it to have the sound on):


#### Awnser to a form with a PDF Action and download the result ####

See the following video (you can clik on it to have the sound on):

 






