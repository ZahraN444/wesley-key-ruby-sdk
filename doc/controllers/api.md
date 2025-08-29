# API

```ruby
client_controller = client.client
```

## Class Name

`APIController`

## Methods

* [Createanitem](../../doc/controllers/api.md#createanitem)
* [Getanitemby ID](../../doc/controllers/api.md#getanitemby-id)
* [Create O Auth Token](../../doc/controllers/api.md#create-o-auth-token)
* [Test Endpointwith Arrays](../../doc/controllers/api.md#test-endpointwith-arrays)


# Createanitem

Creates a new resource in the system.

```ruby
def createanitem(status,
                 body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | [`Status11Enum`](../../doc/models/status-11-enum.md) | Template, Required | The status of the items to filter by. |
| `body` | [`Item`](../../doc/models/item.md) | Body, Optional | Custom model with additional properties |

## Response Type

`Object`

## Example Usage

```ruby
status = Status11Enum::ENUMVALUE3

body = Item.new(
  '550e8400-e29b-41d4-a716-446655440000',
  'John Doe',
  Date.iso8601('2024-05-24'),
  DateTimeHelper.from_rfc3339('05/24/2024 12:00:00'),
  1234.56,
  1234567890123,
  true,
  CustomEnum::VALUE3,
  { 'key1' => 'val1', 'key2' => 'val2' },
  JSON.parse('{"key1":"val1","key2":"val2"}'),
  {
    'key0': Message.new(
      246,
      'text4'
    ),
    'key1': Message.new(
      246,
      'text4'
    )
  },
  envrr
)

result = client_controller.createanitem(
  status,
  body: body
)
puts result
```

## Example Response

```
{
  "match": "client_mac",
  "name": "cameras",
  "type": "match",
  "values": [
    "010203040506",
    "abcdef*"
  ]
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Syntax | `APIException` |
| 401 | Unauthorized | `APIException` |
| 403 | Permission Denied | `APIException` |


# Getanitemby ID

```ruby
def getanitemby_id(id,
                   value)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | The ID of the item to retrieve |
| `value` | `String` | Query, Required | The value of the item to retrieve |

## Response Type

[`Item`](../../doc/models/item.md)

## Example Usage

```ruby
id = 'id0'

value = 'value2'

result = client_controller.getanitemby_id(
  id,
  value
)
puts result
```


# Create O Auth Token

Generates a new OAuth token with the specified scopes.

```ruby
def create_o_auth_token(body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`TokensRequest`](../../doc/models/tokens-request.md) | Body, Optional | - |

## Response Type

`void`

## Example Usage

```ruby
client_controller.create_o_auth_token
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request | `APIException` |


# Test Endpointwith Arrays

This endpoint accepts a complex structure with multiple arrays.

```ruby
def test_endpointwith_arrays(body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`MultipleArraysRequest`](../../doc/models/multiple-arrays-request.md) | Body, Optional | - |

## Response Type

`void`

## Example Usage

```ruby
client_controller.test_endpointwith_arrays
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad request | `APIException` |

