# TogaiClient::PricePlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Price plan id |  |
| **name** | **String** | Name of the price plan |  |
| **type** | [**PricePlanType**](PricePlanType.md) |  |  |
| **description** | **String** | Description of price plan | [optional] |
| **status** | **String** | Status of Price plan |  |
| **pricing_schedule** | [**Array&lt;PricingSchedule&gt;**](PricingSchedule.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricePlan.new(
  id: null,
  name: null,
  type: null,
  description: null,
  status: null,
  pricing_schedule: null
)
```

