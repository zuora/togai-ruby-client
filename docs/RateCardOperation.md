# TogaiClient::RateCardOperation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_type** | **String** | Operation type |  |
| **rate_card_name** | **String** | Name of rate card |  |
| **rate_card** | [**RateCardData**](RateCardData.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RateCardOperation.new(
  action_type: null,
  rate_card_name: null,
  rate_card: null
)
```

