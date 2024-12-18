# TogaiClient::CreateFeatureRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the feature |  |
| **billable_name** | **String** | Billable name of feature. Billable name takes precedence over name to display in invoice. | [optional] |
| **schema_associations** | [**Array&lt;EventSchemasForFeature&gt;**](EventSchemasForFeature.md) | Association of a feature with event_schemas |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateFeatureRequest.new(
  name: null,
  billable_name: null,
  schema_associations: null
)
```

