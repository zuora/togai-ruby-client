# TogaiClient::PricingRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **version** | **Integer** |  |  |
| **invoice_timing** | [**PricingRuleTiming**](PricingRuleTiming.md) |  | [optional] |
| **order** | **Integer** |  |  |
| **condition** | **String** | JSON logic condition deciding whether to compute this pricing rule or not | [optional] |
| **computation** | **String** | JSON logic to be computed |  |
| **action** | [**PricingRuleAction**](PricingRuleAction.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricingRule.new(
  id: null,
  name: null,
  version: null,
  invoice_timing: null,
  order: null,
  condition: null,
  computation: null,
  action: null
)
```

