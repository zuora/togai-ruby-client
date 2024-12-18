# TogaiClient::GrantDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **priority** | **Integer** |  |  |
| **expiry_type** | [**ExpiryType**](ExpiryType.md) |  |  |
| **expiry_duration** | **String** |  | [optional] |
| **applicable_entity_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::GrantDetails.new(
  priority: null,
  expiry_type: null,
  expiry_duration: null,
  applicable_entity_ids: null
)
```

