# TogaiClient::UpdateWalletRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **effective_from** | **Time** |  | [optional] |
| **status** | [**WalletStatus**](WalletStatus.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdateWalletRequest.new(
  effective_from: null,
  status: null
)
```

