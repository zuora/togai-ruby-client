# TogaiClient::WalletEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of credit transactions |  |
| **description** | **String** | description of the entry | [optional] |
| **wallet_id** | **String** |  |  |
| **transaction_type** | **String** |  |  |
| **status** | **String** |  |  |
| **entity_id** | **String** |  | [optional] |
| **amount** | **Float** |  |  |
| **created_at** | **Time** |  |  |
| **closing_balance** | **Float** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::WalletEntry.new(
  id: null,
  description: null,
  wallet_id: null,
  transaction_type: CREDITED,
  status: COMPLETED,
  entity_id: null,
  amount: 200,
  created_at: null,
  closing_balance: 200
)
```

