# Pet

Everything about your Pets

Find out more: [https://swagger.io](https://swagger.io)

```ruby
pet_api = client.pet
```

## Class Name

`PetApi`

## Methods

* [Update Pet](../../doc/controllers/pet.md#update-pet)
* [Add Pet](../../doc/controllers/pet.md#add-pet)
* [Find Pets by Status](../../doc/controllers/pet.md#find-pets-by-status)
* [Find Pets by Tags](../../doc/controllers/pet.md#find-pets-by-tags)
* [Get Pet by Id](../../doc/controllers/pet.md#get-pet-by-id)
* [Update Pet with Form](../../doc/controllers/pet.md#update-pet-with-form)
* [Delete Pet](../../doc/controllers/pet.md#delete-pet)
* [Upload File](../../doc/controllers/pet.md#upload-file)


# Update Pet

Update an existing pet by Id.

```ruby
def update_pet(name,
               photo_urls,
               id: nil,
               category: nil,
               tags: nil,
               status: nil)
```

## Authentication

This endpoint requires [petstore_auth](../../doc/auth/oauth-2-implicit-grant.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Form, Required | - |
| `photo_urls` | `Array[String]` | Form, Required | - |
| `id` | `Integer` | Form, Optional | - |
| `category` | [`Category`](../../doc/models/category.md) | Form, Optional | - |
| `tags` | [`Array[Tag]`](../../doc/models/tag.md) | Form, Optional | - |
| `status` | [`PetStatus`](../../doc/models/pet-status.md) | Form, Optional | pet status in the store |

## Requires scope

### petstore_auth

`read:pets`, `write:pets`

## Response Type

**200**: Successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Pet`](../../doc/models/pet.md).

## Example Usage

```ruby
name = 'doggie'

photo_urls = [
  'photoUrls5',
  'photoUrls6',
  'photoUrls7'
]

id = 10

tags = [
  Tag.new
]

result = pet_api.update_pet(
  name,
  photo_urls,
  id: id,
  tags: tags
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
| 400 | Invalid ID supplied | `APIException` |
| 404 | Pet not found | `APIException` |
| 422 | Validation exception | `APIException` |
| Default | Unexpected error | `APIException` |


# Add Pet

Add a new pet to the store.

```ruby
def add_pet(name,
            photo_urls,
            id: nil,
            category: nil,
            tags: nil,
            status: nil)
```

## Authentication

This endpoint requires [petstore_auth](../../doc/auth/oauth-2-implicit-grant.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Form, Required | - |
| `photo_urls` | `Array[String]` | Form, Required | - |
| `id` | `Integer` | Form, Optional | - |
| `category` | [`Category`](../../doc/models/category.md) | Form, Optional | - |
| `tags` | [`Array[Tag]`](../../doc/models/tag.md) | Form, Optional | - |
| `status` | [`PetStatus`](../../doc/models/pet-status.md) | Form, Optional | pet status in the store |

## Requires scope

### petstore_auth

`read:pets`, `write:pets`

## Response Type

**200**: Successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Pet`](../../doc/models/pet.md).

## Example Usage

```ruby
name = 'doggie'

photo_urls = [
  'photoUrls5',
  'photoUrls6',
  'photoUrls7'
]

id = 10

tags = [
  Tag.new
]

result = pet_api.add_pet(
  name,
  photo_urls,
  id: id,
  tags: tags
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


# Find Pets by Status

Multiple status values can be provided with comma separated strings.

```ruby
def find_pets_by_status(status: nil)
```

## Authentication

This endpoint requires [petstore_auth](../../doc/auth/oauth-2-implicit-grant.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | [`PetStatus`](../../doc/models/pet-status.md) | Query, Optional | Status values that need to be considered for filter |

## Requires scope

### petstore_auth

`read:pets`, `write:pets`

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Array[Pet]`](../../doc/models/pet.md).

## Example Usage

```ruby
result = pet_api.find_pets_by_status

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid status value | `APIException` |
| Default | Unexpected error | `APIException` |


# Find Pets by Tags

Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.

```ruby
def find_pets_by_tags(tags: nil)
```

## Authentication

This endpoint requires [petstore_auth](../../doc/auth/oauth-2-implicit-grant.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `tags` | `Array[String]` | Query, Optional | Tags to filter by |

## Requires scope

### petstore_auth

`read:pets`, `write:pets`

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Array[Pet]`](../../doc/models/pet.md).

## Example Usage

```ruby
result = pet_api.find_pets_by_tags

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid tag value | `APIException` |
| Default | Unexpected error | `APIException` |


# Get Pet by Id

Returns a single pet.

```ruby
def get_pet_by_id(pet_id)
```

## Authentication

This endpoint requires [api_key](../../doc/auth/custom-header-signature.md) **OR** [petstore_auth](../../doc/auth/oauth-2-implicit-grant.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pet_id` | `Integer` | Template, Required | ID of pet to return |

## Requires scope

### petstore_auth

`read:pets`, `write:pets`

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Pet`](../../doc/models/pet.md).

## Example Usage

```ruby
pet_id = 10

result = pet_api.get_pet_by_id(pet_id)

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
| 404 | Pet not found | `APIException` |
| Default | Unexpected error | `APIException` |


# Update Pet with Form

Updates a pet resource based on the form data.

```ruby
def update_pet_with_form(pet_id,
                         name: nil,
                         status: nil)
```

## Authentication

This endpoint requires [petstore_auth](../../doc/auth/oauth-2-implicit-grant.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pet_id` | `Integer` | Template, Required | ID of pet that needs to be updated |
| `name` | `String` | Query, Optional | Name of pet that needs to be updated |
| `status` | `String` | Query, Optional | Status of pet that needs to be updated |

## Requires scope

### petstore_auth

`read:pets`, `write:pets`

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Pet`](../../doc/models/pet.md).

## Example Usage

```ruby
pet_id = 10

result = pet_api.update_pet_with_form(pet_id)

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
| Default | Unexpected error | `APIException` |


# Delete Pet

Delete a pet.

```ruby
def delete_pet(pet_id,
               api_key: nil)
```

## Authentication

This endpoint requires [petstore_auth](../../doc/auth/oauth-2-implicit-grant.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pet_id` | `Integer` | Template, Required | Pet id to delete |
| `api_key` | `String` | Header, Optional | - |

## Requires scope

### petstore_auth

`read:pets`, `write:pets`

## Response Type

**200**: Pet deleted

This method returns an [`ApiResponse`](../../doc/api-response.md) instance.

## Example Usage

```ruby
pet_id = 10

result = pet_api.delete_pet(pet_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid pet value | `APIException` |
| Default | Unexpected error | `APIException` |


# Upload File

Upload image of the pet.

```ruby
def upload_file(pet_id,
                additional_metadata: nil,
                body: nil)
```

## Authentication

This endpoint requires [petstore_auth](../../doc/auth/oauth-2-implicit-grant.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pet_id` | `Integer` | Template, Required | ID of pet to update |
| `additional_metadata` | `String` | Query, Optional | Additional Metadata |
| `body` | `File \| UploadIO` | Form, Optional | - |

## Requires scope

### petstore_auth

`read:pets`, `write:pets`

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`ApiResponse`](../../doc/models/api-response.md).

## Example Usage

```ruby
pet_id = 10

result = pet_api.upload_file(pet_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | No file uploaded | `APIException` |
| 404 | Pet not found | `APIException` |
| Default | Unexpected error | `APIException` |

