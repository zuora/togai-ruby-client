# TogaiClient::MetricQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | [**MetricName**](MetricName.md) |  | [default to &#39;EVENTS&#39;] |
| **data** | [**Array&lt;MetricDataPoints&gt;**](MetricDataPoints.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::MetricQueryResponse.new(
  id: null,
  name: null,
  data: null
)
```

