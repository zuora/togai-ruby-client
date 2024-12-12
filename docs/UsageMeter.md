# TogaiClient::UsageMeter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the usage meter |  |
| **name** | **String** | Name of the usage meter |  |
| **billable_name** | **String** | Billable name of addon. Billable name takes precedence over name to display in invoice. | [optional] |
| **display_name** | **String** | Display name of usage meter. This is an auto-generated field which contains billableName of usage meter. If billableName is not provided, name will be used as display name.  |  |
| **description** | **String** |  | [optional] |
| **filters** | [**Array&lt;UsageMeterFilterEntry&gt;**](UsageMeterFilterEntry.md) |  | [optional] |
| **type** | **String** | Type of usage meter |  |
| **status** | **String** | Status of usage meter | [optional] |
| **aggregation** | [**UsageMeterAggregation**](UsageMeterAggregation.md) |  |  |
| **computations** | [**Array&lt;Computation&gt;**](Computation.md) |  | [optional] |
| **event_schema** | [**EventSchema**](EventSchema.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **last_activated_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UsageMeter.new(
  id: null,
  name: rides-usage,
  billable_name: Rides Usage,
  display_name: null,
  description: Meter to track cab rides,
  filters: null,
  type: COUNTER,
  status: DRAFT,
  aggregation: null,
  computations: null,
  event_schema: null,
  created_at: null,
  last_activated_at: null,
  updated_at: null
)
```

