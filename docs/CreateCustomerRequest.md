# TogaiClient::CreateCustomerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Customer identifier |  |
| **name** | **String** | Name of the Customer |  |
| **primary_email** | **String** | Primary email of the customer |  |
| **address** | [**Address**](Address.md) |  |  |
| **settings** | [**Array&lt;CreateEntitySetting&gt;**](CreateEntitySetting.md) |  | [optional] |
| **account** | [**CreateAccountRequestWithoutCustomerId**](CreateAccountRequestWithoutCustomerId.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateCustomerRequest.new(
  id: 01BX5ZZKBKACTAV9WEVGEMMVRZ,
  name: ACME Enterprise,
  primary_email: admin@example.com,
  address: null,
  settings: null,
  account: null
)
```

