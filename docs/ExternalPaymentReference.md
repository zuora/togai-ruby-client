# TogaiClient::ExternalPaymentReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_name** | **String** |  |  |
| **source_type** | **String** |  |  |
| **transaction_number** | **String** | Check number or Card transaction number |  |
| **description** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::ExternalPaymentReference.new(
  source_name: null,
  source_type: null,
  transaction_number: null,
  description: null,
  metadata: null
)
```

