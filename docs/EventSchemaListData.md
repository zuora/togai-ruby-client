# TogaiClient::EventSchemaListData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the event. Must be unique for an organization. |  |
| **description** | **String** | Description of the event | [optional] |
| **version** | **Integer** | Version of event schema |  |
| **status** | **String** | Status of event schema * DRAFT - Schema is in draft state  * ACTIVE - Schema is currently active  * INACTIVE - Schema is currently inactive * ARCHIVED - Older version of event schema  | [optional] |
| **attributes** | [**Array&lt;EventAttributeSchema&gt;**](EventAttributeSchema.md) |  | [optional] |
| **dimensions** | [**Array&lt;DimensionsSchema&gt;**](DimensionsSchema.md) |  | [optional] |
| **filter_fields** | **Array&lt;String&gt;** |  | [optional] |
| **feature_details** | [**FeatureDetails**](FeatureDetails.md) |  | [optional] |
| **enrichments** | [**Enrichments**](Enrichments.md) |  | [optional] |
| **event_id_template** | **String** | Template used to generate event id based on event payload | [optional] |
| **event_level_revenue** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **usage_meters_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EventSchemaListData.new(
  name: null,
  description: null,
  version: 1,
  status: DRAFT,
  attributes: null,
  dimensions: null,
  filter_fields: null,
  feature_details: null,
  enrichments: null,
  event_id_template: null,
  event_level_revenue: null,
  created_at: null,
  updated_at: null,
  usage_meters_count: null
)
```

