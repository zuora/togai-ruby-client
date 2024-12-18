# TogaiClient::Proposal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **price_plan_id** | **String** | Id of the price plan, Required for ENTITLEMENT_GRANT, ASSOCIATION purchase | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **rate_card_quantities** | **Hash&lt;String, Float&gt;** |  | [optional] |
| **idempotency_key** | **String** |  | [optional] |
| **price_plan_version** | **Integer** |  | [optional] |
| **purchase_plan_override** | [**PricePlanDetailsOverride**](PricePlanDetailsOverride.md) |  | [optional] |
| **association_override** | [**CreatePricePlanDetailsOverride**](CreatePricePlanDetailsOverride.md) |  | [optional] |
| **wallet_topup_details** | [**WalletTopupDetails**](WalletTopupDetails.md) |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  | [optional] |
| **effective_from** | **Date** |  | [optional] |
| **effective_until** | **Date** |  | [optional] |
| **expiry_date** | **Time** |  | [optional] |
| **price** | **Float** |  | [optional] |
| **invoice_id** | **String** |  | [optional] |
| **invoice_currency** | **String** |  | [optional] |
| **status** | [**PurchaseStatus**](PurchaseStatus.md) |  |  |
| **type** | [**PurchaseType**](PurchaseType.md) |  |  |
| **comment** | **String** |  | [optional] |
| **payment_mode** | **String** |  |  |
| **proposal_response_date** | **Time** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Proposal.new(
  id: null,
  account_id: null,
  price_plan_id: null,
  quantity: null,
  rate_card_quantities: null,
  idempotency_key: null,
  price_plan_version: null,
  purchase_plan_override: null,
  association_override: null,
  wallet_topup_details: null,
  created_at: null,
  updated_at: null,
  effective_from: null,
  effective_until: null,
  expiry_date: null,
  price: null,
  invoice_id: null,
  invoice_currency: null,
  status: null,
  type: null,
  comment: null,
  payment_mode: null,
  proposal_response_date: null
)
```

