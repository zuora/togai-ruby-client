# TogaiClient::Report

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **account_id** | **String** |  | [optional] |
| **status** | [**ReportStatus**](ReportStatus.md) |  |  |
| **file_id** | **String** |  | [optional] |
| **query_input** | [**QueryInput**](QueryInput.md) |  | [optional] |
| **report_template_id** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **pre_signed_url** | **String** |  | [optional] |
| **type** | [**ReportType**](ReportType.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Report.new(
  id: null,
  name: null,
  account_id: null,
  status: null,
  file_id: null,
  query_input: null,
  report_template_id: null,
  created_at: null,
  updated_at: null,
  pre_signed_url: null,
  type: null
)
```

