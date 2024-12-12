# TogaiClient::CreateEventSchemaRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the event. Must be unique for an organization. |  |
| **description** | **String** | Description of the event | [optional] |
| **attributes** | [**Array&lt;EventAttributeSchema&gt;**](EventAttributeSchema.md) |  |  |
| **dimensions** | [**Array&lt;DimensionsSchema&gt;**](DimensionsSchema.md) |  |  |
| **enrichments** | [**Enrichments**](Enrichments.md) |  | [optional] |
| **filter_fields** | **Array&lt;String&gt;** | List of fields that can be used for filtering in usage meter | [optional] |
| **event_id_template** | **String** | Template used to generate event id based on event payload | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateEventSchemaRequest.new(
  name: null,
  description: null,
  attributes: null,
  dimensions: null,
  enrichments: null,
  filter_fields: null,
  event_id_template: null
)
```

