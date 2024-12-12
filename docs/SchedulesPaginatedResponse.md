# TogaiClient::SchedulesPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AccountSchedule&gt;**](AccountSchedule.md) |  |  |
| **next_token** | **String** |  | [optional] |
| **previous_token** | **String** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::SchedulesPaginatedResponse.new(
  data: null,
  next_token: null,
  previous_token: null
)
```

