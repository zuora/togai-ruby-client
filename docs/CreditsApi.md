# TogaiClient::CreditsApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_credit**](CreditsApi.md#create_credit) | **POST** /credits | Grant credit |
| [**credit_balance_for_account**](CreditsApi.md#credit_balance_for_account) | **GET** /accounts/{account_id}/credit_balance | Credit balance for Account |
| [**get_credit_details**](CreditsApi.md#get_credit_details) | **GET** /credits/{credit_id} | Get credit details |
| [**list_credits**](CreditsApi.md#list_credits) | **GET** /credits | List credits |
| [**void_credit**](CreditsApi.md#void_credit) | **POST** /credits/{credit_id}/void | Void credit |


## create_credit

> <CreateCreditResponse> create_credit(opts)

Grant credit

Grant credit

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CreditsApi.new
opts = {
  create_credit_request: TogaiClient::CreateCreditRequest.new({credit_requests: [TogaiClient::CreditRequest.new({account_id: 'ACC001', purpose: 'PREPAID_CREDIT', effective_from: Date.parse('Sat Jul 04 00:00:00 UTC 2020'), priority: 1})]}) # CreateCreditRequest | Payload to grant credits
}

begin
  # Grant credit
  result = api_instance.create_credit(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CreditsApi->create_credit: #{e}"
end
```

#### Using the create_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreditResponse>, Integer, Hash)> create_credit_with_http_info(opts)

```ruby
begin
  # Grant credit
  data, status_code, headers = api_instance.create_credit_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreditResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CreditsApi->create_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_credit_request** | [**CreateCreditRequest**](CreateCreditRequest.md) | Payload to grant credits | [optional] |

### Return type

[**CreateCreditResponse**](CreateCreditResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## credit_balance_for_account

> <CreditBalanceResponse> credit_balance_for_account(account_id)

Credit balance for Account

Credit balance for Account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CreditsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account

begin
  # Credit balance for Account
  result = api_instance.credit_balance_for_account(account_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CreditsApi->credit_balance_for_account: #{e}"
end
```

#### Using the credit_balance_for_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditBalanceResponse>, Integer, Hash)> credit_balance_for_account_with_http_info(account_id)

```ruby
begin
  # Credit balance for Account
  data, status_code, headers = api_instance.credit_balance_for_account_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditBalanceResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CreditsApi->credit_balance_for_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |

### Return type

[**CreditBalanceResponse**](CreditBalanceResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_credit_details

> <CreditDetailsResponse> get_credit_details(credit_id)

Get credit details

Get credit details

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CreditsApi.new
credit_id = 'creds.1znQx9jiIXw.r44fc' # String | 

begin
  # Get credit details
  result = api_instance.get_credit_details(credit_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CreditsApi->get_credit_details: #{e}"
end
```

#### Using the get_credit_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditDetailsResponse>, Integer, Hash)> get_credit_details_with_http_info(credit_id)

```ruby
begin
  # Get credit details
  data, status_code, headers = api_instance.get_credit_details_with_http_info(credit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditDetailsResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CreditsApi->get_credit_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_id** | **String** |  |  |

### Return type

[**CreditDetailsResponse**](CreditDetailsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_credits

> <ListCreditsResponse> list_credits(opts)

List credits

Get all credits

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CreditsApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | Pagination token used as a marker to get records from next page.
  status: 'PROCESSED', # String | Filter option to filter by status.
  account_id: '1234', # String | Filter option to filter based on account id.
  id: 'cred.1znpoFlsI3U.zmg85', # String | Filter option to filter based on credit id.
  page_size: 10 # Integer | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
}

begin
  # List credits
  result = api_instance.list_credits(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CreditsApi->list_credits: #{e}"
end
```

#### Using the list_credits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreditsResponse>, Integer, Hash)> list_credits_with_http_info(opts)

```ruby
begin
  # List credits
  data, status_code, headers = api_instance.list_credits_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreditsResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CreditsApi->list_credits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** | Pagination token used as a marker to get records from next page. | [optional] |
| **status** | **String** | Filter option to filter by status. | [optional] |
| **account_id** | **String** | Filter option to filter based on account id. | [optional] |
| **id** | **String** | Filter option to filter based on credit id. | [optional] |
| **page_size** | **Integer** | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided. | [optional] |

### Return type

[**ListCreditsResponse**](ListCreditsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## void_credit

> <Credit> void_credit(credit_id)

Void credit

Void credit

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CreditsApi.new
credit_id = 'creds.1znQx9jiIXw.r44fc' # String | 

begin
  # Void credit
  result = api_instance.void_credit(credit_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CreditsApi->void_credit: #{e}"
end
```

#### Using the void_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Credit>, Integer, Hash)> void_credit_with_http_info(credit_id)

```ruby
begin
  # Void credit
  data, status_code, headers = api_instance.void_credit_with_http_info(credit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Credit>
rescue TogaiClient::ApiError => e
  puts "Error when calling CreditsApi->void_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_id** | **String** |  |  |

### Return type

[**Credit**](Credit.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

