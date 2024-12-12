# TogaiClient::FeatureListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **billable_name** | **String** |  | [optional] |
| **display_name** | **String** | Display name of feature. This is an auto-generated field which contains billableName of feature. If billableName is not provided, name will be used as display name.  |  |
| **schema_count** | **Integer** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::FeatureListResponse.new(
  id: null,
  name: null,
  billable_name: null,
  display_name: null,
  schema_count: null,
  created_at: null,
  updated_at: null
)
```

