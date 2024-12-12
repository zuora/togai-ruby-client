# TogaiClient::PricePlansApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_price_plan**](PricePlansApi.md#activate_price_plan) | **POST** /price_plans/{price_plan_id}/activate | (DEPRECATED) Activate a price plan |
| [**archive_price_plan**](PricePlansApi.md#archive_price_plan) | **DELETE** /price_plans/{price_plan_id} | (DEPRECATED) Archive a price plan |
| [**create_price_plan**](PricePlansApi.md#create_price_plan) | **POST** /price_plans | (DEPRECATED) Create a price plan |
| [**get_price_plan**](PricePlansApi.md#get_price_plan) | **GET** /price_plans/{price_plan_id} | (DEPRECATED) Get a price plan |
| [**get_price_plans**](PricePlansApi.md#get_price_plans) | **GET** /price_plans | (DEPRECATED) List price plans |
| [**price_plan_migration**](PricePlansApi.md#price_plan_migration) | **POST** /price_plans/migration | (DEPRECATED) Create a price plan migration |
| [**update_price_plan**](PricePlansApi.md#update_price_plan) | **PATCH** /price_plans/{price_plan_id} | (DEPRECATED) Update a price plan |


## activate_price_plan

> <PricePlan> activate_price_plan(price_plan_id, activate_price_plan_request)

(DEPRECATED) Activate a price plan

Activate a price plan details using price plan id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlansApi.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
activate_price_plan_request = TogaiClient::ActivatePricePlanRequest.new({currencies: ['currencies_example']}) # ActivatePricePlanRequest | Payload to activate price plan

begin
  # (DEPRECATED) Activate a price plan
  result = api_instance.activate_price_plan(price_plan_id, activate_price_plan_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->activate_price_plan: #{e}"
end
```

#### Using the activate_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlan>, Integer, Hash)> activate_price_plan_with_http_info(price_plan_id, activate_price_plan_request)

```ruby
begin
  # (DEPRECATED) Activate a price plan
  data, status_code, headers = api_instance.activate_price_plan_with_http_info(price_plan_id, activate_price_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlan>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->activate_price_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **activate_price_plan_request** | [**ActivatePricePlanRequest**](ActivatePricePlanRequest.md) | Payload to activate price plan |  |

### Return type

[**PricePlan**](PricePlan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## archive_price_plan

> <BaseSuccessResponse> archive_price_plan(price_plan_id)

(DEPRECATED) Archive a price plan

Archive a price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlansApi.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 

begin
  # (DEPRECATED) Archive a price plan
  result = api_instance.archive_price_plan(price_plan_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->archive_price_plan: #{e}"
end
```

#### Using the archive_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> archive_price_plan_with_http_info(price_plan_id)

```ruby
begin
  # (DEPRECATED) Archive a price plan
  data, status_code, headers = api_instance.archive_price_plan_with_http_info(price_plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->archive_price_plan_with_http_info: #{e}"
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


## create_price_plan

> <PricePlan> create_price_plan(create_price_plan_request, opts)

(DEPRECATED) Create a price plan

This API let's you create and price plan Learn more about [Price Plans](https://docs.togai.com/docs/priceplan) 

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlansApi.new
create_price_plan_request = TogaiClient::CreatePricePlanRequest.new({name: 'name_example', price_plan_details: TogaiClient::CreatePricePlanDetails.new({supported_currencies: ['supported_currencies_example']})}) # CreatePricePlanRequest | Payload to create price plan
opts = {
  dry_run: false # Boolean | 
}

begin
  # (DEPRECATED) Create a price plan
  result = api_instance.create_price_plan(create_price_plan_request, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->create_price_plan: #{e}"
end
```

#### Using the create_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlan>, Integer, Hash)> create_price_plan_with_http_info(create_price_plan_request, opts)

```ruby
begin
  # (DEPRECATED) Create a price plan
  data, status_code, headers = api_instance.create_price_plan_with_http_info(create_price_plan_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlan>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->create_price_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_price_plan_request** | [**CreatePricePlanRequest**](CreatePricePlanRequest.md) | Payload to create price plan |  |
| **dry_run** | **Boolean** |  | [optional] |

### Return type

[**PricePlan**](PricePlan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_price_plan

> <PricePlan> get_price_plan(price_plan_id, opts)

(DEPRECATED) Get a price plan

Get a price plan details using price plan id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlansApi.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
opts = {
  version: 2 # Integer | Optional version to get a specific version. Gets latest version if it is not provided.
}

begin
  # (DEPRECATED) Get a price plan
  result = api_instance.get_price_plan(price_plan_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->get_price_plan: #{e}"
end
```

#### Using the get_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlan>, Integer, Hash)> get_price_plan_with_http_info(price_plan_id, opts)

```ruby
begin
  # (DEPRECATED) Get a price plan
  data, status_code, headers = api_instance.get_price_plan_with_http_info(price_plan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlan>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->get_price_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **version** | **Integer** | Optional version to get a specific version. Gets latest version if it is not provided. | [optional] |

### Return type

[**PricePlan**](PricePlan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_price_plans

> <PricePlanPaginatedResponse> get_price_plans(opts)

(DEPRECATED) List price plans

Get a list of price plans

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlansApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # (DEPRECATED) List price plans
  result = api_instance.get_price_plans(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->get_price_plans: #{e}"
end
```

#### Using the get_price_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlanPaginatedResponse>, Integer, Hash)> get_price_plans_with_http_info(opts)

```ruby
begin
  # (DEPRECATED) List price plans
  data, status_code, headers = api_instance.get_price_plans_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlanPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->get_price_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**PricePlanPaginatedResponse**](PricePlanPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## price_plan_migration

> <BaseSuccessResponse> price_plan_migration(create_price_plan_migration_request)

(DEPRECATED) Create a price plan migration

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

api_instance = TogaiClient::PricePlansApi.new
create_price_plan_migration_request = TogaiClient::CreatePricePlanMigrationRequest.new({source_id: 'source_id_example', source_version: 37, migration_mode: 'IMMEDIATE'}) # CreatePricePlanMigrationRequest | Payload to create price plan migration request

begin
  # (DEPRECATED) Create a price plan migration
  result = api_instance.price_plan_migration(create_price_plan_migration_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->price_plan_migration: #{e}"
end
```

#### Using the price_plan_migration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> price_plan_migration_with_http_info(create_price_plan_migration_request)

```ruby
begin
  # (DEPRECATED) Create a price plan migration
  data, status_code, headers = api_instance.price_plan_migration_with_http_info(create_price_plan_migration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->price_plan_migration_with_http_info: #{e}"
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


## update_price_plan

> <PricePlan> update_price_plan(price_plan_id, update_price_plan_request)

(DEPRECATED) Update a price plan

Update an existing price plan Price Plans with status as DRAFT alone can be updated . Learn more about [Price plans](https://docs.togai.com/docs/priceplan) from our Guides 

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricePlansApi.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
update_price_plan_request = TogaiClient::UpdatePricePlanRequest.new # UpdatePricePlanRequest | Payload to update price plan

begin
  # (DEPRECATED) Update a price plan
  result = api_instance.update_price_plan(price_plan_id, update_price_plan_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->update_price_plan: #{e}"
end
```

#### Using the update_price_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricePlan>, Integer, Hash)> update_price_plan_with_http_info(price_plan_id, update_price_plan_request)

```ruby
begin
  # (DEPRECATED) Update a price plan
  data, status_code, headers = api_instance.update_price_plan_with_http_info(price_plan_id, update_price_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricePlan>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricePlansApi->update_price_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **update_price_plan_request** | [**UpdatePricePlanRequest**](UpdatePricePlanRequest.md) | Payload to update price plan |  |

### Return type

[**PricePlan**](PricePlan.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

