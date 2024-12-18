# TogaiClient::InvoiceDetailsInvoiceGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **email** | **String** |  | [optional] |
| **daily_invoice_consolidation** | **Boolean** |  |  |
| **invoice_currency** | **String** |  |  |
| **address** | [**Address**](Address.md) |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::InvoiceDetailsInvoiceGroup.new(
  id: null,
  name: null,
  email: null,
  daily_invoice_consolidation: null,
  invoice_currency: null,
  address: null
)
```

