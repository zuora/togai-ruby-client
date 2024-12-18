# TogaiClient::NamedLicenseUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **license_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **name** | **String** |  |  |
| **effective_from** | **Time** |  | [optional] |
| **effective_until** | **Time** |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::NamedLicenseUpdate.new(
  id: named_license_entry.20rvWRx.0ZwPG,
  license_id: addon.fdjsl.313,
  account_id: 123,
  name: user1,
  effective_from: 2021-03-04T14:25:10Z,
  effective_until: 2021-03-04T14:25:10Z,
  created_at: 2021-03-04T14:25:10Z,
  updated_at: 2021-03-04T14:25:10Z
)
```

