# TogaiClient::PricingRuleChangesLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **key_name** | **String** |  | [optional] |
| **old_revenue** | **Float** |  |  |
| **new_revenue** | **Float** |  |  |
| **old_usage** | **Float** |  | [optional] |
| **new_usage** | **Float** |  | [optional] |
| **error_message** | **String** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricingRuleChangesLog.new(
  key: null,
  key_name: null,
  old_revenue: null,
  new_revenue: null,
  old_usage: null,
  new_usage: null,
  error_message: null
)
```

