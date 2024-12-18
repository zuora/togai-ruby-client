# TogaiClient::PurchasePlanOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fixed_fee_rate_cards** | [**Array&lt;FixedFeeRateCard&gt;**](FixedFeeRateCard.md) |  | [optional] |
| **billing_entitlement_rate_cards** | [**Array&lt;BillingEntitlementRateCard&gt;**](BillingEntitlementRateCard.md) |  | [optional] |
| **credit_grant_rate_cards** | [**Array&lt;CreditGrantRateCard&gt;**](CreditGrantRateCard.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PurchasePlanOverride.new(
  fixed_fee_rate_cards: null,
  billing_entitlement_rate_cards: null,
  credit_grant_rate_cards: null
)
```

