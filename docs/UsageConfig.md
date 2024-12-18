# TogaiClient::UsageConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Mode to get the usage for the usage meters - CUSTOM: Use the usages provided in the request - LOOKUP_RANGE: Use the usage of a given account for the specified range - LOOKUP_CYCLE: Use the usage of a given account for the specified cycle  |  |
| **usage_map** | **Hash&lt;String, Float&gt;** | Map of usage meter id and usage, this will be considered if mode is CUSTOM | [optional] |
| **lookup_range** | [**UsageConfigLookupRange**](UsageConfigLookupRange.md) |  | [optional] |
| **lookup_cycle** | [**UsageConfigLookupCycle**](UsageConfigLookupCycle.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UsageConfig.new(
  mode: null,
  usage_map: null,
  lookup_range: null,
  lookup_cycle: null
)
```

