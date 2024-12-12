# TogaiClient::ProrationConfigLookupCycleConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_date_time** | **Time** | Defaults to current date time if not provided | [optional] |
| **cycle_effective_on** | **Time** | Defaults to current date time if not provided | [optional] |
| **account_id** | **String** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::ProrationConfigLookupCycleConfig.new(
  current_date_time: null,
  cycle_effective_on: null,
  account_id: null
)
```

