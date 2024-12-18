# TogaiClient::AddOn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of addon |  |
| **type** | [**AddOnType**](AddOnType.md) |  |  |
| **billable_name** | **String** | Billable name of addon. Billable name takes precedence over name to display in invoice. | [optional] |
| **id** | **String** | Id of addon |  |
| **created_at** | **Time** | Created Time of addon |  |
| **status** | **String** | status of addon |  |
| **display_name** | **String** | Display name of addon. This is an auto-generated field which contains billableName of addon. If billableName is not provided, name will be used as display name.  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::AddOn.new(
  name: null,
  type: null,
  billable_name: null,
  id: addon.1zYnCiM9Bpg.1zYn,
  created_at: null,
  status: ACTIVE,
  display_name: null
)
```

