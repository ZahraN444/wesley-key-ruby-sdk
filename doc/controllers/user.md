# User

Operations about user

```ruby
user_api = client.user
```

## Class Name

`UserApi`

## Methods

* [Create User](../../doc/controllers/user.md#create-user)
* [Create Users with List Input](../../doc/controllers/user.md#create-users-with-list-input)
* [Login User](../../doc/controllers/user.md#login-user)
* [Logout User](../../doc/controllers/user.md#logout-user)
* [Get User by Name](../../doc/controllers/user.md#get-user-by-name)
* [Update User](../../doc/controllers/user.md#update-user)
* [Delete User](../../doc/controllers/user.md#delete-user)


# Create User

This can only be done by the logged in user.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def create_user(id: nil,
                username: nil,
                first_name: nil,
                last_name: nil,
                email: nil,
                password: nil,
                phone: nil,
                user_status: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Form, Optional | - |
| `username` | `String` | Form, Optional | - |
| `first_name` | `String` | Form, Optional | - |
| `last_name` | `String` | Form, Optional | - |
| `email` | `String` | Form, Optional | - |
| `password` | `String` | Form, Optional | - |
| `phone` | `String` | Form, Optional | - |
| `user_status` | `Integer` | Form, Optional | User Status |

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`User`](../../doc/models/user.md).

## Example Usage

```ruby
id = 10

username = 'theUser'

first_name = 'John'

last_name = 'James'

email = 'john@email.com'

password = '12345'

phone = '12345'

user_status = 1

result = user_api.create_user(
  id: id,
  username: username,
  first_name: first_name,
  last_name: last_name,
  email: email,
  password: password,
  phone: phone,
  user_status: user_status
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
| Default | Unexpected error | `APIException` |


# Create Users with List Input

Creates list of users with given input array.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def create_users_with_list_input(body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Array[User]`](../../doc/models/user.md) | Body, Optional | - |

## Response Type

**200**: Successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`User`](../../doc/models/user.md).

## Example Usage

```ruby
body = [
  User.new
]

result = user_api.create_users_with_list_input(body: body)

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


# Login User

Log into the system.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def login_user(username: nil,
               password: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `username` | `String` | Query, Optional | The user name for login |
| `password` | `String` | Query, Optional | The password for login in clear text |

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type `String`.

## Example Usage

```ruby
result = user_api.login_user

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid username/password supplied | `APIException` |
| Default | Unexpected error | `APIException` |


# Logout User

Log user out of the system.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def logout_user
```

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance.

## Example Usage

```ruby
result = user_api.logout_user

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


# Get User by Name

Get user detail based on username.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_user_by_name(usersname)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `usersname` | `String` | Template, Required | The username that needs to be processed |

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`User`](../../doc/models/user.md).

## Example Usage

```ruby
usersname = 'usersname0'

result = user_api.get_user_by_name(usersname)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid username supplied | `APIException` |
| 404 | User not found | `APIException` |
| Default | Unexpected error | `APIException` |


# Update User

This can only be done by the logged in user.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def update_user(usersname,
                id: nil,
                username: nil,
                first_name: nil,
                last_name: nil,
                email: nil,
                password: nil,
                phone: nil,
                user_status: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `usersname` | `String` | Template, Required | The username that needs to be processed |
| `id` | `Integer` | Form, Optional | - |
| `username` | `String` | Form, Optional | - |
| `first_name` | `String` | Form, Optional | - |
| `last_name` | `String` | Form, Optional | - |
| `email` | `String` | Form, Optional | - |
| `password` | `String` | Form, Optional | - |
| `phone` | `String` | Form, Optional | - |
| `user_status` | `Integer` | Form, Optional | User Status |

## Response Type

**200**: successful operation

This method returns an [`ApiResponse`](../../doc/api-response.md) instance.

## Example Usage

```ruby
usersname = 'usersname0'

id = 10

username = 'theUser'

first_name = 'John'

last_name = 'James'

email = 'john@email.com'

password = '12345'

phone = '12345'

user_status = 1

result = user_api.update_user(
  usersname,
  id: id,
  username: username,
  first_name: first_name,
  last_name: last_name,
  email: email,
  password: password,
  phone: phone,
  user_status: user_status
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
| 400 | bad request | `APIException` |
| 404 | user not found | `APIException` |
| Default | Unexpected error | `APIException` |


# Delete User

This can only be done by the logged in user.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def delete_user(usersname)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `usersname` | `String` | Template, Required | The username that needs to be processed |

## Response Type

**200**: User deleted

This method returns an [`ApiResponse`](../../doc/api-response.md) instance.

## Example Usage

```ruby
usersname = 'usersname0'

result = user_api.delete_user(usersname)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid username supplied | `APIException` |
| 404 | User not found | `APIException` |
| Default | Unexpected error | `APIException` |

