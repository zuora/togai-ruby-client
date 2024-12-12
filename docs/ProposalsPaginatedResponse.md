# TogaiClient::ProposalsPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ProposalsListResponse&gt;**](ProposalsListResponse.md) |  | [optional] |
| **next_token** | **String** |  | [optional] |
| **context** | [**PaginationOptions**](PaginationOptions.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::ProposalsPaginatedResponse.new(
  data: null,
  next_token: null,
  context: null
)
```

