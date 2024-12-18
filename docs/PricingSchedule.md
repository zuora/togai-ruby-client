# TogaiClient::PricingSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **price_plan_details** | [**PricePlanDetails**](PricePlanDetails.md) |  | [optional] |
| **start_date** | **Time** |  |  |
| **end_date** | **Time** |  |  |
| **version** | **Integer** |  |  |
| **pricing_rules** | [**Array&lt;PricingRule&gt;**](PricingRule.md) |  | [optional] |
| **is_overriden** | **Boolean** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricingSchedule.new(
  id: null,
  price_plan_details: null,
  start_date: null,
  end_date: null,
  version: null,
  pricing_rules: null,
  is_overriden: null
)
```

