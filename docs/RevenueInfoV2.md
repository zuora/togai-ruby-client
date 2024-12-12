# TogaiClient::RevenueInfoV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rate_card** | [**RateCard**](RateCard.md) |  |  |
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

instance = TogaiClient::RevenueInfoV2.new(
  rate_card: null,
  usages: null,
  fixed_fee_revenue_summary: null,
  license_revenue_summary: null,
  billing_entitlement_revenue_summary: null,
  credit_grant_revenue_summary: null,
  entitlement_overage_revenue_summary: null,
  slab_revenue_summaries: null
)
```

