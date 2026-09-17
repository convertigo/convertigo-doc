---
title: Production deployment recommendations
keywords: production, deployment, reverse proxy, ingress, https, configuration
last_updated: 09/17/2026
summary: "This chapter gathers the settings usually expected when a Convertigo Server is opened to end users: HTTPS termination, access to the administration console, public origins, error responses and API discovery."
sidebar: c8o_sidebar
permalink: /operating-guide/production-deployment-recommendations/
---
Convertigo Server ships with defaults that favor development and support: detailed error responses, open API discovery, an administration console reachable from anywhere. This chapter lists what is usually adjusted before a server is opened to end users. It applies to every packaging (war file, Docker image, Kubernetes) and to Convertigo 8.4.3 and later unless stated otherwise.

None of these settings is mandatory: choose the ones that match the way your applications are exposed.

## Terminate HTTPS in front of Convertigo

Convertigo is normally deployed behind a component that terminates TLS: a reverse proxy, a load balancer or a Kubernetes ingress. This component is the right place for everything that depends on the public HTTPS endpoint:

* the TLS certificate and the accepted protocol versions;
* the `Strict-Transport-Security` header, for example `max-age=31536000; includeSubDomains`, once the site is served over HTTPS only;
* the redirection from HTTP to HTTPS.

Convertigo does not emit `Strict-Transport-Security` itself, because it cannot know whether the original request was made over HTTPS.

Since 8.4.3, Convertigo adds `X-Content-Type-Options: nosniff` and `Referrer-Policy: strict-origin-when-cross-origin` to its responses, and prevents the administration console from being displayed inside a page of another site. Applications that must be embedded in another site are not affected.

## Limit access to the administration console

The administration console and its services are protected by authentication and roles. When the console does not have to be reachable from the Internet, also restrict these paths at the reverse proxy, ingress, firewall or network level, for example to the addresses of your administrators or to a VPN:

* `/convertigo/admin/`
* `/convertigo/admin/services/`
* `/convertigo/login/` and `/convertigo/logout/`

Remember to change the default administration account, and to set an account for the Test Platform if it must not be anonymous: see [Installing Convertigo Server](../installing-convertigo-server/).

## Declare the public origins

By default the `cors.policy` property (**Main Parameters**) is `=Origin`: Convertigo answers cross-origin requests with the origin sent by the browser. In production, declare the origins that are really allowed to call the server, separated with `#`:

```
https://app.example.com#https://admin.example.com
```

* with the Docker image, use the `PUBLIC_DOMAINS` environment variable;
* with the Helm chart, `publicAddr` or `publicUrl` fill it for you;
* otherwise set `cors.policy` in the administration console, or with the `-Dconvertigo.engine.cors.policy=...` Java system property.

## Reduce the details returned by error responses

When a requestable fails, the response can describe the error in detail, which is useful during development. For a production server, set `hiding_error_information` to `true` (**Main Parameters**): the response then only tells that an error occurred, and the details remain available in the Engine logs.

If your support team needs more, keep `hiding_error_information` to `false` and choose what is returned with the `show_error_*` properties:

| Property | Default | Returned when `true` |
| --- | --- | --- |
| `show_error_requestable_information` | `true` | project, connector/sequence and transaction names |
| `show_error_context_information` | `false` | context variables |
| `show_error_type` | `true` | error type |
| `show_error_code` | `true` | error code |
| `show_error_message` | `true` | error message |
| `show_error_detail` | `true` | error detail |
| `show_error_exception` | `false` | Java exception class |
| `show_error_stacktrace` | `false` | Java stack trace |

When `hiding_error_information` is `true`, the XML responses also omit the product comment.

## Choose what API discovery exposes

`/convertigo/api` publishes the OpenAPI / Swagger definition of the projects deployed on the server, so that client developers can discover them.

* If this discovery is not wanted on a public server, restrict `/convertigo/api` at the reverse proxy or ingress level, the same way as the administration console.
* Set `hide_product_version_in_api_specs` to `true` (**Main Parameters**) to remove the Convertigo product version from the generated definitions. The version of each project API is kept.

## Choose which project files are served

Project directories are served over HTTP so that the front-end of an application can be loaded. Since 8.4.4, a `.httpignore` file at the root of a project lists, with the `.gitignore` syntax, the files and directories that must not be served: see the [DevOps chapter](../../programming-guide/devops/) of the Programming Guide.

## Setting engine properties at deployment time

Every property above can be set in the administration console, or at startup with a Java system property prefixed by `convertigo.engine.`, which suits containers and automated deployments:

```shell
$ docker run -d --name C8O -p 28080:28080 \
    -e PUBLIC_DOMAINS="https://app.example.com" \
    -e JAVA_OPTS="-Dconvertigo.engine.hiding_error_information=true -Dconvertigo.engine.hide_product_version_in_api_specs=true" \
    convertigo
```

A property set this way takes precedence over the value saved from the administration console. The complete list is in the [Appendixes](../appendixes/).
