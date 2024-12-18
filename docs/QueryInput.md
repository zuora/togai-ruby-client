# TogaiClient::QueryInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selects** | [**Array&lt;QueryColumn&gt;**](QueryColumn.md) |  |  |
| **query_filters** | [**Array&lt;QueryFilter&gt;**](QueryFilter.md) |  | [optional] |
| **base_data_source** | **String** |  |  |
| **sort** | [**Array&lt;QueryInputSortInner&gt;**](QueryInputSortInner.md) |  |  |
| **seek_values** | **Array&lt;String&gt;** |  | [optional] |
| **limit** | **Integer** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::QueryInput.new(
  selects: null,
  query_filters: null,
  base_data_source: null,
  sort: null,
  seek_values: null,
  limit: null
)
```

