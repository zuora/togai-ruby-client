# TogaiClient::CreateAccountRequestWithoutCustomerId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the account |  |
| **name** | **String** | Name of the Account |  |
| **invoice_currency** | **String** | Use [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) currency code in which the account must be invoiced.   For example: AED is the currency code for United Arab Emirates dirham.  | [optional] |
| **aliases** | **Array&lt;String&gt;** | Aliases are tags that are associated with an account. Multiple aliases are allowed for a single account. | [optional] |
| **account_aliases** | [**Array&lt;CreateAccountAliasRequest&gt;**](CreateAccountAliasRequest.md) | Aliases which effective range | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **primary_email** | **String** | Primary email of the account | [optional] |
| **billing_information** | [**AccountsBillingInformation**](AccountsBillingInformation.md) |  | [optional] |
| **settings** | [**Array&lt;CreateEntitySetting&gt;**](CreateEntitySetting.md) |  | [optional] |
| **net_term_days** | **Integer** | Net term for the invoices of the account | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional information associated with the account. Example: GSTN, VATN  | [optional] |
| **tags** | **Array&lt;String&gt;** | Tag for accounts are stored in lowercase | [optional] |
| **status** | **String** | Status of the created account defaults to ACTIVE | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CreateAccountRequestWithoutCustomerId.new(
  id: ACC00001,
  name: Primary Account,
  invoice_currency: null,
  aliases: acme_primary,
  account_aliases: null,
  address: null,
  primary_email: admin@example.com,
  billing_information: null,
  settings: null,
  net_term_days: 45,
  metadata: null,
  tags: null,
  status: null
)
```

