# TogaiClient::FixedFeeRateCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique Identifier of the attached AddOn |  |
| **display_name** | **String** | Name of the attached AddOn | [optional] |
| **name** | **String** | Unique identifier for the rate card in a price plan. If left null it is auto-generated. | [optional] |
| **tag** | **String** | A tag string to group fixedFeeRateCards | [optional] |
| **invoice_timing** | [**InvoiceTiming**](InvoiceTiming.md) |  | [optional] |
| **type** | [**FixedFeeType**](FixedFeeType.md) |  | [optional] |
| **rate_values** | [**Array&lt;CurrencyRateValue&gt;**](CurrencyRateValue.md) |  |  |
| **enable_proration** | **Boolean** |  |  |
| **recurrence_config** | [**RecurrenceConfig**](RecurrenceConfig.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::FixedFeeRateCard.new(
  id: null,
  display_name: null,
  name: null,
  tag: null,
  invoice_timing: null,
  type: null,
  rate_values: null,
  enable_proration: false,
  recurrence_config: null
)
```

