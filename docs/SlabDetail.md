# TogaiClient::SlabDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_after** | **Float** |  |  |
| **price_type** | [**PriceType**](PriceType.md) |  |  |
| **slab_config** | **Hash&lt;String, String&gt;** |  | [optional] |
| **rate** | **Float** |  |  |
| **slab_rate_config** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::SlabDetail.new(
  start_after: null,
  price_type: null,
  slab_config: null,
  rate: null,
  slab_rate_config: null
)
```

