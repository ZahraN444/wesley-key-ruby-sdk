
# Inventory Stock Decrease Event

*This model accepts additional fields of type Object.*

## Structure

`InventoryStockDecreaseEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `inventory_stock_decrease_event_type` | `String` | Required, Constant | **Value**: `'stock.decrease'` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "inventoryStockDecreaseEventType": "stock.decrease",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

