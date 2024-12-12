# TogaiClient::CreateInvoiceGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **email** | **String** |  |  |
| **daily_invoice_consolidation** | **Boolean** |  |  |
| **account_ids** | **Array&lt;String&gt;** |  |  |
| **net_term_days** | **Integer** |  | [optional] |
| **address** | [**Address**](Address.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateInvoiceGroupRequest.new(
  name: null,
  email: null,
  daily_invoice_consolidation: null,
  account_ids: null,
  net_term_days: null,
  address: null
)
```

