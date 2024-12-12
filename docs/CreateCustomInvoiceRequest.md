# TogaiClient::CreateCustomInvoiceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **owner_type** | **String** |  | [optional] |
| **start_date** | **Time** |  |  |
| **end_date** | **Time** |  |  |
| **idempotency_key** | **String** |  | [optional] |
| **status** | **String** | Status to create an invoice in. |  |
| **line_items** | [**Array&lt;CustomInvoiceLineItem&gt;**](CustomInvoiceLineItem.md) |  |  |
| **auto_advance** | **Boolean** | This property defines the behaviour of status transition of the invoice. If true, invoice auto transitions from &#x60;DRAFT&#x60; to &#x60;DUE&#x60; or &#x60;PAID&#x60; at the end of pricing cycle. If false, the invoice’s state doesn’t automatically advance without an explicit action. Default: false  | [optional] |
| **apply_credits** | **Boolean** | This property defines the behaviour of whether or not to use credits to net off with the invoice amount. Default: true  | [optional] |
| **apply_wallet_balance** | **Boolean** | This property defines the behaviour of whether or not to use wallet amount to net off with the invoice amount. Default: true  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateCustomInvoiceRequest.new(
  account_id: ACC001,
  owner_type: null,
  start_date: 2020-06-04T12:00Z,
  end_date: 2020-07-04T12:00Z,
  idempotency_key: 1234567890,
  status: DUE,
  line_items: null,
  auto_advance: null,
  apply_credits: null,
  apply_wallet_balance: null
)
```

