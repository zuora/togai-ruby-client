# TogaiClient::RateCardDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fixed_fee_rate_card** | [**FixedFeeRateCard**](FixedFeeRateCard.md) |  | [optional] |
| **billing_entitlement_rate_card** | [**BillingEntitlementRateCard**](BillingEntitlementRateCard.md) |  | [optional] |
| **credit_grant_rate_card** | [**CreditGrantRateCard**](CreditGrantRateCard.md) |  | [optional] |
| **usage_rate_card** | [**UsageRateCard**](UsageRateCard.md) |  | [optional] |
| **license_rate_card** | [**LicenseRateCard**](LicenseRateCard.md) |  | [optional] |
| **entitlement_overage_rate_card** | [**EntitlementOverageRateCard**](EntitlementOverageRateCard.md) |  | [optional] |
| **minimum_commitment_rate_card** | [**MinimumCommitment**](MinimumCommitment.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RateCardDetails.new(
  fixed_fee_rate_card: null,
  billing_entitlement_rate_card: null,
  credit_grant_rate_card: null,
  usage_rate_card: null,
  license_rate_card: null,
  entitlement_overage_rate_card: null,
  minimum_commitment_rate_card: null
)
```

