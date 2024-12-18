# TogaiClient::GetJobResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** |  |  |
| **settled_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  |  |
| **status** | **String** |  |  |
| **total_job_entries** | **Integer** |  |  |
| **pending_job_entries** | **Integer** |  |  |
| **failed_job_entries** | **Integer** |  |  |
| **completed_job_entries** | **Integer** |  |  |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::GetJobResponse.new(
  id: null,
  type: null,
  settled_at: null,
  updated_at: null,
  status: null,
  total_job_entries: null,
  pending_job_entries: null,
  failed_job_entries: null,
  completed_job_entries: null,
  metadata: null
)
```

