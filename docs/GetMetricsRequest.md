# TogaiClient::GetMetricsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_time** | **Time** | Start date time of the query (inclusive) |  |
| **end_time** | **Time** | End date time of the query (exclusive) |  |
| **metric_queries** | [**Array&lt;MetricQuery&gt;**](MetricQuery.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::GetMetricsRequest.new(
  start_time: 2017-07-21T00:00Z,
  end_time: 2017-07-21T00:00Z,
  metric_queries: null
)
```

