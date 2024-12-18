# TogaiClient::AlertTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Alert Template ID |  |
| **name** | **String** | Alert Template Name |  |
| **description** | **String** | Alert Template Description | [optional] |
| **interval** | **Integer** | Cron Interval |  |
| **entity_schema** | **String** | Entity Schema | [optional] |
| **entity_type** | **String** | Entity Type | [optional] |
| **owner_schema** | **String** | Owner Schema | [optional] |
| **owner_type** | **String** | Owner Type | [optional] |
| **parameters_schema** | **String** | Parameters Schema | [optional] |
| **created_at** | **Time** | Created At |  |
| **updated_at** | **Time** | Updated At | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::AlertTemplate.new(
  id: null,
  name: null,
  description: null,
  interval: null,
  entity_schema: null,
  entity_type: null,
  owner_schema: null,
  owner_type: null,
  parameters_schema: null,
  created_at: null,
  updated_at: null
)
```

