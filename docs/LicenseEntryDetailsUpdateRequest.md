# TogaiClient::LicenseEntryDetailsUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account id for which the license is being updated |  |
| **effective_from** | **Time** | The effective from date of the license entry |  |
| **metadata** | **Hash&lt;String, String&gt;** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::LicenseEntryDetailsUpdateRequest.new(
  account_id: acc.fdjsl.313,
  effective_from: 2021-03-04T14:25:10Z,
  metadata: {&quot;key1&quot;:&quot;value1&quot;,&quot;key2&quot;:&quot;value2&quot;}
)
```

