
# Custom Header Signature



Documentation for accessing and setting credentials for ApiKey.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| X-API-Key | `String` | API key for authentication | `x_api_key` |



**Note:** Auth credentials can be set using `ApiKeyCredentials` object, passed in as named parameter `api_key_credentials` in the client initialization.

## Usage Example

### Client Initialization

You must provide credentials in the client as shown in the following code snippet.

```ruby
require 'webhooks_and_callbacks_api'
include WebhooksAndCallbacksApi

client = Client.new(
  api_key_credentials: ApiKeyCredentials.new(
    x_api_key: 'X-API-Key'
  )
)
```


