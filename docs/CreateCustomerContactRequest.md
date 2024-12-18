# TogaiClient::CreateCustomerContactRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **preferred_username** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **password** | **String** |  | [optional] |
| **email** | **String** |  |  |
| **phone** | **String** |  | [optional] |
| **verified** | **Boolean** |  | [optional] |
| **login_access** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateCustomerContactRequest.new(
  preferred_username: null,
  name: null,
  password: null,
  email: null,
  phone: null,
  verified: null,
  login_access: null
)
```

