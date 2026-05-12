
# System Performance Notification Event

*This model accepts additional fields of type Object.*

## Structure

`SystemPerformanceNotificationEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `system_performance_notification_event_type` | `String` | Required, Constant | **Value**: `'system.performance'` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "systemPerformanceNotificationEventType": "system.performance",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

