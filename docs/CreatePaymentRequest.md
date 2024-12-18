# TogaiClient::CreatePaymentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A brief description of the payment | [optional] |
| **notes** | **String** | A detailed note about the payment | [optional] |
| **account_id** | **String** |  |  |
| **external_payment_reference** | [**ExternalPaymentReference**](ExternalPaymentReference.md) |  |  |
| **line_item_records** | [**Array&lt;PaymentLineItemRecord&gt;**](PaymentLineItemRecord.md) |  |  |
| **currency** | **String** |  |  |
| **total_amount** | **Float** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreatePaymentRequest.new(
  description: Payment for Invoice inv.234.23afv,
  notes: Payment for purchase of credits,
  account_id: ACC001,
  external_payment_reference: null,
  line_item_records: null,
  currency: USD,
  total_amount: null
)
```

