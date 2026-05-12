# Orders

Order management operations

```ruby
orders_api = client.orders
```

## Class Name

`OrdersApi`


# Create Order

Creates a new order and triggers callbacks for payment processing

```ruby
def create_order(body)
```

## Authentication

This endpoint requires [ApiKey](../../doc/auth/custom-header-signature.md) **OR** [BearerAuth](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CreateOrderRequest`](../../doc/models/create-order-request.md) | Body, Required | - |

## Response Type

**201**: Order created successfully

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Order`](../../doc/models/order.md).

## Related Callbacks

| Name | Description |
|  --- | --- |
| [Payment Callback](../../doc/events/callbacks/callbacks_a/payment-callback.md) | Called when payment processing is complete |
| [Fulfillment Callback](../../doc/events/callbacks/callbacks_a/fulfillment-callback.md) | Called when order processing is complete |
| [Email Notification Callback](../../doc/events/callbacks/callbacks_b/email-notification-callback.md) | Called when email notification delivery is complete |
| [Sms Notification Callback](../../doc/events/callbacks/callbacks_b/sms-notification-callback.md) | Called when SMS notification delivery is complete |

## Example Usage

```ruby
body = CreateOrderRequest.new(
  customer_id: 'cust_12345',
  items: [
    OrderItem.new(
      product_id: 'prod_001',
      quantity: 2,
      price: 29.99
    )
  ],
  callback_url: 'https://merchant.example.com/callbacks/payment'
)

result = orders_api.create_order(body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid request | [`ErrorException`](../../doc/models/error-exception.md) |

