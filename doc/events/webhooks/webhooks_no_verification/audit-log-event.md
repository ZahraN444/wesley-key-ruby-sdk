
# Audit Log Event

Demonstrates an event without signature verification.

## Headers

This event's request contains the following headers.

| Name |
|  --- |
| Content-Type |

## Payload Type

This event's request payload is of type [AuditLogEvent](../../../../doc/models/audit-log-event.md).

## Payload Example

```json
{
  "eventType": "audit.log",
  "actor": "actor6",
  "action": "action6",
  "context": {
    "key1": "val1",
    "key2": "val2"
  },
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

## SDK Usage Example

```ruby
# Implementation example of handling the `auditLogEvent` event (with no signature verification) in Rails.

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
    case event
    when AuditLogEvent
      puts 'AuditLogEvent received'
      # TODO: Add auditlogevent handling
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

