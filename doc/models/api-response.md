
# Api Response

*This model accepts additional fields of type Object.*

## Structure

`ApiResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `Integer` | Optional | - |
| `type` | `String` | Optional | - |
| `message` | `String` | Optional | - |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "code": 142,
  "type": "type0",
  "message": "message0",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

