# TogaiClient::PaymentLineItemRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **togai_id** | **String** |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **order** | **Integer** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PaymentLineItemRecord.new(
  type: null,
  togai_id: inv.234.12efwe,
  amount: null,
  order: null
)
```

