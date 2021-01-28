---
title: Providing backend services to No Code Forms
keywords: pages, authoring, exclusion, frontmatter
last_updated: 28/01/2021
summary: "This chapter describes how to create data for Convertigo Form Builder"
sidebar: c8o_sidebar
permalink: /programming-guide/creating-data-for-c8o-forms/
---

# Why do we need data sources for Convertigo Form Builder ? # 

Convertigo Form Builder data source is a **powerful feature** that allows you to **expose data** from external services to your end users. 

You can get any data from **any kind of services**, transform it, and then deliver it to your end users as a simple data source **to be used in the no-code environnment**. 

**Write once, use many times**: Once you have created a data source, it can be used by any of your users to create powerful **No-code applications in a few clicks**. 

# Creating a data source for Convertigo Form Builder #

Data sources, are created with Convertigo’s low-code platform [Convertigo studio](https://www.convertigo.com/mobile-application-development-studio/). Download it from [there](https://github.com/convertigo/convertigo/releases).

To do so, you will have to create a [Sequence](https://www.convertigo.com/documentation/develop/reference-manual/convertigo-objects/sequencer/generic-sequence/). A Sequence defines and orchestrates a series of actions in a low-code way.

## Make a sequence ready for Convertigo Form Builder ##
### Expose a sequence as a data source ###

A sequence name has to be **prefixed** by “formssource_” to be visible as a source from Convertigo Form Builder

### Expose a variable as an option of the data source ###
If you want to expose some sequence's variables, you'll have to prefix their names by "forms_".
Thoses variables will be seen as **options** by the no-code maker. 

Actually, they are two types of variables: 
* Standards ones: They offers to the user the possibility to be filled by typing text and using values of other components of the forms in a no-code way. Advanced users can also use JavaScript expressions.
* HTML ones: They offer to the user the possibility to use a WYSIWYG editor to format theirs contents in a no-code way. They will be able to drag and drop components of the form to use their value. The sequence will receive in this variable an HTML string value.

By default variable's type are standard, if you want to use HTML ones enter "html" value into Descripiton field of Properties of the variable 

### Documentation and internationalization for the users of data sources ###

You can provide documentation using the comment field of the Sequence, or of the variable. This documentation will be displayed within the no-code studio to the app maker. 
If you want to internationalize your comments you can follow the following syntax: 

```html
<div class="en">Get the list of <b>company's</b> employees</div> <!--for English support-->
<div class="fr">Obtenir la liste des employés de <b>l'entreprise</b></div> <!--for French support-->
<div class="es">Obtener la lista de empleados de la <b>empresa</b></div> <!--for Spanish support-->
<div class="it">Ottenere l'elenco dei dipendenti <b>dell'azienda<b></div> <!--for Italian support-->
```

Each div contains a class called "en" for English, "fr" for French, "es" for Spanish, and "it" for Italian. 

You can use any of the [ISO 639-1](https://fr.wikipedia.org/wiki/Liste_des_codes_ISO_639-1) to tag your documentation

Depending on the language of the no-code maker user, the correct language will use to display the documentation. 

## Data sources compatible with grids
Each kind of component is expecting different kind of data. So they are some specificities for grids.
### example of structure expected ###

![alt illustration](../../images/c8oForms/example_data_source_grid.PNG)

### an example of json structure returned by a grid data source
``` json
{
 "data": [
  {
    "__rowValue":"productRef123456",
    "image": {
        "displayValue": "<img style=\"width:50px\" src=\"https:\/\/static.openfoodfacts.org\/images\/products\/327\/408\/000\/5003\/front_en.574.200.jpg\" \/>",
        "displayName":"Logo",
        "type": "html",
        "value":"front_en.574.200.jpg"
    },
    "name": "Eau de source naturelle",

  },
  {
    "__rowValue":"productRef123456",
    "image": {
        "displayValue": "<img style=\"width:50px\" src=\"https:\/\/static.openfoodfacts.org\/images\/products\/301\/762\/042\/2003\/front_es.225.200.jpg\" \/>",
        "displayName":"Logo",
        "type": "html",
        "value":"front_es.225.200.jpg"
   },
   "name": "Crema de Avellanas con cacao",
  }
 ]
}
```