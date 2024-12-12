# TogaiClient::ScheduleInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supported_currencies** | **Array&lt;String&gt;** |  |  |
| **pricing_cycle_config** | [**PricingCycleConfig**](PricingCycleConfig.md) |  |  |
| **pricing_rules** | [**Array&lt;PricingRule&gt;**](PricingRule.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::ScheduleInfo.new(
  supported_currencies: null,
  pricing_cycle_config: null,
  pricing_rules: null
)
```

