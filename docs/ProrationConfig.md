# TogaiClient::ProrationConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Mode to get the proration - CUSTOM: Use the proration provided in the request - LOOKUP_CYCLE: Use the proration of a given account for the specified cycle  |  |
| **custom_config** | [**ProrationConfigCustomConfig**](ProrationConfigCustomConfig.md) |  | [optional] |
| **lookup_cycle_config** | [**ProrationConfigLookupCycleConfig**](ProrationConfigLookupCycleConfig.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::ProrationConfig.new(
  mode: null,
  custom_config: null,
  lookup_cycle_config: null
)
```

