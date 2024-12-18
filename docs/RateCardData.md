# TogaiClient::RateCardData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billable_id** | **String** | Billable identifier |  |
| **type** | [**RateCardType**](RateCardType.md) |  |  |
| **display_name** | **String** | Display name of the rate card | [optional] |
| **invoice_timing** | [**InvoiceTiming**](InvoiceTiming.md) |  |  |
| **rate_card_details** | [**RateCardDetails**](RateCardDetails.md) |  |  |
| **tag** | **String** | Tag for rate card | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RateCardData.new(
  billable_id: null,
  type: null,
  display_name: null,
  invoice_timing: null,
  rate_card_details: null,
  tag: null
)
```

