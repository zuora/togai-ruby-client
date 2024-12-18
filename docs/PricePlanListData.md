# TogaiClient::PricePlanListData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of price plan |  |
| **name** | **String** | Name of the price plan |  |
| **version** | **Integer** | Version of the price plan |  |
| **description** | **String** | Description of price plan | [optional] |
| **status** | **String** | Status of Price plan |  |
| **usage_meters** | **Array&lt;String&gt;** | Usage meters id linked to the price plan |  |
| **price_plan_details** | [**PricePlanDetails**](PricePlanDetails.md) |  |  |
| **pricing_rules** | [**Array&lt;PricingRule&gt;**](PricingRule.md) |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **type** | [**PricePlanType**](PricePlanType.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricePlanListData.new(
  id: null,
  name: null,
  version: null,
  description: null,
  status: null,
  usage_meters: null,
  price_plan_details: null,
  pricing_rules: null,
  created_at: null,
  updated_at: null,
  type: null
)
```

