# TogaiClient::RemoveAccountAliasesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aliases** | **Array&lt;String&gt;** |  | [optional] |
| **account_aliases** | [**Array&lt;RemoveAccountAliasRequest&gt;**](RemoveAccountAliasRequest.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::RemoveAccountAliasesRequest.new(
  aliases: null,
  account_aliases: null
)
```

