# TogaiClient::CreditBalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_credits** | **Float** |  |  |
| **available_balance** | **Float** |  |  |
| **running_balance** | **Float** |  |  |
| **inapplicable_credits** | **Float** |  |  |
| **unit** | **String** |  |  |
| **last_updated_at** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreditBalanceResponse.new(
  active_credits: 1000,
  available_balance: 700,
  running_balance: 500,
  inapplicable_credits: 500,
  unit: USD,
  last_updated_at: 2021-01-01T00:00Z
)
```

