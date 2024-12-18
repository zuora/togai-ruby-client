# TogaiClient::UpdateAlertRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **status** | [**AlertStatus**](AlertStatus.md) |  | [optional] |
| **interval** | **Integer** |  | [optional] |
| **validity** | **Integer** |  | [optional] |
| **parameters** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateAlertRequest.new(
  description: null,
  status: null,
  interval: null,
  validity: null,
  parameters: null
)
```

