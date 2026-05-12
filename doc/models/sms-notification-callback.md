
# Sms Notification Callback

*This model accepts additional fields of type Object.*

## Structure

`SmsNotificationCallback`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `message_id` | `String` | Optional | - |
| `phone_number` | `String` | Optional | - |
| `status` | [`Status2`](../../doc/models/status-2.md) | Optional | - |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "messageId": "sms_002",
  "phoneNumber": "+15551234567",
  "status": "delivered",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

