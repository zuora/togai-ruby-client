# TogaiClient::BillingConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interval** | **Integer** | Represents the number of pricing cycles after which the rate card will be billed | [optional] |
| **start_offset** | **Integer** | Represents the offset for pricing cycles after which the rate card will be billed | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::BillingConfig.new(
  interval: 3,
  start_offset: 5
)
```

