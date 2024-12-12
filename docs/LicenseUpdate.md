# TogaiClient::LicenseUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **quantity** | **Float** | Absolute quantity of the license |  |
| **effective_from** | **Time** |  |  |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::LicenseUpdate.new(
  license_id: lic.fdjsl.313,
  account_id: acc.fdjsl.313,
  quantity: 10,
  effective_from: 2021-03-04T14:25:10Z,
  metadata: {&quot;key1&quot;:&quot;value1&quot;,&quot;key2&quot;:&quot;value2&quot;}
)
```

