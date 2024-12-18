# TogaiClient::CreateCustomerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of customer |  |
| **togai_customer_id** | **String** | Unique identifier of customer |  |
| **name** | **String** | Name of the Customer |  |
| **primary_email** | **String** | Primary email of the customer |  |
| **billing_address** | **String** |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **settings** | [**Array&lt;CreateEntitySetting&gt;**](CreateEntitySetting.md) |  | [optional] |
| **account** | [**Account**](Account.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateCustomerResponse.new(
  id: null,
  togai_customer_id: null,
  name: null,
  primary_email: null,
  billing_address: null,
  address: null,
  settings: null,
  account: null
)
```

