---
title: Interfaces to Convertigo
keywords: pages, authoring, exclusion, frontmatter
last_updated: 21/03/2019
summary: "This chapter offers information about how to access to Convertigo projects and execute transactions and sequences."
sidebar: c8o_sidebar
permalink: /reference-manual/convertigo-mbaas-server/interfaces-to-convertigo/
---
## HTTP protocol interface to Convertigo

Convertigo projects contain "requestable" objects, transactions and sequences, that can be invoked by HTTP protocol. This section describes possible URLs to access Convertigo projects and all reserved variables usable in these URLs.

- [Convertigo URLs](#convertigo-urls)
- [Convertigo reserved parameters](#convertigo-reserved-parameters)

### Convertigo URLs

#### General process
The following general process describes the HTTP protocol used from the client (web browser or application) to the Convertigo server.

##### 1. The client issues an HTTP request to Convertigo to the following root URL :

{% include image.html file="man_img/general_process.jpg" url="images/man_img/general_process.jpg" alt="General Process" %}

 - **ConvertigoServer** is the host name or IP address of your Convertigo server, with possibly a port number.
    - A local Convertigo Studio has as host name *localhost* and, in HTTP, *18080* as default port number, in HTTPS, *18081* as default port number.
    - A Convertigo Server installed locally on your computer shares the same host name: *localhost*. The Convertigo Server default port number is *28080* for HTTP and *28443* for HTTPS.
    - When installed in an existing application server, it has as IP address and ports the IP address and ports of the application server.
    - A Convertigo Cloud server is accessed through its server name, for example: *me.convertigo.net* (no port to provide in this case, either for HTTP or HTTPS).
 - **ConvertigoAppName** defines the name of the Convertigo web application.
    - A local Convertigo Studio or a Convertigo Server installed locally has *convertigo* as Convertigo app name.
    - A Convertigo Cloud server has *cems* as Convertigo app name.
 - **ProjectName** defines the name of the project you want to invoke in Convertigo. If the project doesn’t exist, the application server generates an error (*HTTP 404 Not Found*).
 - **ConvertigoRequester** defines the requester to use on the Convertigo server. It can take several values that are described further (see "Convertigo requesters").


For example, with a project named *test_project* in a local Convertigo Studio:
 - *ConvertigoServer = localhost:18080*
 - *ConvertigoAppName = convertigo*
 - *ProjectName = test_project*
 
 
##### 2. This HTTP request can use the following HTTP verbs: _GET, POST, PUT, DELETE, HEAD_. Convertigo would handle all these verbs the same way, by executing the called transaction / sequence. Only _HEAD_ verb will have a different result, see point 4 of this procedure.

 {{site.data.alerts.note}}
 The verb can be retrieved inside JavaScript code in Convertigo transaction / sequence using the following code line:
 context.httpServletRequest.getMethod()
 For more information about context object fields and methods, <a href="../javascript-objects-apis/#context-object-1">see Context object</a>.
 {{site.data.alerts.end}}

##### 3. The root URL can be followed by a query string, possibly -containing reserved variables and variables to be passed to the invoked transaction / sequence. These variables may also be passed in POST data.

 {{site.data.alerts.note}}
 For more information about specific parameters, <a href="#convertigo-reserved-parameters">see Convertigo reserved parameters</a>.
 {{site.data.alerts.end}} 

##### 4. Convertigo handles the request, executing the requested transaction / sequence, and returns the response to the client.
- Depending on the invoked requester, the response can contain different documents and formats, [see Convertigo requesters](#convertigo-requesters).
- Depending on the HTTP verb used in the request, the response may be different: *HEAD* verb will only return headers in response (following HTTP specifications).

##### 5. The client (web browser or application) retrieves and manages the response, also depending on the invoked requester and the project’s parametrization.

#### Convertigo Requesters

Several requesters can be invoked in Convertigo to execute a transaction / sequence. This section explains in details the different values that can be passed in ConvertigoRequester part of the URL.

#### Weblib requester

This requester is invoked by calling the *index.html* file of the project, i.e. setting the **ConvertigoRequester** at the end of the URL to *index.html*.

For example, with a project named *test_project* in a local Convertigo studio, the URL to call a transaction / sequence is:

{% include image.html file="man_img/weblib_req.jpg" url="images/man_img/weblib_req.jpg" alt="Weblib Requester" %}


The weblib requester automatically includes a complete JavaScript AJAX library based on JQuery that allows:

- invoking Convertigo transactions / sequences / project resources,
- managing the Convertigo responses,
- performing XSL transformation (if necessary),
- encoding request parameters,
- sequencing several calls to Convertigo,
- including in a portal the widget generated from the transaction / sequence response,
- developing interactions between widgets,
- etc. 

{{site.data.alerts.important}}
This is the recommended requester to use.
{{site.data.alerts.end}}

The client requests the project’s index, its request is handled by the JavaScript library, which performs an AJAX call to Convertigo engine and handles the response.

Some parametrization of this library framework can be performed by updating global variables values. Lots of these variables can be configured thanks to weblib reserved variables, that have to be passed in the request. For more information about weblib specific parameters, see [Weblib reserved parameters](#weblib-reserved-parameters).

The parametrization of the engine request, i.e. the definition of the transaction / sequence to call, etc. is done by using engine reserved variables. For more information about engine specific parameters, see [Engine reserved parameters](#engine-reserved-parameters).

#### XML requesters

These requesters are invoked by setting the **ConvertigoRequester** at the end of the URL to the following expression: 

*< PoolName>.< Extension>.*

- **PoolName** defines the name of the pool to invoke, in the case of pools use in the project. It is an optionnal parameter, it can be empty. Any value can be passed in this part of the URL: if a matching pool is found, it is used by Convertigo, if no pool is found, it is ignored and Convertigo returns to the default behavior. For more information about Pool object, see "Pool" documentation and examples.

- **Extension**, ending the URL, can take the following values:
    - xml,
    - cxml,
    - pxml,
    - cpdf.

For example, with a project named test_project not including pools, in a local Convertigo studio, the URL to call a transaction / sequence can be:

{% include image.html file="man_img/weblib_req2.jpg" alt="Weblib Requester 2" %}

The XML requesters allow calling a transaction / sequence of a Convertigo project, possibly in the context of a pool. They allow retreiving the XML response and possibly performing an XSL transformation.

The difference between the four extensions is about the XSL transformation. It is described in the table above:

Table 4 - 1: XML requesters extensions

Extension | Description
--- | ---
.xml | Convertigo sends the transaction / sequence XML as response, possibly including the reference to the XSL file to use for the transformation (defined in the Convertigo project). Then, the client (web browser or application) should perform the XSL transformation.
.cxml | Abbreviation for Convertigo-XML. Convertigo performs the XSL transformation on server side, if a style sheet is defined in the Convertigo project. Then, it sends the result as response to the client.
.pxml | Abbreviation for Pure-XML. Convertigo sends the transaction / sequence XML as response, no XSL transformation is performed nor referenced, whatever is defined in the project.
.cpdf | Abbreviation for Convertigo-PDF. Convertigo performs the XSL:FO transformation on server side, if an XSL:FO style sheet is defined in the Convertigo project. Then, it sends the result as PDF file to the client.

Using these requesters, the client interacts directly with Convertigo engine.

The parametrization of the engine request, i.e. the definition of the transaction / sequence to call and related parameters, is done by using engine reserved variables. For more information about engine specific parameters, see [Engine reserved parameters](#engine-reserved-parameters).

#### JSON requesters

These requesters are invoked by setting the *ConvertigoRequester* at the end of the URL to the following expression: *< PoolName>.< Extension>*.

- **PoolName** defines the name of the pool to invoke, in the case of pools use in the project. It is an optional parameter, it can be empty. Any value can be passed in this part of the URL: if a matching pool is found, it is used by Convertigo, if no pool is found, it is ignored and Convertigo returns to the default behavior. For more information about Pool object, see "Pool" documentation and examples.

- **Extension**, ending the URL, can take the following values:
    - json,
    - jsonp.

For example, with a project named *test_project* not including pools, in a local Convertigo studio, the URL to call a transaction / sequence can be:
{% include image.html file="man_img/json_req.jpg" url="images/man_img/json_req.jpg" alt="JSON requesters" %}

The JSON requesters allow calling a transaction / sequence of a Convertigo project, possibly in the context of a pool, and retrieving the JSON response.

The difference between the two extensions is about cross-domain issues. It is described in the following table:

Table 4 - 2: JSON requesters extensions

Extension | Description
--- | ---
.json | This extension allows an application to request Convertigo through an AJAX call, in the same domain. Then, the application retrieves the transaction / sequence response as a JSON stucture and should handle the data treatment.
.jsonp | This extension allows an application to request Convertigo through a fake AJAX call (dynamic inclusion of script elements), not in the same domain (cross-domain compatibility). Then, the application is called back, receiving as parameter the transaction / sequence response as a JSON stucture, and the call-back function should handle the data treatment.

Using these requesters, the client interacts directly with Convertigo engine, dynamically transforming standard output XML data to JSON structure.

The parametrization of the engine request, i.e. the definition of the transaction / sequence to call and related parameters, is done by using engine reserved variables. For more information about engine specific parameters, see [Engine reserved parameters](#engine-reserved-parameters).

Call-back function specific to JSONP requester is configured using a specific engine reserved variable. For more information about specific engine reserved parameters, [see JSONP specific reserved parameters](#jsonp-specific-reserved-parameters).

#### Binaries requester

This requester is invoked by setting the *ConvertigoRequester* at the end of the URL to the following expression: *.bin*.

For example, with a project named *test_project*, in a local Convertigo studio, the URL to call a transaction / sequence can be:

{% include image.html file="man_img/bin_req.jpg" url="images/man_img/bin_req.jpg" alt="Binaries Requester" %}

The binaries requester allows retrieving the last attachment file downloaded by a transaction / sequence of a Convertigo project. It can be called directly with the transaction extracting the attachment.

Using this requester, the client interacts directly with Convertigo engine.

The parametrization of the engine request, i.e. the definition of the transaction / sequence to call and related parameters, is done by using engine reserved parameters. For more information about engine specific parameters, see [Engine reserved parameters](#engine-reserved-parameters).

### Convertigo reserved parameters

All Convertigo specific parameters are prefixed with '__' (double underscored). Depending on the invoked requester, some reserved parameters can be used by the weblib AJAX framework, some by Convertigo engine.

- [Engine reserved parameters](#engine-reserved-parameters)
- [Weblib reserved parameters](#weblib-reserved-parameters)

#### Engine reserved parameters

Convertigo engine request parametrization, i.e. the definition of the transaction / sequence to call and related execution parameters, is done by using **generic** engine reserved parameters that have to be passed in the request.

Other specific engine reserved parameters exist and can be used to handle **connector-related** specific cases.

#### Generic engine reserved parameters

Here is the list of Convertigo engine-managed reserved parameters, valid and usable for all types of projects, and their description:

Table 4 - 3: Generic engine reserved parameters

{% include /page_part/mbserv_interfacestoc8o_tables.html content='1' %}

#### JSONP specific reserved parameters

The following is the engine reserved parameter specific to JSONP requester and its description:

Table 4 - 4: JSONP specific engine reserved parameters

Parameter name | Description
__callback | Defines the name of the client application function to call back after the Convertigo request execution on a cross-domain platform.

#### Web connector-specific reserved parameters

The following list is the list of web connector-specific engine reserved parameters and their description:

Table 4 - 5: Web connector-specific engine reserved parameters

{% include /page_part/mbserv_interfacestoc8o_tables.html content='2' %}

See also the *__body* and the *__contentType* reserved HTTP single-valued variable documentation in chapter 2 of this manual.

#### Legacy emulator-specific reserved parameters

The following list is the list of legacy emulator-specific engine reserved parameters and their description:

Table 4 - 6: Legacy emulator-specific engine reserved parameters

{% include /page_part/mbserv_interfacestoc8o_tables.html content='3' %}

#### Carioca portal-specific reserved parameters

The following list is the list of specific engine reserved parameters used when Convertigo is accessed through Carioca portal and their description:

Table 4 - 7: Engine reserved parameters for access through Carioca

Parameter name | Description
--- | ---
__sesskey | Authentication key generated by Carioca portal. This key is decoded by Convertigo to check the consistency and origin of the request.
__bCarioca | Set to "true" defines the origin of the request as coming from Carioca portal. If set to "true", the __sesskey variable has to be passed and is verified by Convertigo.
__user | Carioca portal user name.
__password | Carioca portal user password.
__bVic | Set to "true" defines the user as a former VIC portal user.
__VicUser | Former VIC portal user name.
__VicGroup | VIC portal authorization group. Authorization groups are used in the portal to define to which services the user has the right to access.
__VicServiceCode | VIC portal service name.
__VicDteAddress | Connection address of the VIC service.
__VicCommDevice | CommDevice address used for a three thirds architecture (case of the PAVI used for Videotex emulator) through Carioca or VIC portal.


### Weblib reserved parameters

Weblib framework parametrization can be performed by updating global variables values. Lots of these variables can be set thanks to weblib reserved parameters that have to be passed:

- In the request, using a query string that sends all parameters to the network, or
- By a hash query (using a '#') that only sends needed parameters in POST data.

Here is the list of Convertigo weblib-managed reserved parameters and their description:

Table 4 - 8: Weblib reserved parameters

{% include /page_part/mbserv_interfacestoc8o_tables.html content='4' %}

## Web service interface to Convertigo

Convertigo projects can be accessed using web services. This section describes possible URLs to access Convertigo projects through the two types of web services that are supported, then it describes the problem of context state conservation.

### SOAP web services

SOAP WSDL of a Convertigo project can be accessed by using the following URL:
{% include image.html file="man_img/soap_1.jpg" url="images/man_img/soap_1.jpg"%}

Where:

**1**. **ConvertigoServer** is the host name or IP address of your Convertigo server, with possibly a port number.
  - A local Convertigo Studio has as host name localhost and as default port number *18080* for HTTP.
  - A Convertigo Server installed locally on your computer shares the same host name: *localhost*. The Convertigo Server default port number is *28080* for HTTP.
  - A Convertigo Cloud server is accessed through its server name, for example: *me.convertigo.net* (no port to provide in this case).

{{site.data.alerts.note}}For more information about Convertigo URLs, see <a href="#convertigo-urls">Convertigo URLs</a>{{site.data.alerts.end}}
{{site.data.alerts.important}}Accessing a Convertigo project’s WSDL on a Studio or on a Server has a different behavior. In Studio, it uses temporary files dynamically updated while developing the project. In Server, it uses the complete generated WSDL file with schemas.
Prefer to retrieve a project’s WSDL from a Convertigo Server.{{site.data.alerts.end}}

**2** . **ConvertigoAppName** defines the name of the Convertigo web application.
  - A local Convertigo Studio or a Convertigo Server installed locally has convertigo as *Convertigo* app name.
  - A Convertigo Cloud server has *cems* as Convertigo app name.

**3**. **ProjectName** defines the name of the project you want to invoke in Convertigo. If the project doesn’t exist, the application server generates an error (HTTP 404 Not Found).

**4**. **WsType** defines the type of encoding you want for SOAP web service. It corresponds to **SOAP web service requesters** that can be invoked on Convertigo. For more information about the other available requesters, see [Convertigo URLs](#convertigo-urls).

This **_WsType_** part of the URL can take several values that are detailed in following table:

Table 4 - 9: SOAP encoding types

Extension | Description
--- | ---
.ws | This extension is used for RPC encoded web services.
.wsl | This extension is used for document/literal web services. 

{{site.data.alerts.important}}We strongly recommend to use only <i>document/literal</i> SOAP web services nowadays.{{site.data.alerts.end}}

For example, with a project named *test_project* in a local Convertigo Server, the URL to retrieve the SOAP WSDL can be:
{% include image.html file="man_img/soap_2.jpg" url="images/man_img/soap_2.jpg"%}


For the same project in a Convertigo Cloud Server, the URL to retrieve the SOAP WSDL is:
{% include image.html file="man_img/soap_3.jpg" url="images/man_img/soap_3.jpg"%} 

{{site.data.alerts.important}}The project accessed through SOAP web service interface should declare at least one public transaction or sequence, with its schemas extracted. Refer to corresponding "Quick start tutorials" for more information about development and parametrization of such transactions and sequences.
{{site.data.alerts.end}}

### REST web services

Any Convertigo project can be invoked as a REST web service, using the following URL:
{% include image.html file="man_img/rest_1.jpg" url="images/man_img/rest_1.jpg"%}

Where:

**1**. **ConvertigoServer** is the host name or IP address of your Convertigo server, with possibly a port number.
 - A local Convertigo Studio will have as host name *localhost* and as default port number *18080*.
 - A Convertigo Server installed locally on your computer will share the same host name: *localhost*. When installed in an existing application server, it will have as  IP address the IP address of the application server. The Convertigo Server default port number is *28080*.
 - A Convertigo Cloud server is accessed through its server name, for example: me.convertigo.net (no port to provide in this case).

**2**. **ConvertigoAppName** defines the name of the Convertigo web application.
 - A local Convertigo Studio or a Convertigo Server installed locally has convertigo as Convertigo app name.
 - A Convertigo Cloud server has cems as Convertigo app name.

**3**. **ProjectName** defines the name of the project you want to invoke in Convertigo. If the project doesn’t exist, the application server generates an error (HTTP 404 Not Found).

You can notice that this URL uses an **XML requester**; for more information about the other available requesters, see [Convertigo URLs](#convertigo-urls).

For more information about HTTP protocol to call transactions or sequences and the variables to pass to this request, see [HTTP protocol interface to Convertigo](#http-protocol-interface-to-convertigo). 

To expose a project as a REST web service with customized URLs, you may use an **URL Mapper** object.

It allows you to define **Path Mappings** objects to the outside world: /api/v1/accounts/{id}

It generates a **Swagger** compliant definition of your service into a YAML or JSON format, which may be consumed by the **Swagger console** or any other REST client to test the generated API.
{% include image.html file="man_img/rest_2.png" url="images/man_img/rest_2.png"%}

For more information, see [URL Mapper](../../../reference-manual/convertigo-objects/url-mapper/)


### Context state conservation

When using web services, you can have:

- **Stateless web services**: when the response of a web service method does not depend on a previous state left by a preceding web service call. This is also called "atomic" web services.

- **Stateful web services**: when the response of a web service method does depend on a previous state left by a preceding call. Convertigo projects mostly generate stateful web services. For example, you cannot get information from a legacy application or a web application if you don’t call a "login" transaction before.

Consuming stateful web services, the programmer must maintain the HTTP session from its calling application to Convertigo between two methods calls. See the corresponding web service client documentation to do so.

#### A few examples for SOAP clients

If you are using Java AXIS web service client, simply use the following line of code:
{% include image.html file="man_img/context_1.jpg" url="images/man_img/context_1.jpg"%}


If you are using Microsoft .NET web service client, use this code construction (C# Syntax):
{% include image.html file="man_img/context_2.jpg" url="images/man_img/context_2.jpg"%}

#### Case of REST calls

For REST web service calls, be sure that the HTTP client will maintain session cookies with Convertigo.