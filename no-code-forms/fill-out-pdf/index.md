---
title: Fill out a PDF document from Convertigo no-code Forms
keywords: pages, authoring, exclusion, frontmatter
last_updated: 24/03/2022
summary: "This chapter describes how to fill out a pdf document with no-code Form Builder"
sidebar: c8o_sidebar
permalink: /no-code-forms/fill-out-pdf/
---

With Convertigo Forms you can fill out a [**PDF form**](https://en.wikipedia.org/wiki/PDF#Forms) from the Convertigo forms responses using a [**PDF form**](https://en.wikipedia.org/wiki/PDF#Forms) template file.

This is done by using a "**Triggered on form submission**" component and choosing into Convertigo Actions library, the "**Fill out a PDF document**" action.

## Compatible Forms components ##
Only the following components are compatible with this feature:
- **Input text**
- **Date**
- **Time**
- **Barcode**
- **Location**
- **Camera**
- **Signature**
- **Checkbox** 

## Compatible PDFs ##

Your PDF, must be a fillable PDF Form.
Also, in order to be linked, the PDF Form object's name and Convertigo form's Technical ID must be the same.

### How to transform a standard PDF to a Fillable PDF ###
In the furthers sections, we will show you how to make your PDF a Fillable PDF Form using a free online tool named [PDF Escape](https://www.pdfescape.com/), but you can also use any software to convert your PDF in a PDF Form such as [Adobe Acrobate DC](https://www.adobe.com/acrobat/how-to/create-fillable-pdf-forms-creator.html) for example.


## How to link a field of the form to a field of the PDF? ##

### Linking an **Input text**, **Date**, **Time**, **Barcode**, or **Location** component to the PDF Form ###

![](/images/c8oForms/forms_fill_out_pdf_1.gif)


1. Go to [pdfescape.com](https://www.pdfescape.com/) and click on Free Online.

2. Click on Upload PDF to PDFescape and browse the PDF you want to transform.
   
3. From the top left tools choose Form Field and select **Text**.
   
4. On the PDF, choose and draw the field you want to fill.
   
5. Then Right click on this zone and choose Object Properties... 
   
6. In the name field, type a name and press ok.
   
7. On the left side of the page, you can click on the save and download icon to get your PDF Form.
   
8. Once you have done it, go back to Convertigo Forms, choose the component you want to link to this field, and set its technical ID according to the name that you previously have chosen for the PDF Form field name.
   
9. Now you can add a "**Triggered on form submission**" component, and select the "**Fill out a PDF document**" action from the Convertigo Actions library.
    
10. Import the PDF Form you previously downloaded and publish your form.
    
11. You can now see the pdf on your responses.


### Linking a **Camera**, or a **Signature**, component to the PDF Form ###

![](/images/c8oForms/forms_fill_out_pdf_2.gif)


1. Go to [pdfescape.com](https://www.pdfescape.com/) and click on Free Online.

2. Click on Upload PDF to PDFescape and browse the PDF you want to transform.
   
3. From the top left tools choose Form Field and select **Submit button**
   
4. On the PDF, choose and draw the field you want to fill.
   
5. Then Right click on this zone and choose Object Properties... 
   
6. In the name field, type a name and press ok.
   
7. On the left side of the page, you can click on the save and download icon to get your PDF Form.
   
8. Once you have done it, go back to Convertigo Forms, choose the component you want to link to this field, and set its technical ID according to the name that you previously have chosen for the PDF Form field name.
   
9. Now you can add a "**Triggered on form submission**" component, and select the "**Fill out a PDF document**" action from the Convertigo Actions library.
    
10. Import the PDF Form you previously downloaded and publish your form.
    
11. You can now see the pdf on your responses.

### Linking a **Checkbox** component to the PDF Form ###

![](/images/c8oForms/forms_fill_out_pdf_3.gif)


1. Go to [pdfescape.com](https://www.pdfescape.com/) and click on Free Online.

2. Click on Upload PDF to PDFescape and browse the PDF you want to transform.
   
3. From the top left tools choose Form Field and select **Checkbox**
   
4. On the PDF, choose and draw the field you want to fill.
   
5. Then Right click on this zone and choose Object Properties... 

6. In the name field, type a name and the suffix: `_1`, then press ok. 
   
7. Repeat the step 4, 5 and 6 for as many checkboxes as you have and, each time, keep the same name and increase suffix to `_2`, `_3`, `_4` etc...
   
8. On the left side of the page, you can click on the save and download icon to get your PDF Form.

9. Once you have done it, go back to Convertigo Forms, choose the component you want to link to this field, and set its technical ID according to the name that you previously have chosen for the PDF Form field name, **WITHOUT THE SUFFIX**.
    
10. The first option of your checkbox will be linked to the name_1 of your PDF, the second to the name_2 etc...
    
11. Now you can add a "**Triggered on form submission**" component, and select the "**Fill out a PDF document**" action from the Convertigo Actions library.
    
12. Import the PDF Form you previously downloaded and publish your form.
    
13. You can now see the pdf on your responses.

### answer to a form with a PDF Action and download the result ###

![](/images/c8oForms/forms_fill_out_pdf_4.gif)

1. Now you can answer the form.
2. When it's done, navigate to the view responses page.
3. At the end of the response page, you will see a link to the filled generated PDFs 
4. Note: If you also have a "**Notify response by email**" action
   1. If the action "**Fill out a PDF document**" action is set before the "**Notify response by email**"
      * The generated PDF **will automatically be added** as an attachment to the mail.
   2. If the action "**Fill out a PDF document**" action is set after the "**Notify response by email**"
      * The generated PDF **will not be added** as an attachment to the mail.
   3. In both cases, the generated PDF will be stored in the answers.

## Example ##

You can download and import this [form (PDF_Form_demo.c8oforms) ](/images/PDF_Form_demo.c8oforms) and import it into your Convertigo Forms.

**Note: that you will have to set again the following [PDF (PDF_Form_tuto.pdf)](/images/PDF_Form_tuto.pdf) into your "Fill out a PDF document" action.**

Resources:
* [PDF_Form_tuto.pdf](/images/PDF_Form_tuto.pdf)
* [PDF_Form_demo.c8oforms](/images/PDF_Form_demo.c8oforms)




