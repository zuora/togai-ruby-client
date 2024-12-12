# TogaiClient::InvoiceDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer** | [**InvoiceDetailsCustomer**](InvoiceDetailsCustomer.md) |  | [optional] |
| **account** | [**InvoiceDetailsAccount**](InvoiceDetailsAccount.md) |  | [optional] |
| **price_plan_name** | **String** |  | [optional] |
| **invoice_group** | [**InvoiceDetailsInvoiceGroup**](InvoiceDetailsInvoiceGroup.md) |  | [optional] |
| **organization** | [**InvoiceDetailsOrganization**](InvoiceDetailsOrganization.md) |  | [optional] |
| **logo_url** | **String** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::InvoiceDetails.new(
  customer: null,
  account: null,
  price_plan_name: null,
  invoice_group: null,
  organization: null,
  logo_url: null
)
```

