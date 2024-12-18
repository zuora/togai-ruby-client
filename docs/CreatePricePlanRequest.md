# TogaiClient::CreatePricePlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the price plan |  |
| **description** | **String** | Description of price plan | [optional] |
| **type** | [**PricePlanType**](PricePlanType.md) |  | [optional] |
| **price_plan_details** | [**CreatePricePlanDetails**](CreatePricePlanDetails.md) |  |  |
| **pricing_rules** | [**Array&lt;CreatePricingRule&gt;**](CreatePricingRule.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreatePricePlanRequest.new(
  name: null,
  description: null,
  type: null,
  price_plan_details: null,
  pricing_rules: null
)
```

