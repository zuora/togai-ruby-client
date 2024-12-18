# TogaiClient::Payment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **notes** | **String** |  | [optional] |
| **account_id** | **String** |  |  |
| **external_payment_references** | [**ExternalPaymentReference**](ExternalPaymentReference.md) |  |  |
| **line_item_records** | [**Array&lt;PaymentLineItemRecord&gt;**](PaymentLineItemRecord.md) |  |  |
| **total_amount** | **Float** |  |  |
| **currency** | **String** |  |  |
| **version** | **Float** |  |  |
| **created_by** | **String** |  |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Payment.new(
  id: pay.w123rwe.1231,
  description: null,
  notes: null,
  account_id: ACC001,
  external_payment_references: null,
  line_item_records: null,
  total_amount: null,
  currency: null,
  version: null,
  created_by: null,
  created_at: null
)
```

