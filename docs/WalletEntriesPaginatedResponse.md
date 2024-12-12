# TogaiClient::WalletEntriesPaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;WalletEntry&gt;**](WalletEntry.md) |  |  |
| **next_token** | **String** |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::WalletEntriesPaginatedResponse.new(
  data: null,
  next_token: eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ&#x3D;&#x3D;
)
```

