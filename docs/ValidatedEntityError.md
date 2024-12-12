# TogaiClient::ValidatedEntityError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_id** | **String** | Reference ID of the entity, can be Schedule Id or Purchase Id |  |
| **entity_id** | **String** | Identifier of the entity |  |
| **entity_type** | **String** | Type of the entity, can be Rate card or Pricing rule |  |
| **error_message** | **String** | Error message for the validation |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::ValidatedEntityError.new(
  reference_id: null,
  entity_id: null,
  entity_type: null,
  error_message: null
)
```

