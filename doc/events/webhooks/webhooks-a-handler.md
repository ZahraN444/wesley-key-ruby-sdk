## Webhooks A Handler

Advanced webhook group for payment status events

## Signature Verification

This handler uses the `HMAC Signature Verifier` for request verification. Each event in this group includes an `X-Signature` header that will be validated using your shared `secret-key` to ensure request authenticity.

## Events

Events available in this group. Subscribe to receive webhook notifications when these events occur.

| Name | Description |
|  --- | --- |
| [paymentStatusUpdated](../../../doc/events/webhooks/webhooks_a/payment-status-updated.md) | Triggered when a payment status is updated via POST method |
| [paymentStatusCreated](../../../doc/events/webhooks/webhooks_a/payment-status-created.md) | Triggered when a new payment status is created |

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
    handler = WebhooksAHandler.new('your-shared-secret')

    # Step 2: Verify and parse the request into a typed event.
    # Use the Rails request directly (Rack::Request compatible).
    event = handler.verify_and_parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    case event
    when PaymentStatusUpdatedEvent
      puts 'PaymentStatusUpdated received'
      # TODO: Add paymentstatusupdated handling
    when PaymentStatusCreatedEvent
      puts 'PaymentStatusCreated received'
      # TODO: Add paymentstatuscreated handling
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

