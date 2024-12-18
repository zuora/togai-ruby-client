# TogaiClient::NamedLicenseEntriesConfigLookupCycle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cycle_effective_on** | **Time** | Effective date of the cycle, will be used to get the named license entries of the cycle | [optional] |
| **account_id** | **String** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::NamedLicenseEntriesConfigLookupCycle.new(
  cycle_effective_on: null,
  account_id: null
)
```

