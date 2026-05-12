
# Payment Callback

*This model accepts additional fields of type Object.*

## Structure

`PaymentCallback`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Required | - |
| `payment_status` | [`PaymentStatus`](../../doc/models/payment-status.md) | Required | - |
| `transaction_id` | `String` | Required | - |
| `amount` | `Float` | Optional | - |
| `currency` | `String` | Optional | - |
| `timestamp` | `DateTime` | Optional | - |
| `failure_reason` | `String` | Optional | Reason for payment failure (if applicable) |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "orderId": "order_789",
  "paymentStatus": "success",
  "transactionId": "txn_abc123",
  "amount": 59.98,
  "currency": "USD",
  "timestamp": "09/19/2025 10:35:00",
  "failureReason": "failureReason0",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

