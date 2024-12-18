# TogaiClient::UpdateAddOnRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of addon | [optional] |
| **billable_name** | **String** | Billable name of addon. Billable name takes precedence over name to display in invoice. | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateAddOnRequest.new(
  name: null,
  billable_name: null
)
```

