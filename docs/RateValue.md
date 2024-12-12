# TogaiClient::RateValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** |  |  |
| **slab_rates** | [**Array&lt;SlabRate&gt;**](SlabRate.md) |  |  |
| **rate_config** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RateValue.new(
  currency: null,
  slab_rates: null,
  rate_config: null
)
```

