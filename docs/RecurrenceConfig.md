# TogaiClient::RecurrenceConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interval** | **Integer** | Represents the number of pricing cycles after which the rate card will be charged | [optional] |
| **offset** | **Integer** | Represents the offset for pricing cycles after which the rate card will be charged | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RecurrenceConfig.new(
  interval: 3,
  offset: 5
)
```

