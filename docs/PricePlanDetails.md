# TogaiClient::PricePlanDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supported_currencies** | **Array&lt;String&gt;** |  |  |
| **active_currencies** | **Array&lt;String&gt;** |  | [readonly] |
| **pricing_cycle_config** | [**PricingCycleConfig**](PricingCycleConfig.md) |  | [optional] |
| **usage_rate_cards** | [**Array&lt;UsageRateCard&gt;**](UsageRateCard.md) |  | [optional] |
| **fixed_fee_rate_cards** | [**Array&lt;FixedFeeRateCard&gt;**](FixedFeeRateCard.md) |  | [optional] |
| **license_rate_cards** | [**Array&lt;LicenseRateCard&gt;**](LicenseRateCard.md) |  | [optional] |
| **billing_entitlement_rate_cards** | [**Array&lt;BillingEntitlementRateCard&gt;**](BillingEntitlementRateCard.md) |  | [optional] |
| **entitlement_overage_rate_cards** | [**Array&lt;EntitlementOverageRateCard&gt;**](EntitlementOverageRateCard.md) |  | [optional] |
| **minimum_commitment** | [**MinimumCommitment**](MinimumCommitment.md) |  | [optional] |
| **credit_grant_rate_cards** | [**Array&lt;CreditGrantRateCard&gt;**](CreditGrantRateCard.md) |  | [optional] |
| **type** | [**PricePlanType**](PricePlanType.md) |  | [optional] |
| **deferred_revenue** | **Boolean** |  | [optional] |
| **allow_ongoing_cycle_updates** | **Object** | Allow changes to price plan from the beginning of the ongoing cycle. type: boolean  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricePlanDetails.new(
  supported_currencies: null,
  active_currencies: null,
  pricing_cycle_config: null,
  usage_rate_cards: null,
  fixed_fee_rate_cards: null,
  license_rate_cards: null,
  billing_entitlement_rate_cards: null,
  entitlement_overage_rate_cards: null,
  minimum_commitment: null,
  credit_grant_rate_cards: null,
  type: null,
  deferred_revenue: null,
  allow_ongoing_cycle_updates: null
)
```

