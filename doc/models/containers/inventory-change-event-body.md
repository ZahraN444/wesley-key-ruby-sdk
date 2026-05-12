
# Inventory Change Event Body

## Data Type

`InventoryStockIncreaseEvent | InventoryStockDecreaseEvent | InventoryStockDepletedEvent`

## Cases

| Type |
|  --- |
| [`InventoryStockIncreaseEvent`](../../../doc/models/inventory-stock-increase-event.md) |
| [`InventoryStockDecreaseEvent`](../../../doc/models/inventory-stock-decrease-event.md) |
| [`InventoryStockDepletedEvent`](../../../doc/models/inventory-stock-depleted-event.md) |

## InventoryStockIncreaseEvent

### Initialization Code

#### Example

```ruby
value = InventoryStockIncreaseEvent.new(
  inventory_stock_increase_event_type: 'stock.increase'
)
```

## InventoryStockDecreaseEvent

### Initialization Code

#### Example

```ruby
value = InventoryStockDecreaseEvent.new(
  inventory_stock_decrease_event_type: 'stock.decrease'
)
```

## InventoryStockDepletedEvent

### Initialization Code

#### Example

```ruby
value = InventoryStockDepletedEvent.new(
  inventory_stock_depleted_event_type: 'stock.depleted'
)
```

