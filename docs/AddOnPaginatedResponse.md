# TogaiClient::AddOnPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AddOn&gt;**](AddOn.md) |  |  |
| **next_token** | **String** |  | [optional] |
| **context** | [**PaginationOptions**](PaginationOptions.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::AddOnPaginatedResponse.new(
  data: null,
  next_token: null,
  context: null
)
```

