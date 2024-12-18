# TogaiClient::RevenueInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage_rate_card** | [**UsageRateCard**](UsageRateCard.md) |  | [optional] |
| **fixed_fee_rate_card** | [**FixedFeeRateCard**](FixedFeeRateCard.md) |  | [optional] |
| **license_rate_card** | [**LicenseRateCard**](LicenseRateCard.md) |  | [optional] |
| **billing_entitlement_rate_card** | [**BillingEntitlementRateCard**](BillingEntitlementRateCard.md) |  | [optional] |
| **credit_grant_rate_card** | [**CreditGrantRateCard**](CreditGrantRateCard.md) |  | [optional] |
| **entitlement_overage_rate_card** | [**EntitlementOverageRateCard**](EntitlementOverageRateCard.md) |  | [optional] |
| **usages** | **Hash&lt;String, Float&gt;** |  |  |
| **fixed_fee_revenue_summary** | [**FixedFeeRevenueSummary**](FixedFeeRevenueSummary.md) |  | [optional] |
| **license_revenue_summary** | [**Array&lt;SlabRevenueSummary&gt;**](SlabRevenueSummary.md) |  | [optional] |
| **billing_entitlement_revenue_summary** | [**BillingEntitlementRevenueSummary**](BillingEntitlementRevenueSummary.md) |  | [optional] |
| **credit_grant_revenue_summary** | [**CreditGrantRevenueSummary**](CreditGrantRevenueSummary.md) |  | [optional] |
| **entitlement_overage_revenue_summary** | [**EntitlementOverageRevenueSummary**](EntitlementOverageRevenueSummary.md) |  | [optional] |
| **slab_revenue_summaries** | [**Array&lt;SlabRevenueSummary&gt;**](SlabRevenueSummary.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RevenueInfo.new(
  usage_rate_card: null,
  fixed_fee_rate_card: null,
  license_rate_card: null,
  billing_entitlement_rate_card: null,
  credit_grant_rate_card: null,
  entitlement_overage_rate_card: null,
  usages: null,
  fixed_fee_revenue_summary: null,
  license_revenue_summary: null,
  billing_entitlement_revenue_summary: null,
  credit_grant_revenue_summary: null,
  entitlement_overage_revenue_summary: null,
  slab_revenue_summaries: null
)
```

