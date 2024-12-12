# TogaiClient::CurrencyConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Mode to get the currency - CUSTOM: Use the currency provided in the request - ACCOUNT_INVOICE: Use the invoice currency of the given account  |  |
| **currency** | **String** | Currency to be used, this will be considered if mode is CUSTOM | [optional] |
| **account_id** | **String** | Id of the account of which invoice currency will be used, this will be considered if mode is ACCOUNT_INVOICE | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::CurrencyConfig.new(
  mode: null,
  currency: null,
  account_id: null
)
```

