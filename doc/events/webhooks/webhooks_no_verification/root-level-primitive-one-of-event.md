
# Root Level Primitive One of Event

Root-level oneOf across primitives and collections of primitives/enums.

## Headers

This event's request contains the following headers.

| Name |
|  --- |
| Content-Type |

## Payload Type

This event's request payload is of type [RootLevelPrimitiveOneOfEventRequest | Integer | Array[RootLevelPrimitiveOneOfEventRequest1] | Array[Integer]](../../../../doc/models/containers/root-level-one-of-primitive-event-root-level-primitive-one-of-body.md).

## Payload Example

```json
"on"
```

## SDK Usage Example

```ruby
# Implementation example of handling the `rootLevelPrimitiveOneOfEvent` event (with no signature verification) in Rails.

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
    # Step 1: Create the handler.
    handler = WebhooksNoVerificationHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(String) || event.is_a?(Integer) || event.is_a?(Array) && event.all? { |x| x.is_a?(String) } || event.is_a?(Array) && event.all? { |x| x.is_a?(Integer) }
      puts 'RootLevelPrimitiveOneOfEvent received'
      # TODO: Add rootlevelprimitiveoneofevent handling
    elsif event.is_a?(UnknownEvent)
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
| 422 | Event processing failed |

