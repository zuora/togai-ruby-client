# TogaiClient::CurrencySlabRateDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** |  |  |
| **credit_amount** | **Float** | The amount of credit that needs to be credited |  |
| **slab_details** | [**Array&lt;SlabDetail&gt;**](SlabDetail.md) |  |  |
| **rate_config** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CurrencySlabRateDetail.new(
  currency: null,
  credit_amount: null,
  slab_details: null,
  rate_config: null
)
```

