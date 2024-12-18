# TogaiClient::PurchaseListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **price_plan_id** | **String** |  | [optional] |
| **price_plan_name** | **String** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **rate_card_quantities** | **Hash&lt;String, Float&gt;** |  | [optional] |
| **price_plan_version** | **Integer** |  | [optional] |
| **status** | [**PurchaseStatus**](PurchaseStatus.md) |  |  |
| **idempotency_key** | **String** |  | [optional] |
| **purchase_plan** | [**PricePlanDetails**](PricePlanDetails.md) |  | [optional] |
| **wallet_topup_details** | [**WalletTopupDetails**](WalletTopupDetails.md) |  | [optional] |
| **price** | **Float** |  | [optional] |
| **invoice_currency** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  | [optional] |
| **type** | [**PurchaseType**](PurchaseType.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PurchaseListResponse.new(
  id: null,
  price_plan_id: null,
  price_plan_name: null,
  quantity: null,
  rate_card_quantities: null,
  price_plan_version: null,
  status: null,
  idempotency_key: null,
  purchase_plan: null,
  wallet_topup_details: null,
  price: null,
  invoice_currency: null,
  created_at: null,
  updated_at: null,
  type: null
)
```

