# TogaiClient::PricingSchedulePaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;PricingScheduleWithPricePlanId&gt;**](PricingScheduleWithPricePlanId.md) |  | [optional] |
| **next_token** | **String** |  | [optional] |
| **previous_token** | **String** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricingSchedulePaginatedResponse.new(
  data: null,
  next_token: null,
  previous_token: null
)
```

