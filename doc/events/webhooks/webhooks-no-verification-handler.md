## Webhooks No Verification Handler

Demo group with no payload verification (unsigned webhooks).

## Events

Events available in this group. Subscribe to receive webhook notifications when these events occur.

| Name | Description |
|  --- | --- |
| [auditLogEvent](../../../doc/events/webhooks/webhooks_no_verification/audit-log-event.md) | Demonstrates an event without signature verification. |
| [rootLevelPrimitiveOneOfEvent](../../../doc/events/webhooks/webhooks_no_verification/root-level-primitive-one-of-event.md) | Root-level oneOf across primitives and collections of primitives/enums. |

## SDK Usage Example

```ruby
# Implementation example for handling the `Webhooks` events with Rails
# (no signature verification).

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
    if event.is_a?(AuditLogEvent)
      puts 'AuditLogEvent received'
      # TODO: Add auditlogevent handling
    elsif event.is_a?(String) || event.is_a?(Integer) || event.is_a?(Array) && event.all? { |x| x.is_a?(String) } || event.is_a?(Array) && event.all? { |x| x.is_a?(Integer) }
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

