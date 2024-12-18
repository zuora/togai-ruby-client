# TogaiClient::AccountAlias

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Alias identifier (UUID) |  |
| **value** | **String** | Alias value |  |
| **effective_from** | **Time** | Effective from date |  |
| **effective_until** | **Time** | Effective until date |  |
| **created_at** | **Time** | Alias creation date |  |
| **updated_at** | **Time** | Alias update date | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::AccountAlias.new(
  id: null,
  value: null,
  effective_from: null,
  effective_until: null,
  created_at: null,
  updated_at: null
)
```

