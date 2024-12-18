# TogaiClient::WalletApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**top_up_wallet_for_account**](WalletApi.md#top_up_wallet_for_account) | **POST** /accounts/{account_id}/wallet_topup | Top-up wallet for an account |
| [**update_wallet_for_account**](WalletApi.md#update_wallet_for_account) | **PATCH** /accounts/{account_id}/wallet | Update wallet details for an account |
| [**wallet_balance_for_account**](WalletApi.md#wallet_balance_for_account) | **GET** /accounts/{account_id}/wallet | Wallet balance for Account |
| [**wallet_entries_for_account**](WalletApi.md#wallet_entries_for_account) | **GET** /accounts/{account_id}/wallet/entries | Wallet entries for Account |


## top_up_wallet_for_account

> <WalletBalanceResponse> top_up_wallet_for_account(account_id, opts)

Top-up wallet for an account

Top-up wallet for an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::WalletApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
opts = {
  topup_wallet_request: TogaiClient::TopupWalletRequest.new({topup_amount: 3.56}) # TopupWalletRequest | Payload to topup wallet of an account
}

begin
  # Top-up wallet for an account
  result = api_instance.top_up_wallet_for_account(account_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling WalletApi->top_up_wallet_for_account: #{e}"
end
```

#### Using the top_up_wallet_for_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletBalanceResponse>, Integer, Hash)> top_up_wallet_for_account_with_http_info(account_id, opts)

```ruby
begin
  # Top-up wallet for an account
  data, status_code, headers = api_instance.top_up_wallet_for_account_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletBalanceResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling WalletApi->top_up_wallet_for_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **topup_wallet_request** | [**TopupWalletRequest**](TopupWalletRequest.md) | Payload to topup wallet of an account | [optional] |

### Return type

[**WalletBalanceResponse**](WalletBalanceResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_wallet_for_account

> <WalletBalanceResponse> update_wallet_for_account(account_id, opts)

Update wallet details for an account

Update wallet details for an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::WalletApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
opts = {
  update_wallet_request: TogaiClient::UpdateWalletRequest.new # UpdateWalletRequest | Payload to update wallet of an account
}

begin
  # Update wallet details for an account
  result = api_instance.update_wallet_for_account(account_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling WalletApi->update_wallet_for_account: #{e}"
end
```

#### Using the update_wallet_for_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletBalanceResponse>, Integer, Hash)> update_wallet_for_account_with_http_info(account_id, opts)

```ruby
begin
  # Update wallet details for an account
  data, status_code, headers = api_instance.update_wallet_for_account_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletBalanceResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling WalletApi->update_wallet_for_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **update_wallet_request** | [**UpdateWalletRequest**](UpdateWalletRequest.md) | Payload to update wallet of an account | [optional] |

### Return type

[**WalletBalanceResponse**](WalletBalanceResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## wallet_balance_for_account

> <WalletBalanceResponse> wallet_balance_for_account(account_id)

Wallet balance for Account

Wallet balance for Account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::WalletApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account

begin
  # Wallet balance for Account
  result = api_instance.wallet_balance_for_account(account_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_balance_for_account: #{e}"
end
```

#### Using the wallet_balance_for_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletBalanceResponse>, Integer, Hash)> wallet_balance_for_account_with_http_info(account_id)

```ruby
begin
  # Wallet balance for Account
  data, status_code, headers = api_instance.wallet_balance_for_account_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletBalanceResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_balance_for_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |

### Return type

[**WalletBalanceResponse**](WalletBalanceResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wallet_entries_for_account

> <WalletEntriesPaginatedResponse> wallet_entries_for_account(account_id, opts)

Wallet entries for Account

Wallet entries for Account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::WalletApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | Pagination token used as a marker to get records from next page.
  page_size: 10 # Integer | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
}

begin
  # Wallet entries for Account
  result = api_instance.wallet_entries_for_account(account_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_entries_for_account: #{e}"
end
```

#### Using the wallet_entries_for_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletEntriesPaginatedResponse>, Integer, Hash)> wallet_entries_for_account_with_http_info(account_id, opts)

```ruby
begin
  # Wallet entries for Account
  data, status_code, headers = api_instance.wallet_entries_for_account_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletEntriesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling WalletApi->wallet_entries_for_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **next_token** | **String** | Pagination token used as a marker to get records from next page. | [optional] |
| **page_size** | **Integer** | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided. | [optional] |

### Return type

[**WalletEntriesPaginatedResponse**](WalletEntriesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

