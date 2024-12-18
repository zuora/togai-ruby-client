# TogaiClient::JobEntriesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** |  |  |
| **job_id** | **String** |  |  |
| **status** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::JobEntriesResponse.new(
  entity_id: null,
  job_id: null,
  status: null,
  created_at: null,
  metadata: null
)
```

