# TogaiClient::LicenseEntriesConfigLookupCycle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cycle_effective_on** | **Time** | Effective date of the cycle, will be used to get the license entries of the cycle | [optional] |
| **account_id** | **String** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::LicenseEntriesConfigLookupCycle.new(
  cycle_effective_on: null,
  account_id: null
)
```

