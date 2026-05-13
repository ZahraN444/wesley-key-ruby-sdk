# Store

Access to Petstore orders

Find out more about our store: [https://swagger.io](https://swagger.io)

```ruby
store_api = client.store
```

## Class Name

`StoreApi`

## Methods

* [Get Inventory](../../doc/controllers/store.md#get-inventory)
* [Place Order](../../doc/controllers/store.md#place-order)
* [Get Order by Id](../../doc/controllers/store.md#get-order-by-id)
* [Delete Order](../../doc/controllers/store.md#delete-order)


# Get Inventory

Returns a map of status codes to quantities.

```ruby
def get_inventory
```

## Authentication

This endpoint requires [api_key](../../doc/auth/custom-header-signature.md)

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type `Hash[String, Integer]`.

## Example Usage

```ruby
result = store_api.get_inventory

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| Default | Unexpected error | `APIException` |


# Place Order

Place a new order in the store.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def place_order(id: nil,
                pet_id: nil,
                quantity: nil,
                ship_date: nil,
                status: nil,
                complete: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Form, Optional | - |
| `pet_id` | `Integer` | Form, Optional | - |
| `quantity` | `Integer` | Form, Optional | - |
| `ship_date` | `DateTime` | Form, Optional | - |
| `status` | [`OrderStatus`](../../doc/models/order-status.md) | Form, Optional | Order Status |
| `complete` | `TrueClass \| FalseClass` | Form, Optional | - |

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Order`](../../doc/models/order.md).

## Example Usage

```ruby
id = 10

pet_id = 198772

quantity = 7

result = store_api.place_order(
  id: id,
  pet_id: pet_id,
  quantity: quantity
)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid input | `APIException` |
| 422 | Validation exception | `APIException` |
| Default | Unexpected error | `APIException` |


# Get Order by Id

For valid response try integer IDs with value <= 5 or > 10. Other values will generate exceptions.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_order_by_id(order_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `Integer` | Template, Required | ID of order that needs to be fetched |

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Order`](../../doc/models/order.md).

## Example Usage

```ruby
order_id = 62

result = store_api.get_order_by_id(order_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid ID supplied | `APIException` |
| 404 | Order not found | `APIException` |
| Default | Unexpected error | `APIException` |


# Delete Order

For valid response try integer IDs with value < 1000. Anything above 1000 or non-integers will generate API errors.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def delete_order(order_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `Integer` | Template, Required | ID of the order that needs to be deleted |

## Response Type

**200**: order deleted

This method returns an [`ApiResponse`](../../doc/api-response.md) instance.

## Example Usage

```ruby
order_id = 62

result = store_api.delete_order(order_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid ID supplied | `APIException` |
| 404 | Order not found | `APIException` |
| Default | Unexpected error | `APIException` |

