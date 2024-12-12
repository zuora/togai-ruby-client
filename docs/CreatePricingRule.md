# TogaiClient::CreatePricingRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the pricing rule |  |
| **order** | **Integer** | Order of the pricing rule |  |
| **invoice_timing** | [**PricingRuleTiming**](PricingRuleTiming.md) |  | [optional] |
| **condition** | **String** | JSON logic condition deciding whether to compute this pricing rule or not | [optional] |
| **computation** | **String** | JSON logic to be computed |  |
| **action** | [**PricingRuleAction**](PricingRuleAction.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreatePricingRule.new(
  name: null,
  order: null,
  invoice_timing: null,
  condition: null,
  computation: null,
  action: null
)
```

