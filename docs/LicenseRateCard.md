# TogaiClient::LicenseRateCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique Identifier of the attached AddOn |  |
| **type** | [**AddOnType**](AddOnType.md) |  | [optional] |
| **display_name** | **String** | Name of the attached AddOn | [optional] |
| **name** | **String** | Unique identifier for the rate card in a price plan. If left null it is auto-generated. | [optional] |
| **tag** | **String** | A tag string to group licenseRateCards | [optional] |
| **invoice_timing** | [**InvoiceTiming**](InvoiceTiming.md) |  | [optional] |
| **usage_cycle** | [**UsageCycleInterval**](UsageCycleInterval.md) |  | [optional] |
| **enable_proration** | **Boolean** |  |  |
| **config** | [**LicenseRateCardConfig**](LicenseRateCardConfig.md) |  | [optional] |
| **rate_plan** | [**RatePlan**](RatePlan.md) |  |  |
| **rate_values** | [**Array&lt;RateValue&gt;**](RateValue.md) |  |  |
| **prorated_refund_mode** | [**ProratedRefundMode**](ProratedRefundMode.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::LicenseRateCard.new(
  id: null,
  type: null,
  display_name: null,
  name: null,
  tag: null,
  invoice_timing: null,
  usage_cycle: null,
  enable_proration: false,
  config: null,
  rate_plan: null,
  rate_values: null,
  prorated_refund_mode: null
)
```

