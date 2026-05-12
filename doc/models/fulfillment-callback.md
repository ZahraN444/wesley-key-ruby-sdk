
# Fulfillment Callback

*This model accepts additional fields of type Object.*

## Structure

`FulfillmentCallback`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Required | - |
| `fulfillment_status` | [`FulfillmentStatus`](../../doc/models/fulfillment-status.md) | Required | - |
| `tracking_number` | `String` | Optional | - |
| `carrier` | `String` | Optional | - |
| `scopes` | [`Array[OauthScopeOauthACG]`](../../doc/models/oauth-scope-oauth-acg.md) | Optional | List of scopes that apply to the OAuth token<br><br>**Constraints**: *Unique Items Required* |
| `estimated_delivery` | `Date` | Optional | - |
| `timestamp` | `DateTime` | Optional | - |
| `document` | `Binary` | Optional | Binary file upload |
| `total_weight` | `Float` | Optional | - |
| `price` | `Float` | Optional | - |
| `quantity` | `Integer` | Optional | - |
| `long_id` | `Integer` | Optional | - |
| `fragile` | `TrueClass \| FalseClass` | Optional | - |
| `notes` | `String` | Optional | Explicitly nullable field |
| `items` | `Array[String]` | Optional | - |
| `packages` | [`Array[Package]`](../../doc/models/package.md) | Optional | - |
| `address` | [`Address`](../../doc/models/address.md) | Optional | - |
| `metadata` | `Object` | Optional | - |
| `attributes` | `Hash[String, String]` | Optional | - |
| `delivery_details` | String \| [DeliveryDetails](../../doc/models/delivery-details.md) \| nil | Optional | This is a container for one-of cases. |
| `order_idd` | `String` | Optional | - |
| `fulfillment_statuss` | [`FulfillmentStatuss`](../../doc/models/fulfillment-statuss.md) | Optional | - |
| `tracking_numberr` | `String` | Optional | - |
| `carrierr` | `String` | Optional | - |
| `scopess` | [`Array[OauthScopeOauthACG]`](../../doc/models/oauth-scope-oauth-acg.md) | Optional | List of scopes that apply to the OAuth token<br><br>**Constraints**: *Unique Items Required* |
| `estimated_deliveryy` | `Date` | Optional | - |
| `timestampp` | `DateTime` | Optional | - |
| `documentt` | `Binary` | Optional | Binary file upload |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "orderId": null,
  "fulfillmentStatus": "fulfilled",
  "carrier": "FedEx",
  "estimatedDelivery": "2025-09-22",
  "timestamp": "09/19/2025 14:00:00",
  "totalWeight": 12.75,
  "price": 199.99,
  "quantity": 5,
  "longId": 9223372036854775807,
  "fragile": true,
  "items": [
    "item1",
    "item2"
  ],
  "packages": [
    {
      "packageId": "PKG123",
      "weight": 2.5
    }
  ],
  "address": {
    "street": "123 Main St",
    "city": "New York",
    "zip": "10001"
  },
  "metadata": {
    "customField1": "value",
    "customField2": 123
  },
  "attributes": {
    "color": "red",
    "size": "XL"
  },
  "deliveryDetails": {
    "method": "express",
    "eta": "2025-09-21T12:00:00Z"
  },
  "fulfillmentStatuss": "fulfilled",
  "carrierr": "FedEx",
  "estimatedDeliveryy": "2025-09-22",
  "timestampp": "09/19/2025 14:00:00",
  "trackingNumber": "trackingNumber4",
  "scopes": [
    "test1",
    "selection",
    "file_requests.read"
  ],
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

