# TogaiClient::LicenseUpdateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **quantity** | **Float** | Absolute quantity of the license |  |
| **effective_from** | **Time** |  |  |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::LicenseUpdateResponse.new(
  license_id: lic.fdjsl.313,
  account_id: acc.fdjsl.313,
  quantity: 10,
  effective_from: 2021-03-04T14:25:10Z,
  metadata: {key1&#x3D;value1, key2&#x3D;value2},
  created_at: 2021-03-04T14:25:10Z
)
```

