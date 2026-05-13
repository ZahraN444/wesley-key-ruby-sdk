
# ProxySettings

Represents the proxy server configurations for API calls.

## Properties

| Name | Type | Tag | Description |
|  --- | --- | --- | --- |
| address | `String` | required | The proxy server URL. |
| port | `Integer` | optional | The port to connect to the proxy server. |
| username | `String` | optional | Username for proxy authentication. |
| password | `String` | optional | Password for proxy authentication. |

## Usage Example

```ruby
require 'swagger_petstore_open_api30'
include SwaggerPetstoreOpenApi30


client = SwaggerPetstoreOpenApi30::Client.new(
  proxy_settings: ProxySettings.new(
    address: "http://localhost",
    port: 8888,
    username: 'user',
    password: 'pass'
  )
)
```

