# TogaiClient::GetCustomerPortalDelegateTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Identifier of the customer |  |
| **account_ids** | **Array&lt;String&gt;** | Identifier of the accounts under the customer for which access is requested. Maximum of 5 account ids can be provided  | [optional] |
| **all_accounts_access** | **Boolean** | Flag to specify if access for every account under the customer is required | [optional] |
| **expiry** | **Integer** | Expiry in seconds from the time of generation.  If not provided, generated token will have the expiry of the token used for requesting.  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::GetCustomerPortalDelegateTokenRequest.new(
  customer_id: null,
  account_ids: null,
  all_accounts_access: null,
  expiry: null
)
```

