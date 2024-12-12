# TogaiClient::CreateCustomerContactResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |
| **preferred_username** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **login_access** | **Boolean** |  |  |
| **created_by** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **verified** | **Boolean** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateCustomerContactResponse.new(
  username: null,
  preferred_username: null,
  name: null,
  email: null,
  phone: null,
  login_access: null,
  created_by: null,
  created_at: null,
  verified: null
)
```

