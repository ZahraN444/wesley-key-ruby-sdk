
# System Alert Notification Event

*This model accepts additional fields of type Object.*

## Structure

`SystemAlertNotificationEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `system_alert_notification_event_type` | `String` | Required, Constant | **Value**: `'system.alert'` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "systemAlertNotificationEventType": "system.alert",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

