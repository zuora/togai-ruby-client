# TogaiClient::NamedLicenseEntriesConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Mode to get the named license entries for the license rate cards - CUSTOM: Use the named license entries provided in the request - LOOKUP_RANGE: Use the named license entries of a given account for the specified range - LOOKUP_CYCLE: Use the named license entries of a given account for the specified cycle  |  |
| **custom** | [**Array&lt;NamedLicenseEntry&gt;**](NamedLicenseEntry.md) | List of named license entries, this will be considered if mode is CUSTOM | [optional] |
| **lookup_range** | [**NamedLicenseEntriesConfigLookupRange**](NamedLicenseEntriesConfigLookupRange.md) |  | [optional] |
| **lookup_cycle** | [**NamedLicenseEntriesConfigLookupCycle**](NamedLicenseEntriesConfigLookupCycle.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::NamedLicenseEntriesConfig.new(
  mode: null,
  custom: null,
  lookup_range: null,
  lookup_cycle: null
)
```

