# TogaiClient::EntitlementOverageConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Mode to get the entitlement overages for the entitlement overage rate cards - CUSTOM: Use the entitlement overages provided in the request - LOOKUP_CYCLE: Use the entitlement overages of a given account for the specified cycle  |  |
| **custom** | [**Array&lt;EntitlementOverageEntry&gt;**](EntitlementOverageEntry.md) | Quantity of entitlement overages, this will be considered if mode is CUSTOM | [optional] |
| **lookup_cycle** | [**EntitlementOverageConfigLookupCycle**](EntitlementOverageConfigLookupCycle.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EntitlementOverageConfig.new(
  mode: null,
  custom: null,
  lookup_cycle: null
)
```

