# TogaiClient::QueryColumn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_source** | **String** |  | [optional] |
| **column_name** | **String** |  |  |
| **_alias** | **String** |  | [optional] |
| **functions** | [**Array&lt;QueryFunction&gt;**](QueryFunction.md) |  | [optional] |
| **aggregator** | **String** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::QueryColumn.new(
  data_source: null,
  column_name: null,
  _alias: null,
  functions: null,
  aggregator: null
)
```

