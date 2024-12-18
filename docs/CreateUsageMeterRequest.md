# TogaiClient::CreateUsageMeterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the usage meter. Must be unique for an organization. |  |
| **billable_name** | **String** | Billable name of usage meter. Billable name takes precedence over name to display in invoice. | [optional] |
| **description** | **String** | Description of the usage meter | [optional] |
| **filters** | [**Array&lt;UsageMeterFilterEntry&gt;**](UsageMeterFilterEntry.md) | The usage meter&#39;s applicability will be determined by comparing the filter condition agianst the events. | [optional] |
| **type** | **String** | Type of usage meter |  |
| **aggregation** | [**UsageMeterAggregation**](UsageMeterAggregation.md) |  |  |
| **computations** | [**Array&lt;Computation&gt;**](Computation.md) |  | [optional] |
| **event_schema_name** | **String** | Event Schema Identifier | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateUsageMeterRequest.new(
  name: null,
  billable_name: null,
  description: null,
  filters: null,
  type: null,
  aggregation: null,
  computations: null,
  event_schema_name: null
)
```

