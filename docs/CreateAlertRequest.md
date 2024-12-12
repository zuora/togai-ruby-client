# TogaiClient::CreateAlertRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_template_id** | **String** |  |  |
| **interval** | **Integer** |  |  |
| **validity** | **Integer** | Validity of the alert in minutes, if null then alert will be valid forever | [optional] |
| **description** | **String** |  | [optional] |
| **entity_details** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **owner_details** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **parameters** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **status** | [**AlertStatus**](AlertStatus.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateAlertRequest.new(
  alert_template_id: null,
  interval: null,
  validity: null,
  description: null,
  entity_details: null,
  owner_details: null,
  parameters: null,
  status: null
)
```

