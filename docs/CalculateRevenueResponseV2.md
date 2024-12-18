# TogaiClient::CalculateRevenueResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** |  |  |
| **usage_lookup_range** | [**UsageLookupRange**](UsageLookupRange.md) |  | [optional] |
| **revenue_info** | [**Array&lt;RevenueInfoV2&gt;**](RevenueInfoV2.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CalculateRevenueResponseV2.new(
  currency: null,
  usage_lookup_range: null,
  revenue_info: null
)
```

