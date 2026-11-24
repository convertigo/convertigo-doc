---
title: Large files and timeouts
keywords: upload, download, file size, request size, bundle, timeout, reverse proxy, load balancer, ingress, gateway, 413, 502, 504
last_updated: 11/23/2026
summary: "A large upload or a long operation crosses every component between the client and Convertigo, each with its own size limit and timeouts. This chapter lists them, from Convertigo to the frontends usually found in front of it, with the values to check at each installation."
sidebar: c8o_sidebar
permalink: /operating-guide/large-files-and-timeouts/
---
A project bundle uploaded from the administration console, a file sent to a sequence, a sequence that runs for minutes or a large export all cross the same chain: a CDN or a WAF, a load balancer, a reverse proxy, a Kubernetes ingress or Gateway, Tomcat, then Convertigo. **The smallest limit of the chain wins**, and the component that refuses a request is not always the one that seems to fail. By default, Convertigo does not limit the size of the administration uploads: the frontend in front of it sets that limit. The Convertigo properties are only one link of this chain: check every component at each installation, and keep the values in the installation file.

## Sizes: units and envelope

* Convertigo properties are in bytes. 1 MiB is 1,048,576 bytes and 1 GiB is 1,073,741,824 bytes. The `m` and `g` suffixes of NGINX are MiB and GiB: `1025m` is 1,074,790,400 bytes. Cloud consoles often use MB and GB (10<sup>6</sup> and 10<sup>9</sup> bytes): check the unit of each setting.
* A file is uploaded in a multipart request, which is larger than the file: boundaries, part headers and form fields come on top of it. Size the frontends on the **request**: 1025 MiB to accept 1 GiB of archives. When the optional Convertigo limit `net.upload.admin.max_size` is set, the request can exceed it by 1 MiB of envelope.
* A request body limit does not limit downloads (exports, files returned by a sequence). Downloads are limited by timeouts, buffering and disk space instead.

## Four paths, four sets of limits

| Path | Requests | Convertigo limit | Notes |
| --- | --- | --- | --- |
| Administration uploads | Console: deploy a project, several projects or a bundle; import certificates, global symbols, roles or scheduler jobs. Studio: deployment to a remote server. | None by default. Optional `net.upload.admin.max_size` (8.4.8+, `-1` by default): limit of the files of one request, plus 1 MiB of envelope. | The frontend sets the limit (1025m in the Helm chart). Over the optional limit: HTTP 413 with a message naming the property. |
| Business requests with files | Multipart requests to transactions and sequences (`/convertigo/projects/...`), multipart REST operations of the URL mapper. | `net.upload.max_file_size` per file (10 MiB by default), `net.upload.max_request_size` per request (`-1`: no limit). | Kept small by default on purpose: raise them only for the applications that need it. |
| Import from URL or Git | Console: **Import a Remote Project URL**. | No size property. | The server downloads the archive itself: the frontends do not carry it, but the console waits for the download and the import, so their read timeouts apply. |
| Downloads | Export of a project or of a bundle, files returned by sequences. | No size property. | An export is built on the server before its first byte is sent: the read timeouts must cover that time. The console receives the whole file before saving it: very large exports depend on the memory of the browser. |

Before 8.4.8:

* `net.upload.max_file_size` did not exist: the maximum file size and the maximum request size were both stored under `net.upload.max_request_size`, so setting one of them set both. A configuration that only sets `net.upload.max_request_size` keeps applying its value to each uploaded file. Changing the request limit afterwards keeps the current file limit.
* With several instances sharing Redis sessions, the administration requests that the console sends to another instance were limited to 256 MiB, and refused with HTTP 502 as if that instance were unreachable. Since 8.4.8 this forward streams the request to the selected instance without storing it, has no size limit of its own, and never answers 502 for a body it refused.

### Setting the properties

Set them in the administration console (**Configuration** > **Network**), or at startup with Java system properties, for example in `JAVA_OPTS` for the Docker image or `additionalJavaOpts` for the Helm chart:

```shell
-Dconvertigo.engine.net.upload.admin.max_size=2147483648
-Dconvertigo.engine.net.upload.max_file_size=52428800
```

Set `net.upload.admin.max_size` only when no frontend limits the requests, for example a Tomcat exposed directly, or to protect the disk space of a shared server; keep the frontends above it plus the envelope. With several instances, set the same values on all of them: the instance that receives a request and the instance that processes it apply the same administration limit.

### Bundle quotas

A bundle that crosses the network can still be refused by the checks of its content, which do not depend on the transport: at most 64 uploaded files, 200 projects and 200,000 entries, 4 GiB of expanded content for the outer and inner archives together, 1 GiB per entry, and an expansion ratio of 200 for the entries larger than 1 MiB. These quotas are fixed: they protect the server, whatever the transport. They are reported with HTTP 500 and an explicit message, for example `The bundle exceeds its expanded size limit`. Very compressible content can be refused even when the archive is small. A bundle exported by the console is checked with the same quotas, and the optional size limit, before it is offered for download. See [Deploying several projects or a bundle](../using-convertigo-administration-console/#deploying-several-projects-or-a-bundle).

## Tomcat

The Convertigo Docker images run Tomcat 9 with the default HTTP connector of Tomcat, except its port (28080), `maxThreads` and `relaxedQueryChars`. The attributes that matter here:

| Connector attribute | Value in the image | Effect |
| --- | --- | --- |
| `connectionTimeout` | 20000 ms (Tomcat's `server.xml`) | Time to receive the request headers, and also the longest pause allowed while reading a request body, because `disableUploadTimeout` is `true`. Behind a frontend that buffers the request (NGINX does by default), the body arrives at once and this pause is rarely reached. |
| `disableUploadTimeout` / `connectionUploadTimeout` | `true` / 300000 ms | Set `disableUploadTimeout="false"` to allow pauses of up to `connectionUploadTimeout` while a body is uploaded, and keep 20 s for the headers. |
| `maxPostSize` | 2 MiB | Applies to the parameters of URL-encoded forms, not to the multipart uploads read by Convertigo. Do not set it to `-1` to "fix" an upload. |
| `maxSwallowSize` | 2 MiB | When Convertigo refuses a request before reading all of it (HTTP 413), Tomcat reads at most 2 MiB more, then closes the connection. Without a buffering frontend, the client can then see a connection reset instead of the 413. |

To change them, edit `conf/server.xml` of your Tomcat (war installation), or build a derived image: the entrypoint of the Docker image rewrites `conf/server.xml` at each start. See the [Tomcat 9 HTTP connector](https://tomcat.apache.org/tomcat-9.0-doc/config/http.html) reference.

## Kubernetes: the Helm chart

The [Convertigo Helm chart](https://github.com/convertigo/convertigo-helm/tree/hotfix/stable/convertigo) sets on its ingress (ingress-nginx):

* `nginx.ingress.kubernetes.io/proxy-body-size: 1025m` since chart 8.4.8 (`500m` in earlier charts): 1 GiB of archives plus the envelope. It is the size limit of the administration uploads, as Convertigo has none of its own by default;
* `nginx.ingress.kubernetes.io/proxy-read-timeout` and `proxy-send-timeout` to `"3600"` seconds.

The other ingress-nginx defaults apply: 5 s to connect to Convertigo, request buffering on (the controller writes the body to its disk before sending it), and 60 s between two reads of a request body (`client-body-timeout`, a setting of the controller ConfigMap, not an Ingress annotation). Values set in your own `ingress.annotations` are kept across upgrades. Example accepting 2 GiB of archives:

```yaml
ingress:
  annotations:
    nginx.ingress.kubernetes.io/proxy-body-size: 2049m
```

With the Gateway API (`gateway.enabled=true`), `gateway.timeouts` sets the timeouts of the HTTPRoute (3600 s). Their support depends on the controller. NGINX Gateway Fabric ignores them and limits request bodies to 1m by default: with this controller (2.6 or later), set `gateway.nginxGatewayFabric.enabled=true` so that the chart attaches a ClientSettingsPolicy (1025m bodies, 300 s between two reads of a body) and a ProxySettingsPolicy (5 s to connect, 3600 s between two reads or two writes) to its route. With another controller, use its own policies. The load balancer in front of the cluster keeps its own idle timeout.

## Reverse proxies and load balancers

Defaults read in the documentation of each product in November 2026: check the version you run, and the values actually configured, which often differ from the defaults.

| Component | Body size | Timeouts | Set for Convertigo |
| --- | --- | --- | --- |
| [NGINX](https://nginx.org/en/docs/http/ngx_http_core_module.html) | `client_max_body_size` 1m (413) | `client_body_timeout` 60s (408), `proxy_connect_timeout` 60s, `proxy_read_timeout` 60s, `proxy_send_timeout` 60s, `send_timeout` 60s | `client_max_body_size 1025m` at least for `/convertigo/admin/`; `proxy_read_timeout` and `proxy_send_timeout` above the longest operation. `proxy_request_buffering on` (default) needs temporary disk space. |
| [Apache httpd 2.4](https://httpd.apache.org/docs/2.4/mod/core.html#limitrequestbody) with mod_proxy | `LimitRequestBody` 1 GiB since 2.4.54, no limit before: a full 1 GiB bundle with its envelope is refused | `Timeout` 60 s, `ProxyTimeout` same as `Timeout`; mod_reqtimeout `RequestReadTimeout body=20,MinRate=500` (408) | `LimitRequestBody 1074790400`; `ProxyTimeout` (or `timeout=` on `ProxyPass`) above the longest operation. |
| [IIS](https://learn.microsoft.com/en-us/iis/configuration/system.webserver/security/requestfiltering/requestlimits/) with Application Request Routing | `maxAllowedContentLength` 30,000,000 bytes (about 28.6 MiB): IIS answers **404**, not 413 (sub-status 13 in its logs) | ARR server farm proxy time-out 30 s (502.3); site `connectionTimeout` 120 s | `maxAllowedContentLength="1074790400"`; ARR time-out above the longest operation. |
| [HAProxy](https://docs.haproxy.org/3.2/configuration.html) | No body size limit by default | `timeout client`, `timeout server` and `timeout connect` have no default (HAProxy warns): every configuration sets its own. `timeout server` gives 504, `timeout http-request` gives 408 | `timeout server` above the longest operation; `timeout client` long enough for slow uploads. |
| [F5 BIG-IP LTM](https://my.f5.com/manage/s/article/K7606) | No body size setting in the HTTP profile; a WAF policy attached to the virtual server applies its own limits | TCP profile idle timeout 300 s (the shorter of the client and server profiles wins) | Idle timeouts of both TCP profiles above the longest operation; check the limits of an attached WAF policy. |
| [AWS Application Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/edit-load-balancer-attributes.html) | No body size limit | Idle timeout 60 s (1 to 4000 s); Network Load Balancer: TCP idle timeout 350 s | `idle_timeout.timeout_seconds` above the longest operation. |
| [Azure Application Gateway v2](https://learn.microsoft.com/en-us/azure/application-gateway/configuration-http-settings) | 4 GB per request; with WAF v2, file uploads limited to 100 MB by default (`FileUploadLimitInMB`) and other bodies to 128 KB | Backend settings request timeout 20 s | Request timeout above the longest operation; WAF file upload limit above 1025 MiB (needs a recent rule set). |
| [Google Cloud Application Load Balancer](https://cloud.google.com/load-balancing/docs/backend-service) | No body size limit listed | Backend service timeout 30 s | `timeoutSec` of the backend service above the longest operation. |
| [Cloudflare](https://developers.cloudflare.com/fundamentals/reference/connection-limits/) (proxied host) | 100 MB (Free and Pro plans), 200 MB (Business), more on Enterprise | Proxy read timeout 125 s (error 524) | Serve the administration console on a host that is not proxied, or a plan with larger limits; keep long operations below 125 s or make them tracked. |
| [OpenStack Octavia](https://docs.openstack.org/octavia/latest/configuration/configref.html) load balancers (several public clouds) | — | `timeout_client_data` and `timeout_member_data` 50 s | Listener timeouts above the longest operation. |

## Timeouts and long operations

Most frontend timeouts are inactivity timeouts, not total durations: the longest pause while the client sends its body, the longest silence of the server before or within its response (read timeout), and the longest idle time of a connection (load balancers). A sequence computes before it writes its response: while it runs, nothing is sent, so **every component must wait longer than the sequence lasts**.

When a frontend gives up first:

* it answers 504 to the client (NGINX, HAProxy, load balancers), 524 (Cloudflare) or 502.3 (IIS ARR), and closes its connection to Convertigo;
* **Convertigo is not told.** The sequence goes on until its end or its **Response timeout**, and its effects (database writes, calls to back ends, mails) happen anyway: only the response is lost. A client or a user that tries again runs it twice;
* NGINX logs 499 when the client closed the connection before the answer, for example because of its own timeout.

The **Response timeout** of a transaction or a sequence is 60 s by default: once reached, Convertigo stops it with a timeout error. It is not applied in the Studio, so a long sequence that works in the Studio can fail on a server, either at its Response timeout or at the read timeout of a frontend.

Dimension the chain as follows:

* the read timeout of every component, from the client to Convertigo, is longer than the Response timeout of the longest sequence exposed through it, plus a margin. The shortest component wins;
* the administration operations count too: deploying a large bundle (upload, extraction, loading of the projects), exporting, importing from a URL can take minutes. The console waits for the result. The Helm chart uses 3600 s;
* a 504 during a deployment does not mean that the deployment failed: check the **Projects** page or the logs before deploying again.

Raising timeouts has a limit: connections held for long tie up threads and connection slots, and some frontends cap them (Cloudflare). For an operation longer than a few minutes, prefer a tracked processing: a first call records the request and answers at once with an identifier; the work runs apart, for example as a job of the **Scheduler** page of the administration console; the client then calls a status sequence, or receives the result through FullSync. Each request stays short, and a lost response costs nothing.

## Symptoms

| Status | Usually returned by | Meaning and what to check |
| --- | --- | --- |
| 413 | A frontend (its own HTML page) or Convertigo (an XML or JSON error document; for the administration uploads, when `net.upload.admin.max_size` is set, its message names it) | The body is larger than a limit. When a frontend refuses, Convertigo logs nothing: the format of the answer and the logs tell which component refused. |
| 404 | IIS request filtering | Body larger than `maxAllowedContentLength`. |
| 408 | NGINX, Apache httpd, HAProxy | The client paused longer than allowed while sending its body: slow or interrupted upload. |
| 499 | NGINX logs only | The client closed the connection before the answer. The work goes on in Convertigo. |
| 502 | A frontend | Convertigo could not be reached or closed the connection: restart, pod not ready, crash, or a frontend time-out (IIS ARR 502.3). Check the Convertigo logs and readiness. In the console of several instances, a 502 with the `X-C8O-Instance-Unreachable` header means that the selected instance cannot be reached from the instance that received the request. Before 8.4.8, an administration upload over 256 MiB sent to another instance got the same 502 although that instance was reachable; since 8.4.8, the forward never answers 502 for the size of a body. |
| 504, 524 | A frontend | Its read timeout elapsed while Convertigo was still working: compare the time of the error with the timeouts of the chain, and check the result before trying again. |
| 500 with an XML error | An administration service | The content was refused: bundle quotas, too many archives, invalid archive, full disk. The message tells which. |
| Connection reset, empty reply | Tomcat or a frontend | A request refused before its body was read, without a buffering frontend (see `maxSwallowSize`), or a frontend that resets instead of answering. |

## Disk space and concurrency

Without a Convertigo limit, the frontend limit and the disk space bound the administration uploads. Each buffering component writes the body to its disk: the reverse proxy or the ingress controller pod (NGINX request buffering), then Convertigo: upload temporary files, staging and extraction of a bundle, backups of the replaced projects. Plan several times the size of the archive plus its expanded size, both on the frontends (ephemeral storage of the ingress pods) and on Convertigo (temporary directory and workspace), and avoid simultaneous large deployments. Keep these buffers on disk: do not turn them into 1 GiB memory buffers.

Building or importing a bundle also needs temporary space of several times its size on the instance that does it: a 1 GiB bundle used up to about 5 GiB of temporary disk during its export, and as much during its import, released at the end. Size the disk, or the `ephemeral-storage` of the pods, accordingly.

An upload is a single request: an interrupted upload starts again from the beginning. A bundle deployment is not a transaction: if a project fails, the projects already deployed stay in place. For large transfers, compare the size and a checksum (for example SHA-256) of the file on both sides.

## At each installation

1. Draw the chain: client, CDN or WAF, load balancer, reverse proxy, ingress or Gateway, Tomcat, Convertigo. Note where TLS ends.
2. For each component, note its body size limit, its body pause timeout, its read timeout and its idle timeout.
3. Body sizes: on `/convertigo/admin/`, the largest archive or bundle you deploy plus 1 MiB (1025 MiB in the Helm chart), as Convertigo does not limit it unless `net.upload.admin.max_size` is set; for the applications that receive files, above their largest request, consistent with `net.upload.max_file_size` and `net.upload.max_request_size`.
4. Timeouts: above the longest Response timeout of the exposed sequences and the longest administration operation. Beyond a few minutes, prefer a tracked processing.
5. Temporary disk space on the frontends and on Convertigo for several copies of the largest archive.
6. Test through the real chain: an archive just below the frontend limit (deployed), one just above (refused with 413 by the frontend, nothing in the Convertigo logs), a test sequence longer than the shortest default timeout of the chain (for example 90 s, with its Response timeout raised), and with several instances a deployment on another instance selected in the console. Read the logs of each component.
7. Keep these values in the installation file: a change of proxy or load balancer brings back its defaults.
