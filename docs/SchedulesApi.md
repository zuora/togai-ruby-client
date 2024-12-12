# TogaiClient::SchedulesApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_edit_schedules**](SchedulesApi.md#bulk_edit_schedules) | **POST** /v2/accounts/{account_id}/edit_schedules | Bulk edit schedules of an account |
| [**bulk_rate_card_operations_on_schedule**](SchedulesApi.md#bulk_rate_card_operations_on_schedule) | **POST** /v2/schedules/{schedule_id}/rate_cards | Bulk rate card operations on a schedule |
| [**discard_account_schedules**](SchedulesApi.md#discard_account_schedules) | **DELETE** /v2/accounts/{account_id}/discard_schedules | Discard schedules of an account |
| [**finalize_account_schedules**](SchedulesApi.md#finalize_account_schedules) | **POST** /v2/accounts/{account_id}/finalize_schedules | Finalize schedules of an account |
| [**list_pricing_rules**](SchedulesApi.md#list_pricing_rules) | **GET** /v2/schedules/{schedule_id}/pricing_rules | List pricing rules of a account schedule |
| [**list_schedule_errors**](SchedulesApi.md#list_schedule_errors) | **GET** /v2/schedules/{schedule_id}/errors | Get list of errors of a acc schedule |
| [**list_schedule_rate_cards**](SchedulesApi.md#list_schedule_rate_cards) | **GET** /v2/schedules/{schedule_id}/rate_cards | List rate cards |
| [**listaccount_schedules**](SchedulesApi.md#listaccount_schedules) | **GET** /v2/accounts/{account_id}/schedules | List pricing schedules of an account |
| [**update_pricing_rules**](SchedulesApi.md#update_pricing_rules) | **PUT** /v2/schedules/{schedule_id}/pricing_rules | Update pricing rules of a account schedule |


## bulk_edit_schedules

> <UpdatePricingScheduleResponse> bulk_edit_schedules(account_id, edit_account_schedule_request, opts)

Bulk edit schedules of an account

Bulk edit schedules of an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SchedulesApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
edit_account_schedule_request = TogaiClient::EditAccountScheduleRequest.new({edits: [TogaiClient::UpdateAccountScheduleV2Request.new({effective_from: Date.today, effective_until: Date.today})]}) # EditAccountScheduleRequest | Payload to edit schedules of an account
opts = {
  discard: false # Boolean | 
}

begin
  # Bulk edit schedules of an account
  result = api_instance.bulk_edit_schedules(account_id, edit_account_schedule_request, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->bulk_edit_schedules: #{e}"
end
```

#### Using the bulk_edit_schedules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePricingScheduleResponse>, Integer, Hash)> bulk_edit_schedules_with_http_info(account_id, edit_account_schedule_request, opts)

```ruby
begin
  # Bulk edit schedules of an account
  data, status_code, headers = api_instance.bulk_edit_schedules_with_http_info(account_id, edit_account_schedule_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePricingScheduleResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->bulk_edit_schedules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **edit_account_schedule_request** | [**EditAccountScheduleRequest**](EditAccountScheduleRequest.md) | Payload to edit schedules of an account |  |
| **discard** | **Boolean** |  | [optional] |

### Return type

[**UpdatePricingScheduleResponse**](UpdatePricingScheduleResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## bulk_rate_card_operations_on_schedule

> <BulkRateCardOperationsResponse> bulk_rate_card_operations_on_schedule(schedule_id, bulk_rate_card_operations_request)

Bulk rate card operations on a schedule

Bulk rate card operations on a schedule

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SchedulesApi.new
schedule_id = 'sch.20aUyEZSuYq.SoGbS' # String | 
bulk_rate_card_operations_request = TogaiClient::BulkRateCardOperationsRequest.new({operations: [TogaiClient::RateCardOperation.new({action_type: 'CREATE', rate_card_name: 'rate_card_name_example'})]}) # BulkRateCardOperationsRequest | Payload to bulk rate card operations

begin
  # Bulk rate card operations on a schedule
  result = api_instance.bulk_rate_card_operations_on_schedule(schedule_id, bulk_rate_card_operations_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->bulk_rate_card_operations_on_schedule: #{e}"
end
```

#### Using the bulk_rate_card_operations_on_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BulkRateCardOperationsResponse>, Integer, Hash)> bulk_rate_card_operations_on_schedule_with_http_info(schedule_id, bulk_rate_card_operations_request)

```ruby
begin
  # Bulk rate card operations on a schedule
  data, status_code, headers = api_instance.bulk_rate_card_operations_on_schedule_with_http_info(schedule_id, bulk_rate_card_operations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BulkRateCardOperationsResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->bulk_rate_card_operations_on_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_id** | **String** |  |  |
| **bulk_rate_card_operations_request** | [**BulkRateCardOperationsRequest**](BulkRateCardOperationsRequest.md) | Payload to bulk rate card operations |  |

### Return type

[**BulkRateCardOperationsResponse**](BulkRateCardOperationsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## discard_account_schedules

> <BaseSuccessResponse> discard_account_schedules(account_id)

Discard schedules of an account

Discard schedules of an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SchedulesApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account

begin
  # Discard schedules of an account
  result = api_instance.discard_account_schedules(account_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->discard_account_schedules: #{e}"
end
```

#### Using the discard_account_schedules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> discard_account_schedules_with_http_info(account_id)

```ruby
begin
  # Discard schedules of an account
  data, status_code, headers = api_instance.discard_account_schedules_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->discard_account_schedules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## finalize_account_schedules

> <SchedulesPaginatedResponse> finalize_account_schedules(account_id, finalize_account_schedules)

Finalize schedules of an account

Finalize schedules of an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SchedulesApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
finalize_account_schedules = TogaiClient::FinalizeAccountSchedules.new # FinalizeAccountSchedules | Payload to finalize account schedules

begin
  # Finalize schedules of an account
  result = api_instance.finalize_account_schedules(account_id, finalize_account_schedules)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->finalize_account_schedules: #{e}"
end
```

#### Using the finalize_account_schedules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchedulesPaginatedResponse>, Integer, Hash)> finalize_account_schedules_with_http_info(account_id, finalize_account_schedules)

```ruby
begin
  # Finalize schedules of an account
  data, status_code, headers = api_instance.finalize_account_schedules_with_http_info(account_id, finalize_account_schedules)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchedulesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->finalize_account_schedules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **finalize_account_schedules** | [**FinalizeAccountSchedules**](FinalizeAccountSchedules.md) | Payload to finalize account schedules |  |

### Return type

[**SchedulesPaginatedResponse**](SchedulesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_pricing_rules

> <PricingRulesPaginatedResponse> list_pricing_rules(schedule_id, mode)

List pricing rules of a account schedule

List pricing rules of a account schedule

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SchedulesApi.new
schedule_id = 'sch.20aUyEZSuYq.SoGbS' # String | 
mode = 'mode_example' # String | Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card 

begin
  # List pricing rules of a account schedule
  result = api_instance.list_pricing_rules(schedule_id, mode)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_pricing_rules: #{e}"
end
```

#### Using the list_pricing_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricingRulesPaginatedResponse>, Integer, Hash)> list_pricing_rules_with_http_info(schedule_id, mode)

```ruby
begin
  # List pricing rules of a account schedule
  data, status_code, headers = api_instance.list_pricing_rules_with_http_info(schedule_id, mode)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricingRulesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_pricing_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_id** | **String** |  |  |
| **mode** | **String** | Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card  |  |

### Return type

[**PricingRulesPaginatedResponse**](PricingRulesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_schedule_errors

> <ValidatedEntityErrorsPaginatedResponse> list_schedule_errors(schedule_id)

Get list of errors of a acc schedule

Get list of errors of a acc schedule

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SchedulesApi.new
schedule_id = 'sch.20aUyEZSuYq.SoGbS' # String | 

begin
  # Get list of errors of a acc schedule
  result = api_instance.list_schedule_errors(schedule_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedule_errors: #{e}"
end
```

#### Using the list_schedule_errors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidatedEntityErrorsPaginatedResponse>, Integer, Hash)> list_schedule_errors_with_http_info(schedule_id)

```ruby
begin
  # Get list of errors of a acc schedule
  data, status_code, headers = api_instance.list_schedule_errors_with_http_info(schedule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidatedEntityErrorsPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedule_errors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_id** | **String** |  |  |

### Return type

[**ValidatedEntityErrorsPaginatedResponse**](ValidatedEntityErrorsPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_schedule_rate_cards

> <RateCardPaginatedResponse> list_schedule_rate_cards(schedule_id, mode, opts)

List rate cards

List rate cards

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SchedulesApi.new
schedule_id = 'sch.20aUyEZSuYq.SoGbS' # String | 
mode = 'mode_example' # String | Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card 
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List rate cards
  result = api_instance.list_schedule_rate_cards(schedule_id, mode, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedule_rate_cards: #{e}"
end
```

#### Using the list_schedule_rate_cards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RateCardPaginatedResponse>, Integer, Hash)> list_schedule_rate_cards_with_http_info(schedule_id, mode, opts)

```ruby
begin
  # List rate cards
  data, status_code, headers = api_instance.list_schedule_rate_cards_with_http_info(schedule_id, mode, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RateCardPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->list_schedule_rate_cards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_id** | **String** |  |  |
| **mode** | **String** | Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card  |  |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**RateCardPaginatedResponse**](RateCardPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## listaccount_schedules

> <SchedulesPaginatedResponse> listaccount_schedules(account_id, mode, opts)

List pricing schedules of an account

List pricing schedules of an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SchedulesApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
mode = 'mode_example' # String | Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card 
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List pricing schedules of an account
  result = api_instance.listaccount_schedules(account_id, mode, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->listaccount_schedules: #{e}"
end
```

#### Using the listaccount_schedules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SchedulesPaginatedResponse>, Integer, Hash)> listaccount_schedules_with_http_info(account_id, mode, opts)

```ruby
begin
  # List pricing schedules of an account
  data, status_code, headers = api_instance.listaccount_schedules_with_http_info(account_id, mode, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SchedulesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->listaccount_schedules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **mode** | **String** | Possible values: 1. ACTIVE - Get the active rate card 2. DRAFT - Get the draft rate card  |  |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**SchedulesPaginatedResponse**](SchedulesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_pricing_rules

> <PricingRulesPaginatedResponse> update_pricing_rules(schedule_id, update_pricing_rules_request)

Update pricing rules of a account schedule

Update pricing rules of a account schedule

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SchedulesApi.new
schedule_id = 'sch.20aUyEZSuYq.SoGbS' # String | 
update_pricing_rules_request = TogaiClient::UpdatePricingRulesRequest.new # UpdatePricingRulesRequest | Payload to update pricing rules

begin
  # Update pricing rules of a account schedule
  result = api_instance.update_pricing_rules(schedule_id, update_pricing_rules_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->update_pricing_rules: #{e}"
end
```

#### Using the update_pricing_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricingRulesPaginatedResponse>, Integer, Hash)> update_pricing_rules_with_http_info(schedule_id, update_pricing_rules_request)

```ruby
begin
  # Update pricing rules of a account schedule
  data, status_code, headers = api_instance.update_pricing_rules_with_http_info(schedule_id, update_pricing_rules_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricingRulesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling SchedulesApi->update_pricing_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_id** | **String** |  |  |
| **update_pricing_rules_request** | [**UpdatePricingRulesRequest**](UpdatePricingRulesRequest.md) | Payload to update pricing rules |  |

### Return type

[**PricingRulesPaginatedResponse**](PricingRulesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

