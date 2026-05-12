
# User Status Notification Event

*This model accepts additional fields of type Object.*

## Structure

`UserStatusNotificationEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `user_status_notification_event_type` | `String` | Required, Constant | **Value**: `'user.status'` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "userStatusNotificationEventType": "user.status",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

