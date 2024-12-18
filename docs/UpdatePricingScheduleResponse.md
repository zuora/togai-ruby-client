# TogaiClient::UpdatePricingScheduleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Identifier of the account |  |
| **account_name** | **String** | Name of the Account |  |
| **pricing_schedules** | [**Array&lt;PlanOverride&gt;**](PlanOverride.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdatePricingScheduleResponse.new(
  account_id: null,
  account_name: null,
  pricing_schedules: null
)
```

