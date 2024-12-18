# TogaiClient::Feature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **billable_name** | **String** |  | [optional] |
| **display_name** | **String** | Display name of feature. This is an auto-generated field which contains billableName of feature. If billableName is not provided, name will be used as display name.  |  |
| **schema_associations** | [**Array&lt;EventSchemasForFeature&gt;**](EventSchemasForFeature.md) | Association of a feature with event_schemas |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Feature.new(
  id: null,
  name: null,
  billable_name: null,
  display_name: null,
  schema_associations: null,
  created_at: null,
  updated_at: null
)
```

