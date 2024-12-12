# TogaiClient::InvoiceGroups

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **email** | **String** |  |  |
| **daily_invoice_consolidation** | **Boolean** |  |  |
| **net_term_days** | **Integer** |  | [optional] |
| **invoice_currency** | **String** |  |  |
| **billing_address** | [**Address**](Address.md) |  |  |
| **accounts_count** | **Integer** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::InvoiceGroups.new(
  id: null,
  name: null,
  email: null,
  daily_invoice_consolidation: null,
  net_term_days: null,
  invoice_currency: null,
  billing_address: null,
  accounts_count: null,
  created_at: null,
  updated_at: null
)
```

