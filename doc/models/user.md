
# User

*This model accepts additional fields of type Object.*

## Structure

`User`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `username` | `String` | Optional | - |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `email` | `String` | Optional | - |
| `password` | `String` | Optional | - |
| `phone` | `String` | Optional | - |
| `user_status` | `Integer` | Optional | User Status |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "id": 82,
  "username": "username6",
  "firstName": "firstName8",
  "lastName": "lastName0",
  "email": "email0",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

