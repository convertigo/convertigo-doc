---
title: Server JavaScript Objects APIs
keywords: pages, authoring, exclusion, frontmatter
last_updated: 21/03/2019
summary: "This chapter offers information about JavaScript objects available in Convertigo transactions or sequences."
sidebar: c8o_sidebar
permalink: /reference-manual/convertigo-mbaas-server/javascript-objects-apis/
---
## Javelin object javadoc

Javelin is the object representing the legacy screen. Actions can be defined and performed on the legacy screen by programming code using the Javelin object. This section contains the API documentation of the Javelin object.

- [Fields detailed list](#fields-detailed-list)
- [Methods detailed list](#methods-detailed-list)

### Fields detailed list

This section presents the list of fields contained in Javelin object, with their description.

Table 3 - 1: Fields list

Type | Field name | Description
--- | --- | ---
static char | **_AT_AUTO_ENTER_** | Mask for DRCS (downloadable font) attribute bit: 0x8000 (0100 0000 0000 0000).<br>Note: relevant for Videotex only. For 3270 and 5250 this bit indicates an AUTO_TAB flag for the field.
static char | **_AT_AUTO_TAB_** | Mask for double height: 0x0040 (0000 0000 0100 0000). For 32370/5250 also indicates field is AUTO_ENTER.
static char | **_AT_BLINK_** | Mask for blink attribute bit: 0x1000 (0001 0000 0000 0000).
static char | **_AT_BOLD_** | Mask for bold attribute bit: 0x0800 (0000 0100 0000 0000).
static int | **_AT_COLOR_BLACK_** | 
static int | **_AT_COLOR_BLUE_** | 
static int | **_AT_COLOR_CYAN_** | 
static int | **_AT_COLOR_GREEN_** | 
static int | **_AT_COLOR_MAGENTA_** | 
static int | **_AT_COLOR_RED_** | 
static int | **_AT_COLOR_WHITE_** | 
static int | **_AT_COLOR_YELLOW_** | 
static char | **_AT_DOUBLEHEIGHT_** | Mask for double height: 0x0040 (0000 0000 0100 0000). For 32370/5250 also indicate field is AUTO_ENTER.
static char | **_AT_DOUBLEWIDTH_** | Mask for double width attribute bit: 0x0080 (0000 0000 1000 0000).
static char | **_AT_DRCS_** | Mask for DRCS (downloadable font) attribute bit: 0x8000 (0100 0000 0000 0000). Note: relevant for Videotex only. For 3270 and 5250 this bit indicates an AUTO_TAB flag for the field.
static int | **_AT_FIELD_ATTRIBUTE_** | 
static int | **_AT_FIELD_HIDDEN_** | Mask for hidden field attribute: 0x0C0000. Note: relevant for IBM 3270 / 5250 and BULL DKU7xxx only.
static int | **_AT_FIELD_HIGH_INTENSITY_** | Mask for high intensity field attribute: 0x040000. Note: relevant for IBM 3270 / 5250 and BULL DKU7xxx only.
static int | **_AT_FIELD_MODIFIED_** | Mask for modified field attribute: 0x010000. Note: relevant for IBM 3270 / 5250 and BULL DKU7xxx only.
static int | **_AT_FIELD_NUMERIC_** | Mask for numeric field attribute: 0x100000. Note: relevant for IBM 3270 / 5250 and BULL DKU7xxx only.
static int | **_AT_FIELD_PEN_SELECTABLE_** | Mask for pen selectable field attribute: 0x080000. Note: relevant for IBM 3270 / 5250 and BULL DKU7xxx only.
static int | **_AT_FIELD_PROTECTED_** | Mask for protected Field attribute bit: 0x200000. Note: relevant for IBM 3270 / 5250 and BULL DKU7xxx only.
static int | **_AT_FIELD_RESERVED_** | Mask for reserved field attribute: 0x020000. Note: relevant for IBM 3270 / 5250 and BULL DKU7xxx only.
static char | **_AT_HIDDEN_** | Mask for hidden attribute bit: 0x8000 (1000 0000 0000 0000).
static char | **_AT_INK_** | Mask for INK attribute: 0x0007 (0000 0000 0000 0111).
static char | **_AT_INVERT_** | Mask for inverse attribute bit: 0x0200 (0000 0001 0000 0000).
static char | **_AT_MASKED_** | Mask for masked attribute bit: 0x2000 (0010 0000 0000 0000). Note: relevant for VT220 only.
static char | **_AT_NPTUI_** | Mask for NPTUI attribute bit: 0x2000 (0010 0000 0000 0000). Note: relevant for 5250 only.
static char | **_AT_PAPER_** | Mask for PAPER attribute: 0x0038 (0000 0000 0011 1000).
static char | **_AT_PROTECTED_** | Mask for protected attribute bit: 0x4000 (0100 0000 0000 0000). For 5250 reprsent also the NPTUI attribute.
static char | **_AT_UNDERLINE_** | Mask for underline attribute bit: 0x0100 (0000 0001 0000 0000).
static char | **_AT_UPHALF_** | Mask for double height upper row attribute bit: 0x0400 (0000 0100 0000 0000). Note: relevant for VT220 only.
static java.lang.String | **_AS400_** | Defines an IBM 5250 (AS/400) session.
static java.lang.String | **_DKU_** | Defines a Bull DKU session.
static java.lang.String | **_SNA_** | Defines an IBM 3270 (SNA) session.
static java.lang.String | **_TN5250_** | Defines a Twinsoft 5250 (AS/400) session.
static java.lang.String | **_VDX_** | Defines a videotex session.
static java.lang.String | **_VT_** | Defines a VT220 session.

### Methods detailed list

This section presents the list of methods contained in Javelin object, with their description and parameters.

Table 3 - 2: Methods list

{% include /page_part/mbserv_jsobjapi_tables.html %}

## Context object
Context is the object representing the context of execution of transactions or sequences. This section presents the context, how it works in Convertigo, and then contains the API documentation of the Context object.

### Context general presentation

This section presents the Convertigo context :

#### Definition

Each time a request is sent to Convertigo, a context is created in the Convertigo Server engine. A context is a kind of dedicated environment and specific tunnel between the client and the Convertigo Server. It contains all the relevant information required to process the request: a copy of the requested project and all its necessary objects, the transaction or sequence execution scopes, cookies, variables... If a context already exists and is available, it can also be re-used, depending on conditions that are explained thereafter.

#### Identification
A Convertigo context is identified by a *contextId*, based on the session ID.

The standard template for generating the contextId is : *< JSESSIONID>_< contextName>*.

Let’s detail these two parts of the *contextId* :

- **JSESSIONID** : It is the HTTP session ID, identifier of the user session (like *JSESSIONID* in Tomcat). All requests made by the same client have to be done using the same HTTP session in order to keep using the same context.

{{site.data.alerts.note}}
Session ID contains a reference to the informations of the session. This ID is transferred by the client browser, so that the application can link the HTTP request and the associated user session together. This transfer is made using browser cookies. 
{{site.data.alerts.end}}

{{site.data.alerts.important}}Be aware that different clients can have different behavior in terms of session management.<br>
For example:<br><br>
Two different instances of Internet Explorer open two different HTTP sessions. But if you use the New Window menu function from IE, then the spawned window will retain its parent sessions.<br><br>
When requesting the same server, Firefox tabs create different HTTP sessions, but Internet Explorer Tabs will only use one.<br><br>
As for web services clients, like Microsoft .NET, or Java Axis, they most of the time use a specific parameter to retain sessions between succesive calls to a server.
{{site.data.alerts.end}}

- **contextName** : The context name differentiates several contexts created for the same HTTP session. By default, *contextName* value is "*default*", corresponding to only one Convertigo context for a given HTTP session. When no context name is specified by the request, this default context name is always used and re-used. It is not the case in the following situations:
    - Unlike the HTTP session ID, which is fixed by the server at the first connection from a client, the context name can be chosen by the client and sent as a request parameter: *__context=XXXX*. Therefore, consecutive requests must use not only the same HTTP session but also the same context name to re-use the same execution context.
    - In the case of a transaction or sequence initiated by a sequence, through a Call Transaction or a Call Sequence step (not initiated directly by a client), the context name is automatically generated, and can also be specified in the call step.

#### Context object

The Convertigo developer has access to the execution context of a transaction or a sequence directly in this transaction or sequence, simply by using the context object. This object is usable in JavaScript code (in transaction’s core for a Legacy transaction, in a Transaction JS statement for an HTML transaction, in a Sequence JS step for a sequence, etc).

The context object can be useful to store data, for example variables, XML chunks, etc. and retrieve this data in another request execution during the same session, as well as to encode and decode data.

But the context object is also a useful tool to control some behaviors of the running transaction or sequence, like the cache storage or pool locking, or to add elements to the output XML, etc. See the complete API of the object on the section [Context API documentation](#context-api-documentation)

### Context API documentation

The following sections present the fields and methods of the Context object that are usable in transactions and sequences JavaScript code.

#### Fields detailed list
This section presents the list of fields contained in Context object, with their description.

Table 3 - 3: Context fields list

Field name | Type | Description
--- | --- | ---
contextID | String | The context unique identifier.
contextNum | int | The context number (it is incremented by 1 for each newly created context).
creationTime | long | The context creation time (as a timestamp).
httpServletRequest | HttpServletRequest  | The HTTP servlet request object, when the transaction/sequence currently executed is called externally, through HTTP, by the client. When called through internal invoke (for Call Transaction/Call Sequence steps), the HTTP servlet request object is spread from parent sequences/parent context throughout the sequences hierarchy.
httpSession | HttpSession | The HTTP session object.
inputDocument | Document | The input XML document generated by the requester.
isCacheEnabled | boolean | Indicates whether the cache functionnality is enabled. Default value is true, you can set this parameter to false during the transaction/sequence execution in order not to store the XML response in the cache (for example, in case of error, the response should not be stored).
lastAccessTime | long | The last access time to this context.
lockPooledContext | boolean | Indicates whether the context is to be kept in the pool even if it is not in the expected state (i.e. wrong screen class). Usually, a pooled context is automatically destroyed after a transaction execution if it is left on a wrong screen class (not the stable state screen class for this context). This property enables keeping this context alive in the pool for a further use.
outputDocument | Document | The output XML document generated by the current transaction.
parentContext | Context | The context of parent sequence, if the currently executed transaction/sequence has a parent sequence, i.e. if the current transaction/sequence is executed through a Call Transaction/Call Sequence step from another sequence (called parent sequence). Otherwise, this property is null.
remoteAddr | String | The remote address from the calling client.
remoteHost | String | The name of the calling client (if reverse DNS has been enabled).
requireEndOfContext | boolean | Indicates whether the context is to be destroyed after the transaction handling. By default set to false, a context is re-usable. This property can be set to true if the context needs to be destroyed after a transaction execution.
servletPath | String | The servlet path for the current request.
steps | Vector<String> | The steps objects, useful for asynchronous transaction. These are the asynchronous mode steps objects, not to be confused with Steps of Sequences.
tasCommDevice | String | The TAS (VIC or Carioca) communication device for establishing the connection.
tasDteAddress | String | The TAS (VIC or Carioca) remote address for connection.
tasServiceCode | String | The TAS (VIC or Carioca) service code.
tasSessionKey | String | The TAS (VIC or Carioca) session key.
tasUserGroup | String | The TAS (VIC or Carioca) user group.
tasUserName | String | The TAS (VIC or Carioca) user name.
tasUserPassword | String | The TAS (VIC or Carioca) user password.
tasVirtualServerName | String | The TAS (VIC or Carioca) virtual server name.
userAgent | String | The user agent from the calling client.


#### Methods detailed list

This section presents the list of methods contained in Context object, with their description and parameters.

Table 3 - 4: Context methods list

Return Type | Method signature | Description
--- | --- | ---
void | **abortRequestable()** | Requests the end of the transaction/sequence running in the current context as soon as possible and without any condition.
Node | **addTextNode**(Node parentNode, String tagName, String text)<br>**Parameters**:<br><br>*parentNode* - the parent node into which the new node should be inserted<br>*tagName* - the new node tag name<br>*text* - the new node text content<br><br>**Returns**: the created *node* | Adds a new node containing text in the output XML document, under an identified parent node.
Node | **addTextNodeUnderBlock**(String tagName, String text)<br>**Parameters**:<br><br>*tagName* - the new node tag name<br>*text* - the new node text content<br><br>**Returns**: the created node | Adds a new node containing text in the output XML document, under the blocks node (in the context of a Legacy transaction).
Node | **addTextNodeUnderRoot**(String tagName, String text)<br>**Parameters**:<br><br>tagName - the new node tag name<br>text - the new node text content<br><br>**Returns**: the created node | Adds a new node containing text in the output XML document, under the root node (document element).
String | **decodeFromHexString**(String s) | **Parameters**:<br><br>*s* - the string to decrypt; this string must have been encoded by the encodeToHexString() function in order to stay meaningfull.<br><br>**Returns**: the decrypted string or null if any error occurs.<br><br>**See also**: encodeToHexString(String), encodeToHexString(String, String) | Decrypts a string using the triple DES algorithm and the Convertigo default passphrase.
String | **decodeFromHexString**(String passphrase, String s)<br>**Parameters**:<br><br>passphrase - the ciphering passphrase to use for decoding.<br>s - the string to decrypt; this string must have been encoded by the encodeToHexString() function in order to stay meaningfull.<br><br>**Returns**: the decrypted string or null if any error occurs.<br><br>**See also**: encodeToHexString(String), encodeToHexString(String, String) | Decrypts a string using the triple DES algorithm and the passphrase passed as parameter.
String | **encodeToHexString**(String s)<br>**Parameters**:<br><br>s - the string to encrypt.<br><br>**Returns**: the encrypted string; the script is of hexadecimal string format, i.e. it contains only hexadecimal (printable) characters, or null if any error occurs.<br><br>**See also**: decodeFromHexString(String), decodeFromHexString(String, String) | Encrypts a string using the triple DES algorithm and the Convertigo default passphrase.
String | **encodeToHexString**(String passphrase, String s)<br>**Parameters**:<br><br>*passphrase* - the ciphering passphrase to use for encoding.<br>*s* - the string to encrypt.<br><br>**Returns**: the encrypted string; the script is of hexadecimal string format, i.e. it contains only hexadecimal (printable) characters, or null if any error occurs.<br><br>**See also**: decodeFromHexString(String), decodeFromHexString(String, String) | Encrypts a string using the triple DES algorithm and the passphrase passed as parameter.
Object | **get**(String key)<br>**Parameters**:<br><br>*key* - the key identifying the requested object.<br><br>**Returns**: the object bound with the key in the context, or null if no object is bound with this key in the context.<br><br>**See also**: keys(), set(String, Object), remove(String) | Gets the object bound with the specified key in the context, or null if no object is bound with this key in the context.
String | **getAbsoluteRequestedUrl**()<br><br>**Returns**: the absolute requested URL.<br><br>**See also**: getConvertigoUrl(), getProjectUrl() | Gets the absolute URL of currently executed request.
String | **getAuthenticatedUser**()<br><br>**Returns**: the authenticated user ID from the context/session, or null if the context/session is not authenticated.<br><br>**See also**: setAuthenticatedUser(String), removeAuthenticatedUser() | Gets the authenticated user ID from the context/session, if the context/session is authenticated. Otherwise, returns null.
String | **getConvertigoUrl**()<br><br>**Returns**: the absolute URL to Convertigo Server web application.<br><br>**See also**: getAbsoluteRequestedUrl(), getProjectUrl() | Gets the absolute URL to Convertigo server web application.
String | **getProjectDirectory**()<br><br>**Returns**: the path to project directory. | Returns the path to the current project directory.
String | **getProjectName**()<br><br>**Returns**: the project name. | Returns the name of the current project.
String | **getProjectUrl**()<br><br>**Returns**: the absolute URL to the project root.<br><br>**See also**: getAbsoluteRequestedUrl(), getConvertigoUrl() | Gets the absolute URL of the current project root.
Context | **getRootContext**()<br><br>**Returns**: the context of initial parent sequence, i.e. the sequence that is called externally, through HTTP, by the client.<br><br>**See also**: parentContext | Gets the context object of the sequence called by the client, the first sequence called in currently executed sequences hierarchy.<br><br>This can be the current context when no call hierarchy is executed, i.e. when the current context is the context of a transaction/sequence called directly by the client.
Object | **getTransactionProperty**(String propertyName)<br>**Parameters**:<br><br>*propertyName* - the name of the property to retreive.<br><br>**Returns**: the property value; depending on the property this value may be an object. | Retrieves the value of a property of the current transaction.
boolean | **isSOAPRequest**()<br><br>**Returns**: true if the request is a SOAP request (i.e. if the request path ends by .ws or .wsl), otherwise returns false. | Says if the request that initiated the transaction/sequence is a SOAP request or not.
Set< String> | **keys**()<br><br>**Returns**: the collection of keys identifying objects stored in the context.<br><br>See also: get(String), set(String, Object), remove(String) | Returns the collection of keys identifying objects stored in the context.
Properties | **loadPropertiesFromProject**(String fileName)<br>**Parameters**:<br>*fileName* - the name of the properties file to load.<br><br>**Returns**: the loaded properties. | Load properties from a file located in current project folder.
Properties | **loadPropertiesFromWebInf**(String fileName)<br>**Parameters**:<br>*fileName* - the name of the properties file to load.<br><br>**Returns**: the loaded properties. | Load properties from a file located in WEB-INF folder.
Object | **project.get**(String key)<br>**Parameters**:<br>*key* - the key identifying the object to get.<br><br>**Returns**: the value if exists or *null*<br><br>**See also**: project.set(key, value) | Gets the value in a global shared memory across the project. Return *null* if the *key* doesn't exist.
void | **project.set**(String key, Object value)<br>**Parameters**:<br>*key* - the key identifying the object to set.<br>*value* - the value to set, *null* to remove.<br><br>**See also**: project.get(key) | Sets a value in a global shared memory across the project.
void | **remove**(String key)<br>**Parameters**:<br>*key* - the key identifying the object to remove.<br><br>**See also**: get(String), keys(), set(String, Object) | Removes the object bound with the requested key from the context.
void | **removeAuthenticatedUser**()<br><br>**See also**: getAuthenticatedUser(), setAuthenticatedUser(String) | Removes the authenticated user ID from the context/session. The context/session is not authenticated anymore.
Object | **server.get**(String key)<br>**Parameters**:<br>*key* - the key identifying the object to get.<br><br>**Returns**: the value if exists or *null*<br><br>**See also**: server.set(key, value) | Gets the value in a global shared memory across the server. Return *null* if the *key* doesn't exist.
void | **server.set**(String key, Object value)<br>**Parameters**:<br>*key* - the key identifying the object to set.<br>*value* - the value to set, *null* to remove.<br><br>**See also**: server.get(key) | Sets a value in a global shared memory across the project.
boolean | **savePropertiesToProject**(String fileName, Properties properties)<br>**Parameters**:<br>*fileName* - the name of the file to save properties.<br>*properties* - the properties to save.<br><br>**Returns**: true if the save succeeds. | Saves properties in a properties file in current project folder
boolean | **savePropertiesToWebInf**(String fileName, Properties properties)<br>**Parameters**:<br>*fileName* - the name of the file to save properties.<br>*properties* - the properties to save.<br><br>**Returns**: true if the save succeeds. | Saves properties in a properties file in WEB-INF folder.
void | **set**(String key, Object value)<br>**Parameters**:<br>key - the key identifying the object.<br>*value* - the object to bind with the key.<br><br>**See also**: get(String), keys(), remove(String) | Stores an object identified by a key into the context.


void | **setAuthenticatedUser**(String userID)<br>**Parameters**:<br>userID - the user ID that has to be positioned in context/session as authenticated user.<br><br>**See also**: getAuthenticatedUser(), removeAuthenticatedUser() | Sets the context/session as authenticated and stores the userID as the authenticated user ID.
boolean | **waitAtScreenClass**(int timeout, int hardDelay)<br>**Parameters**:<br>timeout - the time (in ms) we have to wait for the screen class.<br>hardDelay - a delay (in ms) added after the screen class has arrived.<br><br>**Returns**: true if we the screen did arrive, false otherwise. | This method only concerns Minitel projects.<br><br>Waits for one of the screens described by the screen classes in the project to arrive. The method waits for all the screen classes except the current one. You can use waitAtScreenClass() method to synchronize your handler before returning "redetect", "accumulate" or "skip".
boolean | **waitNextPage**(String action, int timeout, int hardDelay)<br>**Parameters**:<br>action - the action to perform before waiting.<br>timeout - the time (in ms) we have to wait for the screen class.<br>hardDelay - a delay (in ms) added after the screen class has arrived.<br><br>**Returns**: true if we the screen did arrive, false otherwise. | This method only concerns Minitel projects.<br>Waits for a new page for the same screen class or a new screen class.<br><br>The method wait for one of the screens described by the screen classes in the project to arrive. We wait for all the screen classes except the current one. In the case of a next page on the same screen class, waitNextPage() will monitor the cursor position. the method will return when the cursor position returns to the same position it was before calling waitNextPage().<br><br>You can use waitNextPage() method to synchronize your handler before returning "*redetect*", "*accumulate*" or "*skip*".

#### Interesting methods in Context fields

Some fields of Context object are themselves objects, containing interesting methods to use in Convertigo transactions and sequences JavaScript code. The following list present these objects methods, with their description and parameters.

Table 3 - 5: Interesting methods in Context fields

Return Type | Method signature | Description
--- | --- | ---
String | context.httpServletRequest.getMethod() | Returns the name of the HTTP method with which the request to Convertigo was made. It can be GET, POST, PUT, DELETE, HEAD.

## Project API documentation

The following sections present the methods of the **project** object that are usable in transactions and sequences JavaScript code.

### Methods detailed list
This section presents the list of methods contained in **project** object, with their description.

Table 4 - 1: **project** methods list

Return Type | Method signature | Description
--- | --- | ---
void | **set(key, value)** | Stores an object identified by a key, in the Project, shared by users and survive until the Engine is stopped or restarted.
Object | **get(key)** | Gets the object bound with the specified key in the Project, or null if no object is bound with this key.

### Sample
```
var sharedObject = project.get("mySharedObject");
if (sharedObject == null) {
    project.set("mySharedObject", sharedObject = {});
}
sharedObject.lastCall = new Date();
```

## Server API documentation

The following sections present the methods of the **server** object that are usable in transactions and sequences JavaScript code.

### Methods detailed list
This section presents the list of methods contained in **server** object, with their description.

Table 4 - 1: **server** methods list

Return Type | Method signature | Description
--- | --- | ---
void | **set**(key, value) | Stores an object identified by a key, in the Server, shared by users and survive until the Engine is stopped or restarted.
Object | **get**(key) | Gets the object bound with the specified key in the Server, or null if no object is bound with this key.

### Sample
```
var sharedObject = server.get("mySharedObject");
if (sharedObject == null) {
    server.set("mySharedObject", sharedObject = {});
}
sharedObject.lastCall = new Date();
```

## Include API documentation

The following sections present the global function **include** usable in transactions and sequences JavaScript code.

### Function API

Return Type | Method signature | Description
--- | --- | ---
void | **include**(path) | Include to the scope the Javascript file resolved by the `path` variable, relative to the current project.

### Sample
```
include("js/myCommonLib.js");
myCommonFunction();
```

## Use API documentation

The following sections present the global function **use** usable in transactions and sequences JavaScript code.

### Function API

Return Type | Method signature | Description
--- | --- | ---
void | **use**("expression") | Load and cache to the shared Project memory to save time when using native Java classes.

### Sample
```
var md5 = ("org.apache.commons.codec.digest.DigestUtils.md5Hex"); // saving time for next calls
log.message("'Hello World!' md5 is: " + md5("Hello World!"));
```

## Add your own Java code or library

The JavaScript code can call Java classes already loaded by Convertigo (like some Apaches libraries or internal to Convertigo). You can also provide your own jar file or Java classes.
Java classes or methods loading can be speedup by the **[use function](#use-api-documentation)**.
JDBC drivers can also be overridden with this feature.

### Shared for all project

Java classes or jars can be added to the `<convertigo workspace>/libs` folder but not in sub folder. If you have classes files, you can add them to `<convertigo workspace>/libs/classes` folder.

{{site.data.alerts.note}}
In Studio, use the menu `Convertigo/Open Convertigo` workspace folder to access to the &lt;convertigo workspace&gt;.
{{site.data.alerts.end}}

### For a specific project

Java classes or jars can be added to the `<project dir>/libs` folder but not in sub folder. If you have classes files, you can add them to `<project dir>/libs/classes` folder.

{{site.data.alerts.note}}
The jars and classes can be also used for projects that depend on this project. 
{{site.data.alerts.end}}

{{site.data.alerts.important}}
When JavaScript search for a Java class or method, it start searching in the current project `libs` folder, then in its project dependencies, then the `&lt;workspace&gt;/libs` and finally to the Convertigo lib folder.
{{site.data.alerts.end}}
