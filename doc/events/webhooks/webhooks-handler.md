## Webhooks Handler

Standard webhook group for order and payment events

## Signature Verification

This handler uses the `HMAC Signature Verifier` for request verification. Each event in this group includes an `X-Signature` header that will be validated using your shared `secret-key` to ensure request authenticity.

## Events

Events available in this group. Subscribe to receive webhook notifications when these events occur.

| Name | Description |
|  --- | --- |
| [orderCreated new testing my newy tesingggggg toc hejcjk](../../../doc/events/webhooks/webhooks/order-created-new-testing-my-newy-tesingggggg-toc-hejcjk.md) | Triggered when a new order is created |
| [orderUpdated](../../../doc/events/webhooks/webhooks/order-updated.md) | Triggered when an order is updated |
| [paymentCompleted](../../../doc/events/webhooks/webhooks/payment-completed.md) | Triggered when a payment is successfully processed |
| [primitiveCollectionEvent](../../../doc/events/webhooks/webhooks/primitive-collection-event.md) | Demonstrates oneOf across enum(string), integer, and array types. |

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
    handler = WebhooksHandler.new('your-shared-secret')

    # Step 2: Verify and parse the request into a typed event.
    # Use the Rails request directly (Rack::Request compatible).
    event = handler.verify_and_parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    case event
    when OrderCreatedEvent
      puts 'OrderCreatedNewTestingMyNewyTesinggggggTocHejcjk received'
      # TODO: Add ordercreatednewtestingmynewytesinggggggtochejcjk handling
    when OrderUpdatedEvent
      puts 'OrderUpdated received'
      # TODO: Add orderupdated handling
    when PaymentCompletedEvent
      puts 'PaymentCompleted received'
      # TODO: Add paymentcompleted handling
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

