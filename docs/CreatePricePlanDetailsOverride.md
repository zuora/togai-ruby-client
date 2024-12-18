# TogaiClient::CreatePricePlanDetailsOverride

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pricing_cycle_config** | [**PricingCycleConfig**](PricingCycleConfig.md) |  | [optional] |
| **supported_currencies** | **Array&lt;String&gt;** |  | [optional] |
| **usage_rate_cards** | [**Array&lt;UsageRateCard&gt;**](UsageRateCard.md) |  | [optional] |
| **billing_entitlement_rate_cards** | [**Array&lt;BillingEntitlementRateCard&gt;**](BillingEntitlementRateCard.md) |  | [optional] |
| **entitlement_overage_rate_cards** | [**Array&lt;EntitlementOverageRateCard&gt;**](EntitlementOverageRateCard.md) |  | [optional] |
| **fixed_fee_rate_cards** | [**Array&lt;FixedFeeRateCard&gt;**](FixedFeeRateCard.md) |  | [optional] |
| **license_rate_cards** | [**Array&lt;LicenseRateCard&gt;**](LicenseRateCard.md) |  | [optional] |
| **minimum_commitment** | [**MinimumCommitment**](MinimumCommitment.md) |  | [optional] |
| **credit_grant_rate_cards** | [**Array&lt;CreditGrantRateCard&gt;**](CreditGrantRateCard.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreatePricePlanDetailsOverride.new(
  pricing_cycle_config: null,
  supported_currencies: null,
  usage_rate_cards: null,
  billing_entitlement_rate_cards: null,
  entitlement_overage_rate_cards: null,
  fixed_fee_rate_cards: null,
  license_rate_cards: null,
  minimum_commitment: null,
  credit_grant_rate_cards: null
)
```

