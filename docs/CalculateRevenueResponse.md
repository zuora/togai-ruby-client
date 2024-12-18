# TogaiClient::CalculateRevenueResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** |  |  |
| **usage_lookup_range** | [**UsageLookupRange**](UsageLookupRange.md) |  | [optional] |
| **price_plan_details** | [**PricePlanDetails**](PricePlanDetails.md) |  |  |
| **revenue_info** | [**Array&lt;RevenueInfo&gt;**](RevenueInfo.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CalculateRevenueResponse.new(
  currency: null,
  usage_lookup_range: null,
  price_plan_details: null,
  revenue_info: null
)
```

