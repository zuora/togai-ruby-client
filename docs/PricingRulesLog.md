# TogaiClient::PricingRulesLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  | [optional] |
| **order** | **Integer** |  |  |
| **changes** | [**PricingRuleChangesLog**](PricingRuleChangesLog.md) |  |  |
| **rule** | [**PricingRuleInfo**](PricingRuleInfo.md) |  | [optional] |
| **variables_value** | [**Hash&lt;String, PricingRulesValues&gt;**](PricingRulesValues.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricingRulesLog.new(
  id: null,
  type: null,
  order: null,
  changes: null,
  rule: null,
  variables_value: null
)
```

