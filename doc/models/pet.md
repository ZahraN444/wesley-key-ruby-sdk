
# Pet

*This model accepts additional fields of type Object.*

## Structure

`Pet`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `name` | `String` | Required | - |
| `category` | [`Category`](../../doc/models/category.md) | Optional | - |
| `photo_urls` | `Array[String]` | Required | - |
| `tags` | [`Array[Tag]`](../../doc/models/tag.md) | Optional | - |
| `status` | [`PetStatus`](../../doc/models/pet-status.md) | Optional | pet status in the store |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example (as JSON)

```json
{
  "id": 120,
  "name": "name0",
  "category": {
    "id": 232,
    "name": "name2",
    "exampleAdditionalProperty": {
      "key1": "val1",
      "key2": "val2"
    }
  },
  "photoUrls": [
    "photoUrls5",
    "photoUrls6"
  ],
  "tags": [
    {
      "id": 26,
      "name": "name0",
      "exampleAdditionalProperty": {
        "key1": "val1",
        "key2": "val2"
      }
    }
  ],
  "status": "available",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

