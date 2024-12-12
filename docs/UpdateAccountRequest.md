# TogaiClient::UpdateAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the Account | [optional] |
| **status** | **String** |  | [optional] |
| **invoice_currency** | **String** | [ISO_4217](https://en.wikipedia.org/wiki/ISO_4217) code of the currency in which the account must be invoiced Defaults to Base currency.  | [optional] |
| **net_term_days** | **Integer** |  | [optional] |
| **primary_email** | **String** | Primary email of the account | [optional] |
| **billing_information** | [**AccountsBillingInformation**](AccountsBillingInformation.md) |  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional information associated with the account. Example: GSTN, VATN NOTE: This replaces the existing metadata if the metadata in the request is not null.  To remove all existing metadata, use empty object  | [optional] |
| **tags** | **Array&lt;String&gt;** | Tag for accounts are stored in lowercase | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateAccountRequest.new(
  name: ACME Enterprise,
  status: null,
  invoice_currency: USD,
  net_term_days: null,
  primary_email: admin@example.com,
  billing_information: null,
  address: null,
  metadata: null,
  tags: null
)
```

