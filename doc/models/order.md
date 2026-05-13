
# Order

*This model accepts additional fields of type Object.*

## Structure

`Order`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `pet_id` | `Integer` | Optional | - |
| `quantity` | `Integer` | Optional | - |
| `ship_date` | `DateTime` | Optional | - |
| `status` | [`OrderStatus`](../../doc/models/order-status.md) | Optional | Order Status |
| `complete` | `TrueClass \| FalseClass` | Optional | - |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "id": 180,
  "petId": 220,
  "quantity": 136,
  "shipDate": "2016-03-13T12:52:32.123Z",
  "status": "placed",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

