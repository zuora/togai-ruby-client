# TogaiClient::CreditGrantRateCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **name** | **String** | Unique identifier for the rate card in a price plan. If left null it is auto-generated. | [optional] |
| **tag** | **String** | A tag string to group creditGrantRateCard | [optional] |
| **grant_details** | [**GrantDetails**](GrantDetails.md) |  |  |
| **rate_details** | [**CreditRateDetails**](CreditRateDetails.md) |  |  |
| **invoice_timing** | [**InvoiceTiming**](InvoiceTiming.md) |  | [optional] |
| **type** | [**CreditGrantType**](CreditGrantType.md) |  | [optional] |
| **recurrence_config** | [**RecurrenceConfig**](RecurrenceConfig.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreditGrantRateCard.new(
  id: null,
  display_name: null,
  name: null,
  tag: null,
  grant_details: null,
  rate_details: null,
  invoice_timing: null,
  type: null,
  recurrence_config: null
)
```

