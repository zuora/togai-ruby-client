# TogaiClient::UpdatePricePlanV2Request

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of price plan | [optional] |
| **pricing_cycle_config** | [**PricingCycleConfig**](PricingCycleConfig.md) |  | [optional] |
| **supported_currencies** | **Array&lt;String&gt;** | List of currencies supported by the price plan | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdatePricePlanV2Request.new(
  description: null,
  pricing_cycle_config: null,
  supported_currencies: null
)
```

