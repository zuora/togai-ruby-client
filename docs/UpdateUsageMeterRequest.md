# TogaiClient::UpdateUsageMeterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of usage meter. | [optional] |
| **billable_name** | **String** | Billable name of usage meter. Billable name takes precedence over name to display in invoice. | [optional] |
| **description** | **String** | Description of the usage meter | [optional] |
| **event_schema_name** | **String** | Event Schema Identifier | [optional] |
| **type** | **String** | Type of usage meter * COUNTER - Count usage  | [optional] |
| **aggregation** | [**UsageMeterAggregation**](UsageMeterAggregation.md) |  | [optional] |
| **computations** | [**Array&lt;Computation&gt;**](Computation.md) |  | [optional] |
| **filters** | [**Array&lt;UsageMeterFilterEntry&gt;**](UsageMeterFilterEntry.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateUsageMeterRequest.new(
  name: null,
  billable_name: null,
  description: null,
  event_schema_name: null,
  type: COUNTER,
  aggregation: null,
  computations: null,
  filters: null
)
```

