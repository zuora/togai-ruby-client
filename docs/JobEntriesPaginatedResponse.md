# TogaiClient::JobEntriesPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;JobEntriesResponse&gt;**](JobEntriesResponse.md) |  | [optional] |
| **next_token** | **String** |  | [optional] |
| **context** | [**PaginationOptions**](PaginationOptions.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::JobEntriesPaginatedResponse.new(
  data: null,
  next_token: null,
  context: null
)
```

