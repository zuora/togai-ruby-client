# TogaiClient::AliasesApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_alias**](AliasesApi.md#create_alias) | **POST** /aliases | Create an alias |
| [**delete_alias**](AliasesApi.md#delete_alias) | **DELETE** /aliases/{alias} | Delete an alias |
| [**get_alias**](AliasesApi.md#get_alias) | **GET** /aliases/{alias} | Get an alias |
| [**list_aliases**](AliasesApi.md#list_aliases) | **GET** /aliases | List all aliases |


## create_alias

> <AliasPaginatedResponse> create_alias(create_bulk_alias_request)

Create an alias

This API let’s you to create an alias

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AliasesApi.new
create_bulk_alias_request = TogaiClient::CreateBulkAliasRequest.new({aliases: [TogaiClient::CreateAliasRequest.new({value: 'value_example'})]}) # CreateBulkAliasRequest | Payload to create bulk aliases

begin
  # Create an alias
  result = api_instance.create_alias(create_bulk_alias_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AliasesApi->create_alias: #{e}"
end
```

#### Using the create_alias_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AliasPaginatedResponse>, Integer, Hash)> create_alias_with_http_info(create_bulk_alias_request)

```ruby
begin
  # Create an alias
  data, status_code, headers = api_instance.create_alias_with_http_info(create_bulk_alias_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AliasPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AliasesApi->create_alias_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_bulk_alias_request** | [**CreateBulkAliasRequest**](CreateBulkAliasRequest.md) | Payload to create bulk aliases |  |

### Return type

[**AliasPaginatedResponse**](AliasPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_alias

> <BaseSuccessResponse> delete_alias(_alias)

Delete an alias

This API let’s you to delete an alias using alias.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AliasesApi.new
_alias = 'custom_value' # String | 

begin
  # Delete an alias
  result = api_instance.delete_alias(_alias)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AliasesApi->delete_alias: #{e}"
end
```

#### Using the delete_alias_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> delete_alias_with_http_info(_alias)

```ruby
begin
  # Delete an alias
  data, status_code, headers = api_instance.delete_alias_with_http_info(_alias)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AliasesApi->delete_alias_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** |  |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alias

> <ModelAlias> get_alias(_alias)

Get an alias

Get alias information using alias.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AliasesApi.new
_alias = 'custom_value' # String | 

begin
  # Get an alias
  result = api_instance.get_alias(_alias)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AliasesApi->get_alias: #{e}"
end
```

#### Using the get_alias_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelAlias>, Integer, Hash)> get_alias_with_http_info(_alias)

```ruby
begin
  # Get an alias
  data, status_code, headers = api_instance.get_alias_with_http_info(_alias)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelAlias>
rescue TogaiClient::ApiError => e
  puts "Error when calling AliasesApi->get_alias_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** |  |  |

### Return type

[**ModelAlias**](ModelAlias.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_aliases

> <AliasPaginatedResponse> list_aliases(opts)

List all aliases

Returns a list of aliases with pagination and sort.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AliasesApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List all aliases
  result = api_instance.list_aliases(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AliasesApi->list_aliases: #{e}"
end
```

#### Using the list_aliases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AliasPaginatedResponse>, Integer, Hash)> list_aliases_with_http_info(opts)

```ruby
begin
  # List all aliases
  data, status_code, headers = api_instance.list_aliases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AliasPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AliasesApi->list_aliases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**AliasPaginatedResponse**](AliasPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

