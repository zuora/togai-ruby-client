# TogaiClient::CreatePurchaseRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** | Id of the price plan, Required for ENTITLEMENT_GRANT, ASSOCIATION purchase | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **rate_card_quantities** | **Hash&lt;String, Float&gt;** |  | [optional] |
| **idempotency_key** | **String** |  | [optional] |
| **purchase_plan_override** | [**PurchasePlanOverride**](PurchasePlanOverride.md) |  | [optional] |
| **association_override** | [**CreatePricePlanDetailsOverride**](CreatePricePlanDetailsOverride.md) |  | [optional] |
| **wallet_topup_details** | [**WalletTopupDetails**](WalletTopupDetails.md) |  | [optional] |
| **effective_from** | **Date** |  | [optional] |
| **effective_until** | **Date** |  | [optional] |
| **expiry_date** | **Time** |  | [optional] |
| **type** | [**PurchaseType**](PurchaseType.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreatePurchaseRequest.new(
  price_plan_id: null,
  quantity: null,
  rate_card_quantities: null,
  idempotency_key: null,
  purchase_plan_override: null,
  association_override: null,
  wallet_topup_details: null,
  effective_from: null,
  effective_until: null,
  expiry_date: null,
  type: null
)
```

