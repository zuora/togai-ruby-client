# TogaiClient::LicenseUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_id** | **String** | The license id for which the update is requested |  |
| **account_id** | **String** | The account id for which the license is being updated |  |
| **update_type** | **String** | The type of update to be performed |  |
| **quantity** | **Float** | The quantity to be updated |  |
| **effective_from** | **Time** | The effective from date for the update | [optional] |
| **idempotency_key** | **String** | The idempotency key for uniqueness of the license update request | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::LicenseUpdateRequest.new(
  license_id: lic.fdjsl.313,
  account_id: acc.fdjsl.313,
  update_type: null,
  quantity: null,
  effective_from: 2021-03-04T14:25:10Z,
  idempotency_key: idempotencyKey#1,
  metadata: {&quot;key1&quot;:&quot;value1&quot;,&quot;key2&quot;:&quot;value2&quot;}
)
```

