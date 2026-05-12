
# Email Notification Callback

*This model accepts additional fields of type Object.*

## Structure

`EmailNotificationCallback`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `message_id` | `String` | Optional | - |
| `recipient_email` | `String` | Optional | - |
| `status` | [`Status1`](../../doc/models/status-1.md) | Optional | - |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "messageId": "msg_001",
  "recipientEmail": "user@example.com",
  "status": "sent",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

