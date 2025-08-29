
# Getting Started with Cypress Test API

## Introduction

This is a sample API to demonstrate an OpenAPI spec with multiple endpoints and a custom model.

## Install the Package

Install the gem from the command line:

```bash
gem install wesley-key-sdk -v 1.1.1
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'wesley-key-sdk', '1.1.1'
```

For additional gem details, see the [RubyGems page for the wesley-key-sdk gem](https://rubygems.org/gems/wesley-key-sdk/versions/1.1.1).

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/1.1.1/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| default_host | `String` | *Default*: `'www.example.com'` |
| environment | `Environment` | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| proxy_settings | [`ProxySettings`](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/1.1.1/doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |

The API client can be initialized as follows:

```ruby
require 'cypress_test_api'
include CypressTestApi

client = Client.new(
  environment: Environment::PRODUCTION,
  default_host: 'www.example.com'
)
```

## List of APIs

* [API](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/1.1.1/doc/controllers/api.md)

## SDK Infrastructure

### Configuration

* [ProxySettings](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/1.1.1/doc/proxy-settings.md)

### HTTP

* [HttpResponse](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/1.1.1/doc/http-response.md)
* [HttpRequest](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/1.1.1/doc/http-request.md)

### Utilities

* [ApiHelper](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/1.1.1/doc/api-helper.md)
* [DateTimeHelper](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/1.1.1/doc/date-time-helper.md)

