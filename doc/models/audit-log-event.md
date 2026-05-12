
# Audit Log Event

*This model accepts additional fields of type Object.*

## Structure

`AuditLogEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `event_type` | [`EventType3`](../../doc/models/event-type-3.md) | Optional | - |
| `actor` | `String` | Optional | - |
| `action` | `String` | Optional | - |
| `context` | `Object` | Optional | - |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "eventType": "audit.log",
  "actor": "actor0",
  "action": "action2",
  "context": {
    "key1": "val1",
    "key2": "val2"
  },
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

