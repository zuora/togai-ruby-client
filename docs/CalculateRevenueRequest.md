# TogaiClient::CalculateRevenueRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency_config** | [**CurrencyConfig**](CurrencyConfig.md) |  |  |
| **price_plan_details_config** | [**PricePlanDetailsConfig**](PricePlanDetailsConfig.md) |  |  |
| **usage_config** | [**UsageConfig**](UsageConfig.md) |  |  |
| **license_entries_config** | [**LicenseEntriesConfig**](LicenseEntriesConfig.md) |  |  |
| **named_license_entries_config** | [**NamedLicenseEntriesConfig**](NamedLicenseEntriesConfig.md) |  | [optional] |
| **proration_config** | [**ProrationConfig**](ProrationConfig.md) |  | [optional] |
| **entitlement_overage_config** | [**EntitlementOverageConfig**](EntitlementOverageConfig.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CalculateRevenueRequest.new(
  currency_config: null,
  price_plan_details_config: null,
  usage_config: null,
  license_entries_config: null,
  named_license_entries_config: null,
  proration_config: null,
  entitlement_overage_config: null
)
```

