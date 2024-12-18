# TogaiClient::UpdateCustomerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the Customer | [optional] |
| **primary_email** | **String** | Primary email of the customer | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateCustomerRequest.new(
  name: ACME Enterprise,
  primary_email: admin@example.com,
  address: null
)
```

