# TogaiClient::PricingScheduleWithPricePlanId

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
| **price_plan_id** | **String** |  |  |
| **price_plan_name** | **String** |  | [optional] |
| **price_plan_info** | [**PricePlanInfo**](PricePlanInfo.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricingScheduleWithPricePlanId.new(
  id: null,
  price_plan_details: null,
  start_date: null,
  end_date: null,
  version: null,
  pricing_rules: null,
  is_overriden: null,
  price_plan_id: null,
  price_plan_name: null,
  price_plan_info: null
)
```

