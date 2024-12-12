# TogaiClient::PricePlanV2Api

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_price_plan_rate_card_operations**](PricePlanV2Api.md#bulk_price_plan_rate_card_operations) | **POST** /v2/price_plans/{price_plan_id}/rate_cards | Bulk rate card operations of a price plan |
| [**create_price_plan_v2**](PricePlanV2Api.md#create_price_plan_v2) | **POST** /v2/price_plans | Create a price plan |
| [**discard_price_plan**](PricePlanV2Api.md#discard_price_plan) | **DELETE** /v2/price_plans/{price_plan_id}/discard | Discard a price plan |
| [**finalize_price_plan**](PricePlanV2Api.md#finalize_price_plan) | **POST** /v2/price_plans/{price_plan_id}/finalize | Finalize a price plan |
| [**get_price_plan_v2**](PricePlanV2Api.md#get_price_plan_v2) | **GET** /v2/price_plans/{price_plan_id} | Get a price plan |
| [**list_price_plan_errors**](PricePlanV2Api.md#list_price_plan_errors) | **GET** /v2/price_plans/{price_plan_id}/errors | Get list of errors of a price plan |
| [**list_price_plan_pricing_rules**](PricePlanV2Api.md#list_price_plan_pricing_rules) | **GET** /v2/price_plans/{price_plan_id}/pricing_rules | List pricing rules of a price plan |
| [**list_price_plan_rate_cards**](PricePlanV2Api.md#list_price_plan_rate_cards) | **GET** /v2/price_plans/{price_plan_id}/rate_cards | List rate cards of a price plan |
| [**list_price_plan_versions**](PricePlanV2Api.md#list_price_plan_versions) | **GET** /v2/price_plans/{price_plan_id}/versions | List price plan versions |
| [**list_price_plans_v2**](PricePlanV2Api.md#list_price_plans_v2) | **GET** /v2/price_plans | List price plans |
| [**price_plan_migration_v2**](PricePlanV2Api.md#price_plan_migration_v2) | **POST** /v2/price_plans/migration | Create a price plan v2 migration |
| [**update_price_plan_pricing_rules**](PricePlanV2Api.md#update_price_plan_pricing_rules) | **PUT** /v2/price_plans/{price_plan_id}/pricing_rules | Update pricing rules of a price plan |
| [**update_price_plan_v2**](PricePlanV2Api.md#update_price_plan_v2) | **PATCH** /v2/price_plans/{price_plan_id} | Update a price plan |


## bulk_price_plan_rate_card_operations

> <BulkRateCardOperationsResponse> bulk_price_plan_rate_card_operations(price_plan_id, bulk_rate_card_operations_request)

Bulk rate card operations of a price plan

Bulk rate card operations of a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
bulk_rate_card_operations_request = TogaiClient::BulkRateCardOperationsRequest.new({operations: [TogaiClient::RateCardOperation.new({action_type: 'CREATE', rate_card_name: 'rate_card_name_example'})]}) # BulkRateCardOperationsRequest | Payload to bulk rate card operations

begin
  # Bulk rate card operations of a price plan
  result = api_instance.bulk_price_plan_rate_card_operations(price_plan_id, bulk_rate_card_operations_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->bulk_price_plan_rate_card_operations: #{e}"
end
```

#### Using the bulk_price_plan_rate_card_operations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BulkRateCardOperationsResponse>, Integer, Hash)> bulk_price_plan_rate_card_operations_with_http_info(price_plan_id, bulk_rate_card_operations_request)

```ruby
begin
  # Bulk rate card operations of a price plan
  data, status_code, headers = api_instance.bulk_price_plan_rate_card_operations_with_http_info(price_plan_id, bulk_rate_card_operations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BulkRateCardOperationsResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->bulk_price_plan_rate_card_operations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **bulk_rate_card_operations_request** | [**BulkRateCardOperationsRequest**](BulkRateCardOperationsRequest.md) | Payload to bulk rate card operations |  |

### Return type

[**BulkRateCardOperationsResponse**](BulkRateCardOperationsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_price_plan_v2

> <PricePlanV2> create_price_plan_v2(create_price_plan_v2_request, opts)

Create a price plan

Create a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
create_price_plan_v2_request = TogaiClient::CreatePricePlanV2Request.new({name: 'name_example', type: TogaiClient::PricePlanType::BILLING, supported_currencies: ['supported_currencies_example']}) # CreatePricePlanV2Request | Payload to create price plan
opts = {
  source_price_plan_id: 'pp.1zYnCiM9Bpg.lv25y' # String | The source price plan id to be used as a reference for creating a new price plan. This is optional and can be used to copy the pricing rules and rate cards from the source price plan. 
}

begin
  # Create a price plan
  result = api_instance.create_price_plan_v2(create_price_plan_v2_request, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->create_price_plan_v2: #{e}"
end
```

#### Using the create_price_plan_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlanV2>, Integer, Hash)> create_price_plan_v2_with_http_info(create_price_plan_v2_request, opts)

```ruby
begin
  # Create a price plan
  data, status_code, headers = api_instance.create_price_plan_v2_with_http_info(create_price_plan_v2_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlanV2>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->create_price_plan_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_price_plan_v2_request** | [**CreatePricePlanV2Request**](CreatePricePlanV2Request.md) | Payload to create price plan |  |
| **source_price_plan_id** | **String** | The source price plan id to be used as a reference for creating a new price plan. This is optional and can be used to copy the pricing rules and rate cards from the source price plan.  | [optional] |

### Return type

[**PricePlanV2**](PricePlanV2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## discard_price_plan

> <BaseSuccessResponse> discard_price_plan(price_plan_id)

Discard a price plan

Discard a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 

begin
  # Discard a price plan
  result = api_instance.discard_price_plan(price_plan_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->discard_price_plan: #{e}"
end
```

#### Using the discard_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> discard_price_plan_with_http_info(price_plan_id)

```ruby
begin
  # Discard a price plan
  data, status_code, headers = api_instance.discard_price_plan_with_http_info(price_plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->discard_price_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## finalize_price_plan

> <BaseSuccessResponse> finalize_price_plan(price_plan_id, finalize_price_plan_request)

Finalize a price plan

Finalize a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
finalize_price_plan_request = TogaiClient::FinalizePricePlanRequest.new # FinalizePricePlanRequest | Payload to finalize price plan

begin
  # Finalize a price plan
  result = api_instance.finalize_price_plan(price_plan_id, finalize_price_plan_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->finalize_price_plan: #{e}"
end
```

#### Using the finalize_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> finalize_price_plan_with_http_info(price_plan_id, finalize_price_plan_request)

```ruby
begin
  # Finalize a price plan
  data, status_code, headers = api_instance.finalize_price_plan_with_http_info(price_plan_id, finalize_price_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->finalize_price_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **finalize_price_plan_request** | [**FinalizePricePlanRequest**](FinalizePricePlanRequest.md) | Payload to finalize price plan |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_price_plan_v2

> <PricePlanV2> get_price_plan_v2(price_plan_id, opts)

Get a price plan

Get a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
opts = {
  version: 'version_example' # String | Optional version to get a specific version. Gets latest version if it is not provided. Possible values: 1. LATEST - Get the latest version of the price plan, can be draft 2. ACTIVE - Get the latest active version of the price plan 3. NUMBER - Get the specific version of the price plans 
}

begin
  # Get a price plan
  result = api_instance.get_price_plan_v2(price_plan_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->get_price_plan_v2: #{e}"
end
```

#### Using the get_price_plan_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlanV2>, Integer, Hash)> get_price_plan_v2_with_http_info(price_plan_id, opts)

```ruby
begin
  # Get a price plan
  data, status_code, headers = api_instance.get_price_plan_v2_with_http_info(price_plan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlanV2>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->get_price_plan_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **version** | **String** | Optional version to get a specific version. Gets latest version if it is not provided. Possible values: 1. LATEST - Get the latest version of the price plan, can be draft 2. ACTIVE - Get the latest active version of the price plan 3. NUMBER - Get the specific version of the price plans  | [optional] |

### Return type

[**PricePlanV2**](PricePlanV2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_price_plan_errors

> <ValidatedEntityErrorsPaginatedResponse> list_price_plan_errors(price_plan_id)

Get list of errors of a price plan

Get list of errors of a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 

begin
  # Get list of errors of a price plan
  result = api_instance.list_price_plan_errors(price_plan_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->list_price_plan_errors: #{e}"
end
```

#### Using the list_price_plan_errors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidatedEntityErrorsPaginatedResponse>, Integer, Hash)> list_price_plan_errors_with_http_info(price_plan_id)

```ruby
begin
  # Get list of errors of a price plan
  data, status_code, headers = api_instance.list_price_plan_errors_with_http_info(price_plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidatedEntityErrorsPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->list_price_plan_errors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |

### Return type

[**ValidatedEntityErrorsPaginatedResponse**](ValidatedEntityErrorsPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_price_plan_pricing_rules

> <PricingRulesPaginatedResponse> list_price_plan_pricing_rules(price_plan_id, opts)

List pricing rules of a price plan

List pricing rules of a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
opts = {
  version: 'version_example' # String | Optional version to get a specific version. Gets latest version if it is not provided. Possible values: 1. LATEST - Get the latest version of the price plan, can be draft 2. ACTIVE - Get the latest active version of the price plan 3. NUMBER - Get the specific version of the price plans 
}

begin
  # List pricing rules of a price plan
  result = api_instance.list_price_plan_pricing_rules(price_plan_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->list_price_plan_pricing_rules: #{e}"
end
```

#### Using the list_price_plan_pricing_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricingRulesPaginatedResponse>, Integer, Hash)> list_price_plan_pricing_rules_with_http_info(price_plan_id, opts)

```ruby
begin
  # List pricing rules of a price plan
  data, status_code, headers = api_instance.list_price_plan_pricing_rules_with_http_info(price_plan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricingRulesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->list_price_plan_pricing_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **version** | **String** | Optional version to get a specific version. Gets latest version if it is not provided. Possible values: 1. LATEST - Get the latest version of the price plan, can be draft 2. ACTIVE - Get the latest active version of the price plan 3. NUMBER - Get the specific version of the price plans  | [optional] |

### Return type

[**PricingRulesPaginatedResponse**](PricingRulesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_price_plan_rate_cards

> <RateCardPaginatedResponse> list_price_plan_rate_cards(price_plan_id, opts)

List rate cards of a price plan

List rate cards of a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List rate cards of a price plan
  result = api_instance.list_price_plan_rate_cards(price_plan_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->list_price_plan_rate_cards: #{e}"
end
```

#### Using the list_price_plan_rate_cards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RateCardPaginatedResponse>, Integer, Hash)> list_price_plan_rate_cards_with_http_info(price_plan_id, opts)

```ruby
begin
  # List rate cards of a price plan
  data, status_code, headers = api_instance.list_price_plan_rate_cards_with_http_info(price_plan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RateCardPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->list_price_plan_rate_cards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**RateCardPaginatedResponse**](RateCardPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_price_plan_versions

> <PricePlanV2PaginatedResponse> list_price_plan_versions(price_plan_id, opts)

List price plan versions

List price plan versions

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List price plan versions
  result = api_instance.list_price_plan_versions(price_plan_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->list_price_plan_versions: #{e}"
end
```

#### Using the list_price_plan_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlanV2PaginatedResponse>, Integer, Hash)> list_price_plan_versions_with_http_info(price_plan_id, opts)

```ruby
begin
  # List price plan versions
  data, status_code, headers = api_instance.list_price_plan_versions_with_http_info(price_plan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlanV2PaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->list_price_plan_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**PricePlanV2PaginatedResponse**](PricePlanV2PaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_price_plans_v2

> <PricePlanV2PaginatedResponse> list_price_plans_v2(opts)

List price plans

List price plans

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List price plans
  result = api_instance.list_price_plans_v2(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->list_price_plans_v2: #{e}"
end
```

#### Using the list_price_plans_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlanV2PaginatedResponse>, Integer, Hash)> list_price_plans_v2_with_http_info(opts)

```ruby
begin
  # List price plans
  data, status_code, headers = api_instance.list_price_plans_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlanV2PaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->list_price_plans_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**PricePlanV2PaginatedResponse**](PricePlanV2PaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## price_plan_migration_v2

> <BaseSuccessResponse> price_plan_migration_v2(create_price_plan_migration_request)

Create a price plan v2 migration

Migrates accounts across price plans. This is an asynchronous process functioning on top of Togai's Jobs  framework. Status of the created migrations can be obtained using the [Jobs APIs](https://docs.togai.com/api-reference/jobs/get-the-status-of-a-job) 

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
create_price_plan_migration_request = TogaiClient::CreatePricePlanMigrationRequest.new({source_id: 'source_id_example', source_version: 37, migration_mode: 'IMMEDIATE'}) # CreatePricePlanMigrationRequest | Payload to create price plan migration request

begin
  # Create a price plan v2 migration
  result = api_instance.price_plan_migration_v2(create_price_plan_migration_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->price_plan_migration_v2: #{e}"
end
```

#### Using the price_plan_migration_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> price_plan_migration_v2_with_http_info(create_price_plan_migration_request)

```ruby
begin
  # Create a price plan v2 migration
  data, status_code, headers = api_instance.price_plan_migration_v2_with_http_info(create_price_plan_migration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->price_plan_migration_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_price_plan_migration_request** | [**CreatePricePlanMigrationRequest**](CreatePricePlanMigrationRequest.md) | Payload to create price plan migration request |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_price_plan_pricing_rules

> <PricingRulesPaginatedResponse> update_price_plan_pricing_rules(price_plan_id, update_pricing_rules_request)

Update pricing rules of a price plan

Update pricing rules of a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
update_pricing_rules_request = TogaiClient::UpdatePricingRulesRequest.new # UpdatePricingRulesRequest | Payload to update pricing rules

begin
  # Update pricing rules of a price plan
  result = api_instance.update_price_plan_pricing_rules(price_plan_id, update_pricing_rules_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->update_price_plan_pricing_rules: #{e}"
end
```

#### Using the update_price_plan_pricing_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricingRulesPaginatedResponse>, Integer, Hash)> update_price_plan_pricing_rules_with_http_info(price_plan_id, update_pricing_rules_request)

```ruby
begin
  # Update pricing rules of a price plan
  data, status_code, headers = api_instance.update_price_plan_pricing_rules_with_http_info(price_plan_id, update_pricing_rules_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricingRulesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->update_price_plan_pricing_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **update_pricing_rules_request** | [**UpdatePricingRulesRequest**](UpdatePricingRulesRequest.md) | Payload to update pricing rules |  |

### Return type

[**PricingRulesPaginatedResponse**](PricingRulesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_price_plan_v2

> <PricePlanV2> update_price_plan_v2(price_plan_id, update_price_plan_v2_request)

Update a price plan

Update a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlanV2Api.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
update_price_plan_v2_request = TogaiClient::UpdatePricePlanV2Request.new # UpdatePricePlanV2Request | Payload to update price plan

begin
  # Update a price plan
  result = api_instance.update_price_plan_v2(price_plan_id, update_price_plan_v2_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->update_price_plan_v2: #{e}"
end
```

#### Using the update_price_plan_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlanV2>, Integer, Hash)> update_price_plan_v2_with_http_info(price_plan_id, update_price_plan_v2_request)

```ruby
begin
  # Update a price plan
  data, status_code, headers = api_instance.update_price_plan_v2_with_http_info(price_plan_id, update_price_plan_v2_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlanV2>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlanV2Api->update_price_plan_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **update_price_plan_v2_request** | [**UpdatePricePlanV2Request**](UpdatePricePlanV2Request.md) | Payload to update price plan |  |

### Return type

[**PricePlanV2**](PricePlanV2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

