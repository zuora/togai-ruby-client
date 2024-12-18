# TogaiClient::AddAccountAliasesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aliases** | **Array&lt;String&gt;** | List of aliases to add | [optional] |
| **account_aliases** | [**Array&lt;CreateAccountAliasRequest&gt;**](CreateAccountAliasRequest.md) | List of account aliases to add | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::AddAccountAliasesRequest.new(
  aliases: null,
  account_aliases: null
)
```

