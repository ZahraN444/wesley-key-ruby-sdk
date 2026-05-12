
# Primitive Collection Event

Demonstrates oneOf across enum(string), integer, and array types.

## Signature Verification

This event uses the `HMAC Signature Verifier` for request verification. The event includes an `X-Signature` header that will be validated using your shared `secret-key` to ensure request authenticity.

## Headers

This event's request contains the following headers.

| Name |
|  --- |
| Content-Type |

## Payload Type

This event's request payload is of type [PrimitiveCollectionEvent](../../../../doc/models/primitive-collection-event.md).

## Payload Example

```json
{
  "eventType": "primitive.variant",
  "ids": [
    69,
    70,
    71
  ],
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

## SDK Usage Example

```ruby
# Implementation example of handling the `primitiveCollectionEvent` event (with signature verification) in Rails.

require 'rails'
require 'action_controller/railtie'
require 'webhooks_and_callbacks_api'

include WebhooksAndCallbacksApi

# Define route
Rails.application.routes.draw do
  post '/webhooks/receive', to: 'webhooks#receive'
end

# Define controller
class WebhooksController < ActionController::API
  def receive
    # Step 1: Create the handler using your shared secret key.
    handler = WebhooksHandler.new('your-shared-secret')

    # Step 2: Verify and parse the request into a typed event.
    # Use the Rails request directly (Rack::Request compatible).
    event = handler.verify_and_parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    case event
    when PrimitiveCollectionEvent
      puts 'PrimitiveCollectionEvent received'
      # TODO: Add primitivecollectionevent handling
    when SignatureVerificationFailure
      puts 'Signature verification failure received'
      # TODO: Add signature verification failure handling
    when UnknownEvent
      puts 'Unknown event received'
      # TODO: Add unknown event handling
    else
      puts 'default received'
      # TODO: Add default handling
    end

    # Step 4: Return 200 OK to acknowledge receipt.
    head :ok
  end
end
```

## Accepted Server Responses

The server should responds with one of the following status codes:

| Status Code | Description |
|  --- | --- |
| 200 | Event processed successfully |
| 400 | Invalid primitive variant |

