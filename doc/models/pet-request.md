
# Pet Request

## Structure

`PetRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `category` | [`Category2`](../../doc/models/category-2.md) | Optional | - |
| `name` | `String` | Required | - |
| `photo_urls` | `Array<String>` | Required | - |
| `tags` | [`Array<Tag>`](../../doc/models/tag.md) | Optional | - |
| `status` | [`StatusEnum`](../../doc/models/status-enum.md) | Optional | - |

## Example (as JSON)

```json
{
  "id": 198,
  "category": null,
  "name": "name4",
  "photoUrls": [
    "photoUrls9"
  ],
  "tags": [
    null,
    {},
    {}
  ],
  "status": "pending"
}
```

