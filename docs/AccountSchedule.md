# TogaiClient::AccountSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **price_plan_id** | **String** |  |  |
| **version** | **Integer** |  |  |
| **deferred_revenue** | **Boolean** |  |  |
| **price_plan_info** | [**PricePlanInfo**](PricePlanInfo.md) |  |  |
| **account_schedule_info** | [**ScheduleInfo**](ScheduleInfo.md) |  |  |
| **is_overridden** | **Boolean** | Indicates whether the schedule is overridden. Note: A null value for this field does not imply that the schedule is not overridden.  | [optional] |
| **start_date** | **Time** |  |  |
| **end_date** | **Time** |  |  |
| **allow_ongoing_cycle_updates** | **Boolean** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::AccountSchedule.new(
  id: null,
  account_id: null,
  price_plan_id: null,
  version: null,
  deferred_revenue: null,
  price_plan_info: null,
  account_schedule_info: null,
  is_overridden: null,
  start_date: null,
  end_date: null,
  allow_ongoing_cycle_updates: null
)
```

