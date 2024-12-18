# TogaiClient::CreateAccountAliasRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** |  |  |
| **effective_from** | **Time** | Effective from date, if not provided, it will be set to -infinity | [optional] |
| **effective_until** | **Time** | Effective until date, if not provided, it will be set to +infinity | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateAccountAliasRequest.new(
  value: null,
  effective_from: null,
  effective_until: null
)
```

