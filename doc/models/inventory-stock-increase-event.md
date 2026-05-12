
# Inventory Stock Increase Event

*This model accepts additional fields of type Object.*

## Structure

`InventoryStockIncreaseEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `inventory_stock_increase_event_type` | `String` | Required, Constant | **Value**: `'stock.increase'` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "inventoryStockIncreaseEventType": "stock.increase",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

