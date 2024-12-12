# TogaiClient::RemoveAccountAliasRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Alias identifier (UUID) |  |
| **from** | **Time** | Alias will be deleted from this date, If not provided, it will be deleted from now | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RemoveAccountAliasRequest.new(
  id: null,
  from: null
)
```

