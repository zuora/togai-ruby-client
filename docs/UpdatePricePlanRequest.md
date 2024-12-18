# TogaiClient::UpdatePricePlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **migration_mode** | [**MigrationMode**](MigrationMode.md) |  | [optional] |
| **versions_to_migrate** | [**VersionsToMigrate**](VersionsToMigrate.md) |  | [optional] |
| **description** | **String** | Description of price plan | [optional] |
| **price_plan_details** | [**CreatePricePlanDetailsOverride**](CreatePricePlanDetailsOverride.md) |  | [optional] |
| **pricing_rules** | [**Array&lt;CreatePricingRule&gt;**](CreatePricingRule.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdatePricePlanRequest.new(
  migration_mode: null,
  versions_to_migrate: null,
  description: null,
  price_plan_details: null,
  pricing_rules: null
)
```

