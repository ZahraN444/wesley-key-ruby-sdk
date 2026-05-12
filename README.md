
# Getting Started with Webhooks and Callbacks API

## Introduction

A comprehensive API demonstrating webhooks and callbacks patterns.

### Webhooks

Webhooks allow your application to receive real-time notifications when certain events occur.

### Callbacks

Callbacks are used for asynchronous operations where the API will call back to your provided URL when the operation completes.

## Install the Package

Install the gem from the command line:

```bash
gem install wesley-key-sdk -v 4.3.2
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'wesley-key-sdk', '4.3.2'
```

For additional gem details, see the [RubyGems page for the wesley-key-sdk gem](https://rubygems.org/gems/wesley-key-sdk/versions/4.3.2).

## IRB Console Usage

You can explore the SDK interactively using IRB in two ways

### 1. Use IRB with Installed Gem

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and type the following command to start the irb console.

```bash
irb
```

Now you can load the SDK in the IRB

```ruby
require 'webhooks_and_callbacks_api'
include WebhooksAndCallbacksApi
```

### 2. Use IRB within SDK

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and navigate to the root folder of SDK.

```
cd path/to/webhooks_and_callbacks_api
```

Now you can start the preconfigured irb console by running the following command

```bash
ruby bin/console
```

**_Note:_** This automatically loads the SDK from lib/

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 50** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524, 408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| proxy_settings | [`ProxySettings`](doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |
| logging_configuration | [`LoggingConfiguration`](doc/logging-configuration.md) | The SDK logging configuration for API calls |
| api_key_credentials | [`ApiKeyCredentials`](doc/auth/custom-header-signature.md) | The credential object for Custom Header Signature |
| bearer_auth_credentials | [`BearerAuthCredentials`](doc/auth/oauth-2-bearer-token.md) | The credential object for OAuth 2 Bearer token |

The API client can be initialized as follows:

### Code-Based Client Initialization

```ruby
require 'webhooks_and_callbacks_api'
include WebhooksAndCallbacksApi

client = Client.new(
  api_key_credentials: ApiKeyCredentials.new(
    x_api_key: 'X-API-Key'
  ),
  bearer_auth_credentials: BearerAuthCredentials.new(
    access_token: 'AccessToken'
  ),
  logging_configuration: LoggingConfiguration.new(
    log_level: Logger::INFO,
    request_logging_config: RequestLoggingConfiguration.new(
      log_body: true
    ),
    response_logging_config: ResponseLoggingConfiguration.new(
      log_headers: true
    )
  )
)
```

### Environment-Based Client Initialization

```ruby
require 'webhooks_and_callbacks_api'
include WebhooksAndCallbacksApi

# Create client from environment
client = Client.from_env
```

See the [`Environment-Based Client Initialization`](doc/environment-based-client-initialization.md) section for details.

## Authorization

This API uses the following authentication schemes.

* [`ApiKey (Custom Header Signature)`](doc/auth/custom-header-signature.md)
* [`BearerAuth (OAuth 2 Bearer token)`](doc/auth/oauth-2-bearer-token.md)

## List of APIs

* [Orders](doc/controllers/orders.md)

## Webhooks

* [Webhooks](doc/events/webhooks/webhooks-handler.md)
* [Webhooks A](doc/events/webhooks/webhooks-a-handler.md)
* [Webhooks B](doc/events/webhooks/webhooks-b-handler.md)
* [Webhooks C](doc/events/webhooks/webhooks-c-handler.md)
* [Webhooks No Verification](doc/events/webhooks/webhooks-no-verification-handler.md)

## SDK Infrastructure

### Configuration

* [ProxySettings](doc/proxy-settings.md)
* [Environment-Based Client Initialization](doc/environment-based-client-initialization.md)
* [AbstractLogger](doc/abstract-logger.md)
* [LoggingConfiguration](doc/logging-configuration.md)
* [RequestLoggingConfiguration](doc/request-logging-configuration.md)
* [ResponseLoggingConfiguration](doc/response-logging-configuration.md)

### HTTP

* [HttpResponse](doc/http-response.md)
* [HttpRequest](doc/http-request.md)

### Utilities

* [ApiResponse](doc/api-response.md)
* [ApiHelper](doc/api-helper.md)
* [DateTimeHelper](doc/date-time-helper.md)

