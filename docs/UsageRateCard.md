# TogaiClient::UsageRateCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | Name your rate card, this will be displayed in the Togai App | [optional] |
| **name** | **String** | Unique identifier for the rate card in a price plan. If left null it is auto-generated. | [optional] |
| **tag** | **String** | A tag string to group usageRateCards | [optional] |
| **usage_meter_id** | **String** |  |  |
| **rate_plan** | [**RatePlan**](RatePlan.md) |  |  |
| **rate_values** | [**Array&lt;RateValue&gt;**](RateValue.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UsageRateCard.new(
  display_name: null,
  name: null,
  tag: null,
  usage_meter_id: um.1zYnCiM9Bpg.1zYn,
  rate_plan: null,
  rate_values: null
)
```

