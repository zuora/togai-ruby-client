# TogaiClient::FeaturePaginatedListData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;FeatureListResponse&gt;**](FeatureListResponse.md) |  | [optional] |
| **next_token** | **String** |  | [optional] |
| **context** | [**PaginationOptions**](PaginationOptions.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::FeaturePaginatedListData.new(
  data: null,
  next_token: null,
  context: null
)
```

