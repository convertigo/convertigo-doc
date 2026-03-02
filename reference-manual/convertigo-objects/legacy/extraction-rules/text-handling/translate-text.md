---
layout: page
title: Translate text
sidebar: c8o_sidebar
permalink: reference-manual/convertigo-objects/legacy/extraction-rules/text-handling/translate-text/
metadesc: Translates blocks of text according to a given dictionary.    This rule translates the blocks on which it is applied using a dictionary file that is d
ObjGroup: Legacy
ObjCatName: text-handling
ObjName: Translate text
ObjClass: com.twinsoft.convertigo.beans.common.TranslateText
ObjIcon: /images/beans/common/images/translatetext_color_32x32.png
topnav: topnavobj
---
##### Translates blocks of text according to a given dictionary.

This rule translates the blocks on which it is applied using a dictionary file that is defined by the **Dictionary** property.

The translation is applied block by block, meaning that the block text content is searched as key in the dictionary to find its translation. Blocks have to be split according to dictionary entries.

In order to manage several languages, the dictionary file name can automatically be extended with a "lang" suffix which value is retrieved from the `lang` attribute of the document element of the output XML.

The `lang` attribute of the document element is set by Convertigo using the `__lang` reserved parameter value. Once the `__lang` reserved parameter is received, the context keeps and re-uses this value in every other transaction/sequence output in the same context.

You can also update this attribute by script in a transaction's core. To do so, you can use the following code in one of its handlers:

`dom.getDocumentElement().setAttribute("lang", "en-us");`The dictionary files should always be created with a name of the following form `<baseName>_<lang>.txt`, one file by needed language.

One dictionary file should define all text matches between the original application language and the output language. It should be written using the following format:

- the original text/word on a first line,
- the translated text/word on a second line,
- an empty line as separator,
- etc.

Not found texts/words will appear in the Convertigo engine logs and may be automatically listed in an orphans file, depending on the **Generate orphans list** property value.


Property | Type | Category | Description
--- | --- | --- | ---
Comment | String | configuration | Describes the object comment to include in the documentation report.<br/>This property generally contains an explanation about the object.
Dictionary base path | String | configuration | Base path used to retrieve the dictionary file read for the translations.<br/>This path is either absolute or relative to Convertigo environment. Relative paths starting with:<br/><br/>- `./` are relative to Convertigo workspace,<br/>- `.//` are relative to current project folder.<br/><br/>The dictionary file path includes the path of the folder where the dictionary file can be found, the base name of the file itself, the language and the file extension. It should be of the following form `<basePath><baseName>_<lang>.txt` with:<br/><br/>- the `<basePath>` being the folder where the dictionary file can be found,<br/>- the `<baseName>` being the dictionary file base name,<br/>- the `<lang>` being overwritten by the `lang` attribute value of the document element of the output XML.<br/><br/>**Note:** This property value should only contain ``, as the language and file extension will be automatically added.
Encoding | String | configuration | Defines the encoding used in the dictionary files.<br/>Default value for encoding is `UTF-8`.
Generate orphans list | boolean | configuration | If true, unknown texts/words are written in a `<basePath><baseName>_<lang>_orphans.txt` file.<br/>Unknown texts/words are block text contents that are not found in the dictionary. This property can be activated in development environment to help the developer finding the dictionary problems or project inconsistencies.<br/><br/>**Note:** This should be disabled in production environment to preserve resources.
Is active | boolean | configuration | Defines whether the extraction rule is active.
Is final | boolean | configuration | Defines if the extraction is final, i.e. whether pending extraction rules should try to match on the current extraction rule matching blocks.<br/>If set to `true`, once the rule applies on a matching block, Convertigo doesn't apply the following rules on this block. This can be used to prevent a block from being modified by other rules.
Attributes | int | selection | Defines the presentation attributes on which the rule applies, i.e. the rule applies on blocks matching these presentation attributes.<br/>This property allows to configure the rule so that it applies only to parts of screens having specific attributes, for example green text on black background.<br/><br/>Presentation attributes to configure are :<br/><br/>- **Color**: `Foreground` color, `Background` color, to choose in a list of predefined colors or "not to take into account".<br/>- **Decoration**: `bold`, `reverse`, `underlined`, `blink`, for each decoration choose between "with the decoration", "normal" (i.e. without the decoration), or "not to take into account".
Screen zone | XMLRectangle | selection | Defines the screen zone on which the rule applies, i.e. the rule applies on blocks completely contained in this screen area.<br/>This property allows to configure the rule so that it applies only to areas of screens. All blocks found within the specified perimeter are matching this screen zone and can be processed by the rule.<br/><br/>The screen area is defined through four coordinates:<br/><br/>- x (area left corner),<br/>- y (area upper corner),<br/>- w (area width),<br/>- h (area height).<br/><br/>All values are given in characters, with the upper left corner being (x=0, y=0).<br/><br/>`-1` represents an undefined value: `(x=-1, y=-1, w=-1, h=-1)` is an undefined area representing the whole screen, i.e. all blocks, whatever their coordinates, are matching this screen zone and can be processed by the rule.
Type | String | selection | Defines, using a regular expression, to which block types the rule applies.<br/>For example, if set to:<br/><br/>- `static`, the rule applies to blocks of `static` type only.<br/>- `static &#124; field`, the rule applies to blocks of `static` or `field` type only.<br/>- `[^field]`, the rule applies to all but `field` type blocks.<br/><br/>**Note:**<br/><br/>- For more information about regular expression patterns, see the following page: `http://www.regular-expressions.info/reference.html`.<br/>- To test regular expressions, you can use the regular expression tester at the following URL: `http://www.regular-expressions.info/javascriptexample.html`.
