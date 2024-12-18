# TogaiClient::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the account |  |
| **togai_account_id** | **String** | Unique identifier of the account |  |
| **togai_customer_id** | **String** | Unique identifier of the customer |  |
| **name** | **String** | Name of the Account |  |
| **customer_id** | **String** | Identifier of the customer |  |
| **invoice_currency** | **String** | [ISO_4217](https://en.wikipedia.org/wiki/ISO_4217) code of the currency in which the account must be invoiced Defaults to Base currency.  | [optional] |
| **aliases** | [**Array&lt;AccountAliases&gt;**](AccountAliases.md) | list of aliases of the account | [optional] |
| **net_term_days** | **Integer** |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **primary_email** | **String** | Primary email of the customer | [optional] |
| **billing_information** | [**AccountsBillingInformation**](AccountsBillingInformation.md) |  | [optional] |
| **status** | **String** | Status of the account |  |
| **settings** | [**Array&lt;CreateEntitySetting&gt;**](CreateEntitySetting.md) |  | [optional] |
| **invoice_group_details** | [**InvoiceGroupDetails**](InvoiceGroupDetails.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional information associated with the account. Example: GSTN, VATN  | [optional] |
| **tags** | **Array&lt;String&gt;** | Tag for accounts are stored in lowercase | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Account.new(
  id: null,
  togai_account_id: null,
  togai_customer_id: null,
  name: null,
  customer_id: null,
  invoice_currency: USD,
  aliases: null,
  net_term_days: null,
  address: null,
  primary_email: admin@example.com,
  billing_information: null,
  status: ACTIVE,
  settings: null,
  invoice_group_details: null,
  metadata: null,
  tags: null
)
```

