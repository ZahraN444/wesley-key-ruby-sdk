
# Order Item

*This model accepts additional fields of type Object.*

## Structure

`OrderItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product_id` | `String` | Required | - |
| `quantity` | `Integer` | Required | **Constraints**: `>= 1` |
| `price` | `Float` | Required | **Constraints**: `>= 0` |
| `description` | `String` | Optional | - |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "productId": "prod_001",
  "quantity": 2,
  "price": 29.99,
  "description": "Premium Widget",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

