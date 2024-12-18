# TogaiClient::BillingEntitlementRateCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feature_id** | **String** |  |  |
| **feature_configs** | [**Array&lt;FeatureConfig&gt;**](FeatureConfig.md) |  |  |
| **tag** | **String** | A tag string to group rate cards | [optional] |
| **invoice_timing** | [**InvoiceTiming**](InvoiceTiming.md) |  |  |
| **display_name** | **String** | Name your rate card, this will be used in invoice | [optional] |
| **name** | **String** | Unique identifier for the rate card in a price plan. If left null it is auto-generated. | [optional] |
| **rate_plan** | [**RatePlan**](RatePlan.md) |  |  |
| **rate_values** | [**Array&lt;RateValue&gt;**](RateValue.md) |  |  |
| **recurrence_config** | [**RecurrenceConfig**](RecurrenceConfig.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::BillingEntitlementRateCard.new(
  feature_id: null,
  feature_configs: null,
  tag: null,
  invoice_timing: null,
  display_name: null,
  name: null,
  rate_plan: null,
  rate_values: null,
  recurrence_config: null
)
```

