# TogaiClient::Incident

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Incident ID |  |
| **alert_id** | **String** | Alert ID |  |
| **alert_version** | **Integer** | Alert Version |  |
| **alert_template_id** | **String** | Alert Template Id |  |
| **valid_until** | **Time** |  | [optional] |
| **report_data** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **status** | **String** | Incident Status |  |
| **last_checked_at** | **Time** | Last Checked At | [optional] |
| **created_at** | **Time** | Created At |  |
| **updated_at** | **Time** | Updated At | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Incident.new(
  id: null,
  alert_id: null,
  alert_version: null,
  alert_template_id: null,
  valid_until: null,
  report_data: null,
  status: null,
  last_checked_at: null,
  created_at: null,
  updated_at: null
)
```

