## Webhooks B Handler

Multi-event webhook group with oneOf payload structures. Uses a message template that also includes a request header pointer.

## Signature Verification

This handler uses the `HMAC Signature Verifier` for request verification. Each event in this group includes an `X-Webhook-Signature` header that will be validated using your shared `secret-key` to ensure request authenticity.

## Events

Events available in this group. Subscribe to receive webhook notifications when these events occur.

| Name | Description |
|  --- | --- |
| [userNotificationEvent](../../../doc/events/webhooks/webhooks_b/user-notification-event.md) | Triggered when user-related notifications occur |
| [systemNotificationEvent](../../../doc/events/webhooks/webhooks_b/system-notification-event.md) | Triggered when system-wide notifications occur |
| [inventoryChangeEvent](../../../doc/events/webhooks/webhooks_b/inventory-change-event.md) | Triggered when inventory stock levels change |

## SDK Usage Example

```ruby
# Implementation example for handling the `Webhooks` events with Rails
# (signature verification).

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
    handler = WebhooksBHandler.new('your-shared-secret')

    # Step 2: Verify and parse the request into a typed event.
    # Use the Rails request directly (Rack::Request compatible).
    event = handler.verify_and_parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(UserActionNotificationEvent) || event.is_a?(UserStatusNotificationEvent) || event.is_a?(UserPreferenceNotificationEvent)
      puts 'UserNotificationEvent received'
      # TODO: Add usernotificationevent handling
    elsif event.is_a?(SystemAlertNotificationEvent) || event.is_a?(SystemMaintenanceNotificationEvent) || event.is_a?(SystemPerformanceNotificationEvent)
      puts 'SystemNotificationEvent received'
      # TODO: Add systemnotificationevent handling
    elsif event.is_a?(InventoryStockIncreaseEvent) || event.is_a?(InventoryStockDecreaseEvent) || event.is_a?(InventoryStockDepletedEvent)
      puts 'InventoryChangeEvent received'
      # TODO: Add inventorychangeevent handling
    elsif event.is_a?(SignatureVerificationFailure)
      puts 'Signature verification failure received'
      # TODO: Add signature verification failure handling
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

