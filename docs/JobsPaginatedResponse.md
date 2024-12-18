# TogaiClient::JobsPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;JobsWithoutStatusInfoResponse&gt;**](JobsWithoutStatusInfoResponse.md) |  | [optional] |
| **next_token** | **String** |  | [optional] |
| **context** | [**PaginationOptions**](PaginationOptions.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::JobsPaginatedResponse.new(
  data: null,
  next_token: null,
  context: null
)
```

