# TogaiClient::IncidentsPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Incident&gt;**](Incident.md) |  |  |
| **next_token** | **String** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::IncidentsPaginatedResponse.new(
  data: null,
  next_token: null
)
```

