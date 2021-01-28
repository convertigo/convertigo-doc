---
title: Creating a data source for Convertigo Form Builder
keywords: pages, authoring, exclusion, frontmatter
last_updated: 28/01/2021
summary: "This chapter describes how to create data for Convertigo Form Builder"
sidebar: c8o_sidebar
permalink: /operating-guide/creating-data-for-c8o-forms/
---

#  Creating a data source for Convertigo Form Builder

Data sources, are created with Convertigo’s low-code platform [Convertigo studio](https://www.convertigo.com/download/).


## Data source compatible with grids

### example of structure expected ###

* **data**: *a complex named "data"*
  * **@type** = "array"
  * **__rowValue**: *(optional) the value to be returned by this row when selected. Can be a string, a number, an array, or an Object. If not defined, columns value will be returned as an Object.*
  * **item**: *a complex named "item"*
    * **@type** = "object"
    * **col1**: *a complex named as you want, (here col1), that holds the data to display and return from your first column*
      * **displayValue**: *a string to be displayed*
      * **displayName**: *a string thats define the name of the column to be displayed*
      * **type**: *the type of column, can be "text", or "html". If html is choosen, the display value will be rendered as HTML* 
      * **value**: *(optional) the value to be retured by this cell. If not defined, displayValue will be returned*
    * **col2**: *a simple string named as you want*

### an example of json structure that can be returned
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