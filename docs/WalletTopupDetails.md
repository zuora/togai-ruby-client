# TogaiClient::WalletTopupDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purchase_amount** | **Float** | Specifies the amount to be paid to top up wallet with the specified top up amount.  If left null, purchase amount will be same as top up amount  | [optional] |
| **topup_amount** | **Float** | Specifies the value to be topped up in the wallet |  |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::WalletTopupDetails.new(
  purchase_amount: null,
  topup_amount: null
)
```

