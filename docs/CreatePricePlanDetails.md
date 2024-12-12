# TogaiClient::CreatePricePlanDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pricing_cycle_config** | [**PricingCycleConfig**](PricingCycleConfig.md) |  | [optional] |
| **supported_currencies** | **Array&lt;String&gt;** | List of currencies supported by the price plan |  |
| **usage_rate_cards** | [**Array&lt;UsageRateCard&gt;**](UsageRateCard.md) | List of usage rate cards | [optional] |
| **fixed_fee_rate_cards** | [**Array&lt;FixedFeeRateCard&gt;**](FixedFeeRateCard.md) |  | [optional] |
| **license_rate_cards** | [**Array&lt;LicenseRateCard&gt;**](LicenseRateCard.md) |  | [optional] |
| **billing_entitlement_rate_cards** | [**Array&lt;BillingEntitlementRateCard&gt;**](BillingEntitlementRateCard.md) |  | [optional] |
| **minimum_commitment** | [**MinimumCommitment**](MinimumCommitment.md) |  | [optional] |
| **credit_grant_rate_cards** | [**Array&lt;CreditGrantRateCard&gt;**](CreditGrantRateCard.md) |  | [optional] |
| **entitlement_overage_rate_cards** | [**Array&lt;EntitlementOverageRateCard&gt;**](EntitlementOverageRateCard.md) |  | [optional] |
| **deferred_revenue** | **Boolean** | This option can be enabled while creating a price plan to opt for deferred revenue finalization. i.e, Togai will assume that the price plan may change any time during the pricing cycle and  thereby does not compute the revenue in near-real time.  This gives the flexibility of editing rate cards in price plan from beginning of the pricing cycle. Enabling this mode comes with the following limitations. 1. Following rate cards are not supported under a &#x60;deferredRevenue&#x60; plan     * creditGrantRateCards,     * billingEntitlementRateCards,     * entitlementOverageRateCards,     * IN_ADVANCE fixedFeeRateCards,     * IN_ADVANCE licenseRateCards 2. Metrics API return revenue metrics only after the grace period of the account&#39;s pricing cycle  (i.e, only once the invoice becomes DUE)  | [optional] |
| **allow_ongoing_cycle_updates** | **Boolean** | Allow changes to price plan from the beginning of the ongoing cycle.  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreatePricePlanDetails.new(
  pricing_cycle_config: null,
  supported_currencies: null,
  usage_rate_cards: null,
  fixed_fee_rate_cards: null,
  license_rate_cards: null,
  billing_entitlement_rate_cards: null,
  minimum_commitment: null,
  credit_grant_rate_cards: null,
  entitlement_overage_rate_cards: null,
  deferred_revenue: null,
  allow_ongoing_cycle_updates: null
)
```
