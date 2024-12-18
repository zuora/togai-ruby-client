# TogaiClient::WalletBalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **customer_id** | **String** |  |  |
| **balance** | **Float** | This amount is the difference of total credited amount and sum of consumed, hold amount. ie. credit amount - (consumed amount + hold amount)  |  |
| **credit_unit** | **String** |  |  |
| **external_id** | **String** |  | [optional] |
| **status** | [**WalletStatus**](WalletStatus.md) |  |  |
| **hold_amount** | **Float** |  | [optional] |
| **effective_from** | **Time** |  |  |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::WalletBalanceResponse.new(
  id: null,
  account_id: ACC001,
  customer_id: ACC001,
  balance: 500,
  credit_unit: USD,
  external_id: null,
  status: null,
  hold_amount: 500,
  effective_from: null,
  created_at: null,
  updated_at: null,
  metadata: null
)
```

