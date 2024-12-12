# TogaiClient::ProposalsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **price_plan_id** | **String** |  | [optional] |
| **price_plan_name** | **String** |  | [optional] |
| **price_plan_version** | **Integer** |  | [optional] |
| **status** | [**PurchaseStatus**](PurchaseStatus.md) |  |  |
| **wallet_topup_details** | [**WalletTopupDetails**](WalletTopupDetails.md) |  | [optional] |
| **idempotency_key** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **expiry_date** | **Time** |  | [optional] |
| **payment_mode** | **String** |  |  |
| **type** | [**PurchaseType**](PurchaseType.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::ProposalsListResponse.new(
  id: null,
  price_plan_id: null,
  price_plan_name: null,
  price_plan_version: null,
  status: null,
  wallet_topup_details: null,
  idempotency_key: null,
  created_at: null,
  updated_at: null,
  expiry_date: null,
  payment_mode: null,
  type: null
)
```

