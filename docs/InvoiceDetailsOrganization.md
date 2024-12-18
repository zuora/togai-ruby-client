# TogaiClient::InvoiceDetailsOrganization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_name** | **String** |  |  |
| **address** | [**Address**](Address.md) |  |  |
| **primary_email** | **String** |  |  |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::InvoiceDetailsOrganization.new(
  business_name: null,
  address: null,
  primary_email: null,
  metadata: null
)
```

