# TogaiClient::CreditTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of credit transactions |  |
| **credit_id** | **String** |  |  |
| **transaction_type** | **String** |  |  |
| **invoice_id** | **String** |  | [optional] |
| **entity_id** | **String** |  | [optional] |
| **amount** | **Float** |  |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreditTransaction.new(
  id: null,
  credit_id: null,
  transaction_type: CREDITED,
  invoice_id: null,
  entity_id: null,
  amount: 200,
  created_at: null
)
```

