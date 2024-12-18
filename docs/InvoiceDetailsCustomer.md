# TogaiClient::InvoiceDetailsCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **primary_email** | **String** |  |  |
| **billing_address** | **String** |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::InvoiceDetailsCustomer.new(
  name: null,
  primary_email: null,
  billing_address: null,
  address: null
)
```

