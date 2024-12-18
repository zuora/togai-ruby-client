# TogaiClient::UpdateFeatureRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the feature | [optional] |
| **billable_name** | **String** | Billable name of addon. Billable name takes precedence over name to display in invoice. | [optional] |
| **schema_associations** | [**Array&lt;EventSchemasForFeature&gt;**](EventSchemasForFeature.md) | Association of a feature with event_schemas | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateFeatureRequest.new(
  name: null,
  billable_name: null,
  schema_associations: null
)
```

