# TogaiClient::UsageMetersApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_usage_meter**](UsageMetersApi.md#activate_usage_meter) | **POST** /usage_meters/{usage_meter_id}/activate | Activate usage meter |
| [**create_usage_meter**](UsageMetersApi.md#create_usage_meter) | **POST** /usage_meters | Create an usage meter |
| [**deactivate_usage_meter**](UsageMetersApi.md#deactivate_usage_meter) | **POST** /usage_meters/{usage_meter_id}/deactivate | Deactivate usage meter |
| [**delete_usage_meter**](UsageMetersApi.md#delete_usage_meter) | **DELETE** /usage_meters/{usage_meter_id} | Delete an Usage Meter |
| [**get_usage_meter**](UsageMetersApi.md#get_usage_meter) | **GET** /usage_meters/{usage_meter_id} | Get usage meter |
| [**get_usage_meters_for_event_schema**](UsageMetersApi.md#get_usage_meters_for_event_schema) | **GET** /usage_meters | List usage meters for event schema |
| [**update_usage_meter**](UsageMetersApi.md#update_usage_meter) | **PATCH** /usage_meters/{usage_meter_id} | Update an usage meter |


## activate_usage_meter

> <UsageMeter> activate_usage_meter(usage_meter_id)

Activate usage meter

Activate usage meter

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
usage_meter_id = 'um.1zYnCiM9Bpg.1zYn' # String | 

begin
  # Activate usage meter
  result = api_instance.activate_usage_meter(usage_meter_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->activate_usage_meter: #{e}"
end
```

#### Using the activate_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeter>, Integer, Hash)> activate_usage_meter_with_http_info(usage_meter_id)

```ruby
begin
  # Activate usage meter
  data, status_code, headers = api_instance.activate_usage_meter_with_http_info(usage_meter_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeter>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->activate_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage_meter_id** | **String** |  |  |

### Return type

[**UsageMeter**](UsageMeter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_usage_meter

> <UsageMeter> create_usage_meter(create_usage_meter_request)

Create an usage meter

Create an usage meter and associate with an event schema

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
create_usage_meter_request = TogaiClient::CreateUsageMeterRequest.new({name: 'name_example', type: 'COUNTER', aggregation: TogaiClient::UsageMeterAggregation::COUNT}) # CreateUsageMeterRequest | Payload to create usage meter

begin
  # Create an usage meter
  result = api_instance.create_usage_meter(create_usage_meter_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->create_usage_meter: #{e}"
end
```

#### Using the create_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeter>, Integer, Hash)> create_usage_meter_with_http_info(create_usage_meter_request)

```ruby
begin
  # Create an usage meter
  data, status_code, headers = api_instance.create_usage_meter_with_http_info(create_usage_meter_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeter>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->create_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_usage_meter_request** | [**CreateUsageMeterRequest**](CreateUsageMeterRequest.md) | Payload to create usage meter |  |

### Return type

[**UsageMeter**](UsageMeter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deactivate_usage_meter

> <UsageMeter> deactivate_usage_meter(usage_meter_id)

Deactivate usage meter

Make an existing active usage meter to be inactive Active Usage Meters with active Pricing Plan attached can also be deactivated. 

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
usage_meter_id = 'um.1zYnCiM9Bpg.1zYn' # String | 

begin
  # Deactivate usage meter
  result = api_instance.deactivate_usage_meter(usage_meter_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->deactivate_usage_meter: #{e}"
end
```

#### Using the deactivate_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeter>, Integer, Hash)> deactivate_usage_meter_with_http_info(usage_meter_id)

```ruby
begin
  # Deactivate usage meter
  data, status_code, headers = api_instance.deactivate_usage_meter_with_http_info(usage_meter_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeter>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->deactivate_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage_meter_id** | **String** |  |  |

### Return type

[**UsageMeter**](UsageMeter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_usage_meter

> <BaseSuccessResponse> delete_usage_meter(usage_meter_id)

Delete an Usage Meter

Delete an Usage Meter

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
usage_meter_id = 'um.1zYnCiM9Bpg.1zYn' # String | 

begin
  # Delete an Usage Meter
  result = api_instance.delete_usage_meter(usage_meter_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->delete_usage_meter: #{e}"
end
```

#### Using the delete_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> delete_usage_meter_with_http_info(usage_meter_id)

```ruby
begin
  # Delete an Usage Meter
  data, status_code, headers = api_instance.delete_usage_meter_with_http_info(usage_meter_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->delete_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage_meter_id** | **String** |  |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_usage_meter

> <UsageMeter> get_usage_meter(usage_meter_id, opts)

Get usage meter

Get an usage meter using event schema name and usage meter id.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
usage_meter_id = 'um.1zYnCiM9Bpg.1zYn' # String | 
opts = {
  include_schema: true # Boolean | 
}

begin
  # Get usage meter
  result = api_instance.get_usage_meter(usage_meter_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->get_usage_meter: #{e}"
end
```

#### Using the get_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeter>, Integer, Hash)> get_usage_meter_with_http_info(usage_meter_id, opts)

```ruby
begin
  # Get usage meter
  data, status_code, headers = api_instance.get_usage_meter_with_http_info(usage_meter_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeter>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->get_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage_meter_id** | **String** |  |  |
| **include_schema** | **Boolean** |  | [optional] |

### Return type

[**UsageMeter**](UsageMeter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_usage_meters_for_event_schema

> <UsageMeterPaginatedResponse> get_usage_meters_for_event_schema(opts)

List usage meters for event schema

Get a list of usage meters associated with an event schema

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
opts = {
  status: 'ACTIVE', # String | Filter by status 
  aggregations: 'COUNT', # String | Filter by aggregations 
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List usage meters for event schema
  result = api_instance.get_usage_meters_for_event_schema(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->get_usage_meters_for_event_schema: #{e}"
end
```

#### Using the get_usage_meters_for_event_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeterPaginatedResponse>, Integer, Hash)> get_usage_meters_for_event_schema_with_http_info(opts)

```ruby
begin
  # List usage meters for event schema
  data, status_code, headers = api_instance.get_usage_meters_for_event_schema_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeterPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->get_usage_meters_for_event_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter by status  | [optional] |
| **aggregations** | **String** | Filter by aggregations  | [optional] |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**UsageMeterPaginatedResponse**](UsageMeterPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_usage_meter

> <UsageMeter> update_usage_meter(usage_meter_id, update_usage_meter_request)

Update an usage meter

This API lets you update an existing usage meter.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::UsageMetersApi.new
usage_meter_id = 'um.1zYnCiM9Bpg.1zYn' # String | 
update_usage_meter_request = TogaiClient::UpdateUsageMeterRequest.new # UpdateUsageMeterRequest | Payload to create usage meter

begin
  # Update an usage meter
  result = api_instance.update_usage_meter(usage_meter_id, update_usage_meter_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->update_usage_meter: #{e}"
end
```

#### Using the update_usage_meter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageMeter>, Integer, Hash)> update_usage_meter_with_http_info(usage_meter_id, update_usage_meter_request)

```ruby
begin
  # Update an usage meter
  data, status_code, headers = api_instance.update_usage_meter_with_http_info(usage_meter_id, update_usage_meter_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageMeter>
rescue TogaiClient::ApiError => e
  puts "Error when calling UsageMetersApi->update_usage_meter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage_meter_id** | **String** |  |  |
| **update_usage_meter_request** | [**UpdateUsageMeterRequest**](UpdateUsageMeterRequest.md) | Payload to create usage meter |  |

### Return type

[**UsageMeter**](UsageMeter.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

