# TogaiClient::SettingPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Setting&gt;**](Setting.md) |  | [optional] |
| **next_token** | **String** |  | [optional] |
| **context** | [**PaginationOptions**](PaginationOptions.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::SettingPaginatedResponse.new(
  data: null,
  next_token: null,
  context: null
)
```

