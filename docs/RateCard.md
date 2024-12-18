# TogaiClient::RateCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billable_id** | **String** | Billable identifier |  |
| **type** | [**RateCardType**](RateCardType.md) |  |  |
| **display_name** | **String** | Display name of the rate card |  |
| **invoice_timing** | [**InvoiceTiming**](InvoiceTiming.md) |  |  |
| **rate_card_details** | [**RateCardDetails**](RateCardDetails.md) |  |  |
| **tag** | **String** | Tag for rate card | [optional] |
| **name** | **String** |  |  |
| **reference_id** | **String** |  |  |
| **reference_type** | **String** |  |  |
| **currencies** | **Array&lt;String&gt;** | List of currencies supported by the rate card | [optional] |
| **price_plan_id** | **String** | Price plan identifier |  |
| **account_id** | **String** | Account identifier | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RateCard.new(
  billable_id: null,
  type: null,
  display_name: null,
  invoice_timing: null,
  rate_card_details: null,
  tag: null,
  name: null,
  reference_id: null,
  reference_type: null,
  currencies: null,
  price_plan_id: null,
  account_id: null
)
```

