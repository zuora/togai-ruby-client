# TogaiClient::Alert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Alert ID |  |
| **version** | **Integer** | Alert Version |  |
| **description** | **String** | Alert Description | [optional] |
| **status** | [**AlertStatus**](AlertStatus.md) |  |  |
| **validity** | **Integer** | Validity of the alert in minutes, if null then alert will be valid forever | [optional] |
| **alert_template_id** | **String** | Alert Template Id |  |
| **interval** | **Integer** | Interval |  |
| **entity_details** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **owner_details** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **parameters** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **created_at** | **Time** | Created At |  |
| **updated_at** | **Time** | Updated At | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Alert.new(
  id: null,
  version: null,
  description: null,
  status: null,
  validity: null,
  alert_template_id: null,
  interval: null,
  entity_details: null,
  owner_details: null,
  parameters: null,
  created_at: null,
  updated_at: null
)
```

