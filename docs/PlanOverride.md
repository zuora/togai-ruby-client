# TogaiClient::PlanOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **price_plan_id** | **String** |  |  |
| **price_plan_name** | **String** |  |  |
| **price_plan_details_override** | [**PricePlanDetailsOverride**](PricePlanDetailsOverride.md) |  | [optional] |
| **pricing_rules_override** | [**Array&lt;PricingRule&gt;**](PricingRule.md) |  | [optional] |
| **start_date** | **Time** |  |  |
| **end_date** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PlanOverride.new(
  id: null,
  price_plan_id: null,
  price_plan_name: null,
  price_plan_details_override: null,
  pricing_rules_override: null,
  start_date: null,
  end_date: null
)
```

