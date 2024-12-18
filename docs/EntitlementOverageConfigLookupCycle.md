# TogaiClient::EntitlementOverageConfigLookupCycle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_cycle_end_date** | **Time** | Effective date of the cycle, will be used to get the license entries of the cycle |  |
| **account_id** | **String** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EntitlementOverageConfigLookupCycle.new(
  billing_cycle_end_date: null,
  account_id: null
)
```

