
# Create Order Request

*This model accepts additional fields of type Object.*

## Structure

`CreateOrderRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Required | Unique identifier for the customer |
| `items` | [`Array[OrderItem]`](../../doc/models/order-item.md) | Required | **Constraints**: *Minimum Items*: `1` |
| `callback_url` | `String` | Required | URL to receive callback notifications |
| `document` | `Binary` | Optional | Binary file upload |
| `metadata` | `Object` | Optional | Additional order metadata |
| `attributes` | `Hash[String, String]` | Optional | - |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "customerId": "cust_12345",
  "items": [
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
  ],
  "callbackUrl": "https://merchant.example.com/callbacks/payment",
  "attributes": {
    "color": "red",
    "size": "XL"
  },
  "document": "data:text/plain;name=dummy_file;base64,",
  "metadata": {
    "key1": "val1",
    "key2": "val2"
  },
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

