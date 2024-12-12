# TogaiClient::LicenseEntriesConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Mode to get the license entries for the license rate cards - CUSTOM: Use the license entries provided in the request - LOOKUP_RANGE: Use the license entries of a given account for the specified range - LOOKUP_CYCLE: Use the license entries of a given account for the specified cycle  |  |
| **custom** | [**Array&lt;LicenseEntry&gt;**](LicenseEntry.md) | List of license entries, this will be considered if mode is CUSTOM | [optional] |
| **lookup_range** | [**LicenseEntriesConfigLookupRange**](LicenseEntriesConfigLookupRange.md) |  | [optional] |
| **lookup_cycle** | [**LicenseEntriesConfigLookupCycle**](LicenseEntriesConfigLookupCycle.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::LicenseEntriesConfig.new(
  mode: null,
  custom: null,
  lookup_range: null,
  lookup_cycle: null
)
```

