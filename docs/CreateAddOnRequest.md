# TogaiClient::CreateAddOnRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of addon |  |
| **type** | [**AddOnType**](AddOnType.md) |  |  |
| **billable_name** | **String** | Billable name of addon. Billable name takes precedence over name to display in invoice. | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateAddOnRequest.new(
  name: null,
  type: null,
  billable_name: null
)
```

