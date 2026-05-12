
# Webhook Registration

*This model accepts additional fields of type Object.*

## Structure

`WebhookRegistration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `url` | `String` | Required | The endpoint URL that will receive webhook events |
| `events` | [`Array[Event]`](../../doc/models/event.md) | Required | List of events to subscribe to |
| `secret` | `String` | Optional | Secret key for webhook signature verification |
| `active` | `TrueClass \| FalseClass` | Optional | Whether the webhook is active<br><br>**Default**: `true` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "url": "https://merchant.example.com/webhooks/events",
  "events": [
    "order.created",
    "payment.completed"
  ],
  "secret": "webhook_secret_key_123",
  "active": true,
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

