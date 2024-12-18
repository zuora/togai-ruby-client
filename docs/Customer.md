# TogaiClient::Customer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of customer |  |
| **togai_customer_id** | **String** | Unique identifier of customer |  |
| **name** | **String** | Name of the Customer |  |
| **primary_email** | **String** | Primary email of the customer |  |
| **billing_address** | **String** | billing address of the customer |  |
| **address** | [**Address**](Address.md) |  |  |
| **status** | **String** | Status of the customer |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Customer.new(
  id: null,
  togai_customer_id: null,
  name: null,
  primary_email: null,
  billing_address: 201 Boulevard, WA 53123,
  address: null,
  status: ACTIVE,
  created_at: null,
  updated_at: null
)
```

