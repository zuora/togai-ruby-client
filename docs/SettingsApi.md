# TogaiClient::SettingsApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_setting**](SettingsApi.md#get_setting) | **GET** /settings/{setting_id_str} | Get a setting |
| [**insert_setting**](SettingsApi.md#insert_setting) | **POST** /settings | Create a setting |
| [**list_setting**](SettingsApi.md#list_setting) | **GET** /settings | Lists settings |
| [**update_setting**](SettingsApi.md#update_setting) | **PATCH** /settings/{setting_id_str} | Update a setting |


## get_setting

> <Setting> get_setting(setting_id_str)

Get a setting

Get a setting

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SettingsApi.new
setting_id_str = 'setting.USER.success_threshold.ACCOUNT.G234DZZKBKACATFFGVGEMERFI' # String | 

begin
  # Get a setting
  result = api_instance.get_setting(setting_id_str)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SettingsApi->get_setting: #{e}"
end
```

#### Using the get_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Setting>, Integer, Hash)> get_setting_with_http_info(setting_id_str)

```ruby
begin
  # Get a setting
  data, status_code, headers = api_instance.get_setting_with_http_info(setting_id_str)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Setting>
rescue TogaiClient::ApiError => e
  puts "Error when calling SettingsApi->get_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setting_id_str** | **String** |  |  |

### Return type

[**Setting**](Setting.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## insert_setting

> <Setting> insert_setting(setting)

Create a setting

Create a setting

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SettingsApi.new
setting = TogaiClient::Setting.new({id: 'id_example', value: 'value_example', entity_type: 'entity_type_example', entity_id: 'entity_id_example', namespace: 'namespace_example', name: 'name_example', data_type: TogaiClient::SettingDataType::STRING}) # Setting | Payload to insert setting

begin
  # Create a setting
  result = api_instance.insert_setting(setting)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SettingsApi->insert_setting: #{e}"
end
```

#### Using the insert_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Setting>, Integer, Hash)> insert_setting_with_http_info(setting)

```ruby
begin
  # Create a setting
  data, status_code, headers = api_instance.insert_setting_with_http_info(setting)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Setting>
rescue TogaiClient::ApiError => e
  puts "Error when calling SettingsApi->insert_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setting** | [**Setting**](Setting.md) | Payload to insert setting |  |

### Return type

[**Setting**](Setting.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_setting

> <SettingPaginatedResponse> list_setting(opts)

Lists settings

List settings

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SettingsApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10, # Float | 
  entity_type: 'ACCOUNT', # String | 
  entity_id: 'acc_X1Df3sRf3', # String | 
  setting_id: 'setting_id_example', # String | 
  namespace: 'USER' # String | 
}

begin
  # Lists settings
  result = api_instance.list_setting(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SettingsApi->list_setting: #{e}"
end
```

#### Using the list_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingPaginatedResponse>, Integer, Hash)> list_setting_with_http_info(opts)

```ruby
begin
  # Lists settings
  data, status_code, headers = api_instance.list_setting_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling SettingsApi->list_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |
| **entity_type** | **String** |  | [optional] |
| **entity_id** | **String** |  | [optional] |
| **setting_id** | **String** |  | [optional] |
| **namespace** | **String** |  | [optional] |

### Return type

[**SettingPaginatedResponse**](SettingPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_setting

> <Setting> update_setting(setting_id_str, update_setting_request)

Update a setting

Update a setting

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::SettingsApi.new
setting_id_str = 'setting.USER.success_threshold.ACCOUNT.G234DZZKBKACATFFGVGEMERFI' # String | 
update_setting_request = TogaiClient::UpdateSettingRequest.new # UpdateSettingRequest | Payload to update setting

begin
  # Update a setting
  result = api_instance.update_setting(setting_id_str, update_setting_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling SettingsApi->update_setting: #{e}"
end
```

#### Using the update_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Setting>, Integer, Hash)> update_setting_with_http_info(setting_id_str, update_setting_request)

```ruby
begin
  # Update a setting
  data, status_code, headers = api_instance.update_setting_with_http_info(setting_id_str, update_setting_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Setting>
rescue TogaiClient::ApiError => e
  puts "Error when calling SettingsApi->update_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setting_id_str** | **String** |  |  |
| **update_setting_request** | [**UpdateSettingRequest**](UpdateSettingRequest.md) | Payload to update setting |  |

### Return type

[**Setting**](Setting.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

