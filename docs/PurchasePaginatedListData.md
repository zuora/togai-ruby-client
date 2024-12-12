# TogaiClient::PurchasePaginatedListData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;PurchaseListResponse&gt;**](PurchaseListResponse.md) |  | [optional] |
| **next_token** | **String** |  | [optional] |
| **context** | [**PaginationOptions**](PaginationOptions.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PurchasePaginatedListData.new(
  data: null,
  next_token: null,
  context: null
)
```

