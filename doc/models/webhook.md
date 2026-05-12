
# Webhook

*This model accepts additional fields of type Object.*

## Structure

`Webhook`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `webhook_id` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `last_delivery` | `DateTime` | Optional | Timestamp of the last successful delivery |
| `delivery_count` | `Integer` | Optional | Total number of events delivered |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "webhookId": "webhook_456",
  "createdAt": "09/19/2025 09:00:00",
  "updatedAt": "09/19/2025 09:00:00",
  "deliveryCount": 42,
  "lastDelivery": "2016-03-13T12:52:32.123Z",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

