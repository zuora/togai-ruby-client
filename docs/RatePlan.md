# TogaiClient::RatePlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pricing_model** | [**PricingModel**](PricingModel.md) |  |  |
| **slabs** | [**Array&lt;Slab&gt;**](Slab.md) | Rate cards can have single or multiple slab up to 100. |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RatePlan.new(
  pricing_model: null,
  slabs: null
)
```

