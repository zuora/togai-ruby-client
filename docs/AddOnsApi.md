# TogaiClient::AddOnsApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_add_on**](AddOnsApi.md#create_add_on) | **POST** /addons | Create an AddOn |
| [**delete_add_on**](AddOnsApi.md#delete_add_on) | **DELETE** /addons/{addon_id} | Delete an addon |
| [**get_add_on**](AddOnsApi.md#get_add_on) | **GET** /addons/{addon_id} | Get an addon |
| [**get_add_ons**](AddOnsApi.md#get_add_ons) | **GET** /addons | List addOns |
| [**update_add_on**](AddOnsApi.md#update_add_on) | **PATCH** /addons/{addon_id} | Update an addon |


## create_add_on

> <AddOn> create_add_on(create_add_on_request)

Create an AddOn

Create an AddOn

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AddOnsApi.new
create_add_on_request = TogaiClient::CreateAddOnRequest.new({name: 'name_example', type: TogaiClient::AddOnType::LICENSE}) # CreateAddOnRequest | Payload to create addon

begin
  # Create an AddOn
  result = api_instance.create_add_on(create_add_on_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AddOnsApi->create_add_on: #{e}"
end
```

#### Using the create_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOn>, Integer, Hash)> create_add_on_with_http_info(create_add_on_request)

```ruby
begin
  # Create an AddOn
  data, status_code, headers = api_instance.create_add_on_with_http_info(create_add_on_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOn>
rescue TogaiClient::ApiError => e
  puts "Error when calling AddOnsApi->create_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_add_on_request** | [**CreateAddOnRequest**](CreateAddOnRequest.md) | Payload to create addon |  |

### Return type

[**AddOn**](AddOn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_add_on

> <BaseSuccessResponse> delete_add_on(addon_id)

Delete an addon

Archive an addOn

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AddOnsApi.new
addon_id = 'addon.1zYnCiM9Bpg.lv25y' # String | 

begin
  # Delete an addon
  result = api_instance.delete_add_on(addon_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AddOnsApi->delete_add_on: #{e}"
end
```

#### Using the delete_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> delete_add_on_with_http_info(addon_id)

```ruby
begin
  # Delete an addon
  data, status_code, headers = api_instance.delete_add_on_with_http_info(addon_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AddOnsApi->delete_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addon_id** | **String** |  |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_add_on

> <AddOn> get_add_on(addon_id)

Get an addon

Get details of an addon

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AddOnsApi.new
addon_id = 'addon.1zYnCiM9Bpg.lv25y' # String | 

begin
  # Get an addon
  result = api_instance.get_add_on(addon_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AddOnsApi->get_add_on: #{e}"
end
```

#### Using the get_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOn>, Integer, Hash)> get_add_on_with_http_info(addon_id)

```ruby
begin
  # Get an addon
  data, status_code, headers = api_instance.get_add_on_with_http_info(addon_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOn>
rescue TogaiClient::ApiError => e
  puts "Error when calling AddOnsApi->get_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addon_id** | **String** |  |  |

### Return type

[**AddOn**](AddOn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_add_ons

> <AddOnPaginatedResponse> get_add_ons(opts)

List addOns

Get a list of add-ons

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AddOnsApi.new
opts = {
  status: 'ACTIVE', # String | Filter by status 
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List addOns
  result = api_instance.get_add_ons(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AddOnsApi->get_add_ons: #{e}"
end
```

#### Using the get_add_ons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOnPaginatedResponse>, Integer, Hash)> get_add_ons_with_http_info(opts)

```ruby
begin
  # List addOns
  data, status_code, headers = api_instance.get_add_ons_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOnPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AddOnsApi->get_add_ons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter by status  | [optional] |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**AddOnPaginatedResponse**](AddOnPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_add_on

> <AddOn> update_add_on(addon_id, update_add_on_request)

Update an addon

Update an existing addon 

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AddOnsApi.new
addon_id = 'addon.1zYnCiM9Bpg.lv25y' # String | 
update_add_on_request = TogaiClient::UpdateAddOnRequest.new # UpdateAddOnRequest | Payload to update addon

begin
  # Update an addon
  result = api_instance.update_add_on(addon_id, update_add_on_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AddOnsApi->update_add_on: #{e}"
end
```

#### Using the update_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOn>, Integer, Hash)> update_add_on_with_http_info(addon_id, update_add_on_request)

```ruby
begin
  # Update an addon
  data, status_code, headers = api_instance.update_add_on_with_http_info(addon_id, update_add_on_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOn>
rescue TogaiClient::ApiError => e
  puts "Error when calling AddOnsApi->update_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addon_id** | **String** |  |  |
| **update_add_on_request** | [**UpdateAddOnRequest**](UpdateAddOnRequest.md) | Payload to update addon |  |

### Return type

[**AddOn**](AddOn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

