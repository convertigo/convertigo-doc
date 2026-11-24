---
title: Production deployment recommendations
keywords: production, deployment, reverse proxy, ingress, https, configuration, logs, fluent bit, elk, graylog
last_updated: 09/22/2026
summary: "This chapter gathers the settings usually expected when a Convertigo Server is opened to end users: HTTPS termination, access to the administration console, public origins, error responses, API discovery and centralized logging."
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

## Centralize the logs

Convertigo writes its logs with Log4j. On a server installed from the war file they go to `engine.log` in the log directory and are browsed from the administration console. In a container or on Kubernetes, the usual approach is to write them to the standard output and let the platform collector (Fluent Bit, Fluentd, Filebeat, the IBM Cloud Logs agent...) ship them to the log platform (Elasticsearch / Kibana, Graylog, OpenSearch, IBM Cloud Logs...). Nothing has to be installed inside the Convertigo image for that.

### What to set on the Convertigo side

| Setting | Recommended value | Effect |
| --- | --- | --- |
| `log.stdout.enable` (Docker: `LOG_STDOUT`) | `true` | Adds a console appender: the logs reach the standard output of the process, hence `docker logs` / `kubectl logs` and the platform collector. |
| `log.stdout.format` (Docker: `LOG_STDOUT_FORMAT`, since 8.4.8) | `json-ecs` for Elasticsearch or a platform with Elastic Common Schema mappings, `json` for another platform that indexes JSON lines, `text` (default) otherwise | Format of the standard output only: see [JSON formats](#json-formats). `engine.log` keeps the text format. |
| `log.file.enable` (Docker: `LOG_FILE`) | `false`, or `true` to keep the **Logs** view of the administration console | Enables `engine.log` on disk. With `true`, keep the log directory on a storage local to the instance (the Helm chart does it with `-Dlog.directory=/tmp/convertigo-logs`). |
| `log4j.logger.cems` | `INFO` (default) | Root level of the Convertigo loggers. Avoid `DEBUG` on a production server that ships its logs: the volume is considerable. |

The Docker image exposes the first three as the `LOG_STDOUT`, `LOG_STDOUT_FORMAT` and `LOG_FILE` environment variables. The Helm chart sets `LOG_STDOUT=true` and `LOG_FILE=true` by default, and `LOG_STDOUT_FORMAT=json` with the `logs.stdoutFormat: json` value.

### Format of a log line

The console appender uses the same layout as the file appender, `log4j.appender.CemsAppender.layout.ConversionPattern`, whose default is:

```
!%-28c{1} | %d | %-5p | %-32t | %X{ContextualParameters}%m%n
```

A line therefore looks like:

```
!Engine                       | 2026-09-22 14:56:56,729 | DEBUG | http-nio-28080-exec-6549         | $clientip=203.0.113.10 | $contextid=F7874EDA...708C98E | $project=MyProject | $uid=ILN52MO3 | $uuid=WEB-EEC5B0C2 | Request processed in 29 ms
```

The fields are separated by ` | `:

1. `!` followed by the logger name: `Engine`, `Context`, `Audit`, `User`, `Admin`, `Beans`, `Context.Audit`...
2. the date, `yyyy-MM-dd HH:mm:ss,SSS`, in the time zone of the JVM (no zone in the line: run the JVM in UTC with `-Duser.timezone=UTC` in `JAVA_OPTS`, or tell the parser which zone to apply);
3. the level: `TRACE`, `DEBUG`, `INFO`, `WARN`, `ERROR` or `FATAL`;
4. the thread name;
5. optional contextual parameters, each as `$key=value | `: `$clientip`, `$clienthostname`, `$contextid`, `$user`, `$project`, `$connector`, `$transaction`, `$sequence`, `$uid`, `$uuid`. They are the keys to index, as they let you follow a user session or a project across lines;
6. the message.

A log record is often **multi-line**: stack traces, the request statistics table, XML or JSON payloads. Every line that does not start with `!` continues the previous record, so the collector must be configured with a multi-line rule whose start pattern is `^!`. Since 8.4.8, the standard output can be written in JSON instead, one line per record: see [JSON formats](#json-formats). The pattern above can also be changed if your platform prefers another layout, and the change applies to both the file and the console appenders.

### JSON formats

Since 8.4.8, `log.stdout.format` can write one JSON object per line on the standard output, for the log platforms that split JSON lines into fields without a parser of their own. Two formats carry the same information:

* `json`: Convertigo field names (`time`, `level`, `project`, `user`...);
* `json-ecs`: the field names of the [Elastic Common Schema](https://www.elastic.co/guide/en/ecs/current/index.html) 9.5.0, written as flat dotted keys with `@timestamp`, `log.level` and `message` first, as the ECS logging libraries do. The parameters that have no ECS field go under `convertigo.*`. Choose it for Elasticsearch and Kibana, Elastic Agent or Filebeat, or any platform whose indices use the ECS mappings.

In Docker, set `LOG_STDOUT_FORMAT=json` or `LOG_STDOUT_FORMAT=json-ecs` together with `LOG_STDOUT=true`; with the Helm chart, set `logs.stdoutFormat`. Only the standard output changes: `engine.log` keeps the text format, which the **Logs** view of the administration console reads. The format can be changed at runtime from the **Configuration** page of the administration console (**Logs**, advanced properties); when it is set by a JVM property (`-Dconvertigo.engine.log.stdout.format=json`) or by the Docker variable, such a change lasts until the next restart.

Each record is a single line, stack trace included, so the collector needs no multi-line rule. With `json`, an error, then the statistics line that ends the same request (messages shortened):

```json
{"time":"2026-11-24T09:12:33.247Z","level":"ERROR","logger":"cems.Context","thread":"http-nio-28080-exec-7","message":"[Engine.getDocument()] Context ID#8F3A61C2D9E04B7A915C2E6F0B1D4A77_default - Unable to build the XML document.\n[com.twinsoft.convertigo.engine.EngineException] Authentication required","clientip":"203.0.113.42","contextid":"8F3A61C2D9E04B7A915C2E6F0B1D4A77_default","project":"demoOrders","sequence":"GetOrders","uid":"1d4e9f50baf","user":"(anonymous)","app":"convertigo","instance":"convertigo-6c8d7f9b44-q7xkz"}
{"time":"2026-11-24T09:12:33.251Z","level":"INFO","logger":"cems.Statistics","thread":"http-nio-28080-exec-7","message":"Statistics:\n ====...","clientip":"203.0.113.42","contextid":"8F3A61C2D9E04B7A915C2E6F0B1D4A77_default","project":"demoOrders","sequence":"GetOrders","uid":"1d4e9f50baf","user":"(anonymous)","duration_ms":4,"app":"convertigo","instance":"convertigo-6c8d7f9b44-q7xkz"}
```

The same statistics line with `json-ecs`:

```json
{"@timestamp":"2026-11-24T09:12:33.251Z","log.level":"INFO","message":"Statistics:\n ====...","ecs.version":"9.5.0","service.name":"convertigo","event.dataset":"convertigo.log","service.node.name":"convertigo-6c8d7f9b44-q7xkz","process.thread.name":"http-nio-28080-exec-7","log.logger":"cems.Statistics","client.ip":"203.0.113.42","convertigo.contextid":"8F3A61C2D9E04B7A915C2E6F0B1D4A77_default","convertigo.project":"demoOrders","convertigo.sequence":"GetOrders","convertigo.uid":"1d4e9f50baf","user.name":"(anonymous)","event.duration":4000000,"convertigo.duration_ms":4}
```

| Content | `json` | `json-ecs` |
| --- | --- | --- |
| Time of the record, ISO 8601 with milliseconds | `time`, with the offset of the JVM time zone (`Z` in UTC) | `@timestamp`, in UTC |
| Level: `TRACE`, `DEBUG`, `INFO`, `WARN`, `ERROR` or `FATAL` | `level` | `log.level` |
| Full logger name: `cems.Engine`, `cems.Context`, `cems.Statistics`... | `logger` | `log.logger` |
| Thread name | `thread` | `process.thread.name` |
| Message, with its line breaks escaped (XML documents, statistics table) | `message` | `message` |
| Class of the logged exception | `exception_class` | `error.type` |
| Message of the logged exception | | `error.message` |
| Whole stack trace, with its `Caused by` sections | `exception` | `error.stack_trace` |
| Project, sequence, transaction and connector called | `project`, `sequence`, `transaction`, `connector` | `convertigo.project`, `convertigo.sequence`, `convertigo.transaction`, `convertigo.connector` |
| Authenticated user, without quotes, or `(anonymous)` | `user` | `user.name` |
| Address of the client | `clientip` | `client.ip`, or `client.address` when the value is not an IP address |
| Host name of the client (`net.reverse_dns`) | `clienthostname` | `client.domain` |
| Context: `<session id>_<context name>` | `contextid` | `convertigo.contextid` |
| Identifier of one request, shared by all its records | `uid` | `convertigo.uid` |
| Identifier of the device (mobile and web applications) | `uuid` | `convertigo.uuid` |
| Other contextual parameters, such as the environment that the mobile applications send with their logs (object) | `context` | `convertigo.context` |
| Total time of the request, on the `cems.Statistics` records only | `duration_ms`, in milliseconds | `event.duration`, in nanoseconds, and `convertigo.duration_ms` |
| Application | `app`: `convertigo` | `service.name`: `convertigo`, and `event.dataset`: `convertigo.log` |
| Host name of the instance (`HOSTNAME`), the pod name in Kubernetes | `instance` | `service.node.name` |
| Version of the schema | | `ecs.version`: `9.5.0` |

A contextual parameter without value is left out. The lines written at startup before the engine configures its logs (image entrypoint, workspace initialization) and the Tomcat lines on the standard error stay in text.

### Collector configuration

Fluent Bit example for Kubernetes. The container runtime prefixes every line it writes on the node with a timestamp, the stream and a partial-line flag; the built-in `cri` parser removes that prefix and reassembles the lines it split, then the `multiline` filter groups the Convertigo records and the `parser` filter extracts the fields:

```
[MULTILINE_PARSER]
    Name          convertigo
    Type          regex
    Flush_Timeout 1000
    Rule "start_state" "/^!.*/"     "cont"
    Rule "cont"        "/^(?!!).*/" "cont"

[PARSER]
    Name        convertigo_fields
    Format      regex
    Regex       /^!(?<logger>\S+)\s*\| (?<date>\S+ \S+) \| (?<level>\S+)\s*\| (?<thread>\S+)\s*\| (?<rest>[\s\S]*)$/
    Time_Key    date
    Time_Format %Y-%m-%d %H:%M:%S,%L

[INPUT]
    Name              tail
    Path              /var/log/containers/convertigo*_*.log
    multiline.parser  cri
    Tag               kube.*
    Mem_Buf_Limit     20MB
    Skip_Long_Lines   On

[FILTER]
    Name                  multiline
    Match                 kube.*
    multiline.key_content log
    multiline.parser      convertigo

[FILTER]
    Name         parser
    Match        kube.*
    Key_Name     log
    Parser       convertigo_fields
    Reserve_Data On
    Preserve_Key On

[FILTER]
    Name  kubernetes
    Match kube.*
    Merge_Log On
```

Validated with Fluent Bit 3.2: a stack trace and the statistics table come out as a single record, a line split by the runtime is reassembled, and `logger`, `level`, `thread` and `rest` are extracted. The `multiline.parser` of the `tail` input must stay on `cri` alone: chaining `cri, convertigo` there does not group the Convertigo records.

The `rest` field still holds the `$key=value | ` pairs and the message; split it with a key/value filter, or extend the regex with the parameters you need, for example `(?:\$project=(?<project>[^|]*) \| )?`. Then add the output of your platform: `es` for Elasticsearch, `gelf` for Graylog, `http` for IBM Cloud Logs.

Equivalent settings for other collectors:

* **Filebeat / Logstash**: `multiline.type: pattern`, `multiline.pattern: '^!'`, `multiline.negate: true`, `multiline.match: after`, then a `dissect` or `grok` on `!%{logger} | %{date} | %{level} | %{thread} | %{rest}` and a `kv` filter with `$` as prefix on `rest`.
* **IBM Cloud Logs agent, Promtail, Vector**: the same start-of-record regex `^!`, then a regex parsing stage with the same groups.
* Outside Kubernetes, point the collector to `engine.log` in the log directory instead of the standard output; the format is identical, without the CRI prefix.

### What to keep and what to watch

* Index at least `level`, `logger`, `$project`, `$contextid`, `$user` and `$clientip`, and keep the raw line: it is what the Convertigo support team asks for when investigating an incident.
* Alert on `level:ERROR`, and on `Engine started` / `Engine stopped` messages of the `Engine` logger to detect restarts.
* The `Audit` and `Context.Audit` loggers trace administration actions and deployments; they can be routed to a dedicated index with a longer retention.
* Tomcat access logs are not written to the standard output by default. If they are needed, declare in `server.xml` an `AccessLogValve` with `directory="/dev" prefix="stdout" suffix="" rotatable="false"`, or keep its file output and let the collector read it.

## Size limits and timeouts of the frontends

Every reverse proxy, load balancer, ingress or WAF in front of Convertigo has its own request size limit and timeouts, usually lower than what uploads of project bundles or long sequences need. Check them at each installation: see [Large files and timeouts](../large-files-and-timeouts/).

## Setting engine properties at deployment time

Every property above can be set in the administration console, or at startup with a Java system property prefixed by `convertigo.engine.`, which suits containers and automated deployments:

```shell
$ docker run -d --name C8O -p 28080:28080 \
    -e PUBLIC_DOMAINS="https://app.example.com" \
    -e JAVA_OPTS="-Dconvertigo.engine.hiding_error_information=true -Dconvertigo.engine.hide_product_version_in_api_specs=true" \
    convertigo
```

A property set this way takes precedence over the value saved from the administration console. The complete list is in the [Appendixes](../appendixes/).
