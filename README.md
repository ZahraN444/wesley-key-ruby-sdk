
# Getting Started with Swagger Petstore

## Introduction

This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.

Find out more about Swagger: [http://swagger.io](http://swagger.io)

## Install the Package

Install the gem from the command line:

```bash
gem install wesley-key-sdk -v 2.0.1
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'wesley-key-sdk', '2.0.1'
```

For additional gem details, see the [RubyGems page for the wesley-key-sdk gem](https://rubygems.org/gems/wesley-key-sdk/versions/2.0.1).

## IRB Console Usage

You can explore the SDK interactively using IRB in two ways

### 1. Use IRB with Installed Gem

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and type the following command to start the irb console.

```bash
irb
```

Now you can load the SDK in the IRB

```ruby
require 'swagger_petstore'
include SwaggerPetstore
```

### 2. Use IRB within SDK

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and navigate to the root folder of SDK.

```
cd path/to/swagger_petstore
```

Now you can start the preconfigured irb console by running the following command

```bash
ruby bin/console
```

**_Note:_** This automatically loads the SDK from lib/

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| test_header | `String` | This is a test header<br>*Default*: `'TestHeaderDefaultValue'` |
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
| proxy_settings | [`ProxySettings`](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |
| api_key_credentials | [`ApiKeyCredentials`](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/auth/custom-header-signature.md) | The credential object for Custom Header Signature |
| http_basic_credentials | [`HttpBasicCredentials`](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/auth/basic-authentication.md) | The credential object for Basic Authentication |
| petstore_auth_credentials | [`PetstoreAuthCredentials`](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/auth/oauth-2-implicit-grant.md) | The credential object for OAuth 2 Implicit Grant |

The API client can be initialized as follows:

### Code-Based Client Initialization

```ruby
require 'swagger_petstore'
include SwaggerPetstore

client = Client.new(
  test_header: 'TestHeaderDefaultValue',
  api_key_credentials: ApiKeyCredentials.new(
    api_key: 'api_key'
  ),
  http_basic_credentials: HttpBasicCredentials.new(
    username: 'username',
    passwprd: 'passwprd'
  ),
  petstore_auth_credentials: PetstoreAuthCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_redirect_uri: 'OAuthRedirectUri',
    o_auth_scopes: [
      OAuthScopePetstoreAuthEnum::READPETS,
      OAuthScopePetstoreAuthEnum::WRITEPETS
    ]
  ),
  environment: Environment::PRODUCTION
)
```

### Environment-Based Client Initialization

```ruby
require 'swagger_petstore'
include SwaggerPetstore

# Create client from environment
client = Client.from_env
```

See the [`Environment-Based Client Initialization`](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/environment-based-client-initialization.md) section for details.

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| production | **Default** |
| environment2 | - |
| environment3 | - |

## Authorization

This API uses the following authentication schemes.

* [`api_key (Custom Header Signature)`](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/auth/custom-header-signature.md)
* [`httpBasic (Basic Authentication)`](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/auth/basic-authentication.md)
* [`petstore_auth (OAuth 2 Implicit Grant)`](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/auth/oauth-2-implicit-grant.md)

## List of APIs

* [Pet](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/controllers/pet.md)
* [Store](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/controllers/store.md)
* [User](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/controllers/user.md)

## SDK Infrastructure

### Configuration

* [ProxySettings](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/proxy-settings.md)
* [Environment-Based Client Initialization](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/environment-based-client-initialization.md)

### HTTP

* [HttpResponse](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/http-response.md)
* [HttpRequest](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/http-request.md)

### Utilities

* [ApiHelper](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/api-helper.md)
* [DateTimeHelper](https://www.github.com/ZahraN444/wesley-key-ruby-sdk/tree/2.0.1/doc/date-time-helper.md)

