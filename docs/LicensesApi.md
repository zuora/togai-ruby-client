# TogaiClient::LicensesApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_license_update_entry**](LicensesApi.md#add_license_update_entry) | **POST** /license_updates | Update a license entry |
| [**get_license_updates**](LicensesApi.md#get_license_updates) | **GET** /license_updates | Get a list of licenses updates |
| [**get_named_license_updates**](LicensesApi.md#get_named_license_updates) | **GET** /named_license_updates | Get a list of named licenses updates |
| [**update_license_entry_details**](LicensesApi.md#update_license_entry_details) | **PATCH** /license_updates/{license_id} | Update a license entry details |


## add_license_update_entry

> <LicenseUpdateResponse> add_license_update_entry(opts)

Update a license entry

This API let’s you to add a license entry

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::LicensesApi.new
opts = {
  license_update_request: TogaiClient::LicenseUpdateRequest.new({license_id: 'lic.fdjsl.313', account_id: 'acc.fdjsl.313', update_type: 'RELATIVE', quantity: 3.56}) # LicenseUpdateRequest | 
}

begin
  # Update a license entry
  result = api_instance.add_license_update_entry(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling LicensesApi->add_license_update_entry: #{e}"
end
```

#### Using the add_license_update_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LicenseUpdateResponse>, Integer, Hash)> add_license_update_entry_with_http_info(opts)

```ruby
begin
  # Update a license entry
  data, status_code, headers = api_instance.add_license_update_entry_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LicenseUpdateResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling LicensesApi->add_license_update_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_update_request** | [**LicenseUpdateRequest**](LicenseUpdateRequest.md) |  | [optional] |

### Return type

[**LicenseUpdateResponse**](LicenseUpdateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_license_updates

> <GetLicenseUpdatesResponse> get_license_updates(opts)

Get a list of licenses updates

This API let’s you to fetch a list of licenses updates with multiple query parameters

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::LicensesApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | Pagination token used as a marker to get records from next page.
  account_id: '1234', # String | Filter option to filter based on account id.
  page_size: 10, # Integer | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
  license_id: 'addon.1zYnCiM9Bpg.1zYn', # String | License Id to filter
  effective_from: Time.parse('2021-03-04T14:25:10Z') # Time | effectiveFrom to filter
}

begin
  # Get a list of licenses updates
  result = api_instance.get_license_updates(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling LicensesApi->get_license_updates: #{e}"
end
```

#### Using the get_license_updates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLicenseUpdatesResponse>, Integer, Hash)> get_license_updates_with_http_info(opts)

```ruby
begin
  # Get a list of licenses updates
  data, status_code, headers = api_instance.get_license_updates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLicenseUpdatesResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling LicensesApi->get_license_updates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** | Pagination token used as a marker to get records from next page. | [optional] |
| **account_id** | **String** | Filter option to filter based on account id. | [optional] |
| **page_size** | **Integer** | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided. | [optional] |
| **license_id** | **String** | License Id to filter | [optional] |
| **effective_from** | **Time** | effectiveFrom to filter | [optional] |

### Return type

[**GetLicenseUpdatesResponse**](GetLicenseUpdatesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_named_license_updates

> <NamedLicenseUpdatesPaginatedResponse> get_named_license_updates

Get a list of named licenses updates

This API let’s you to fetch a list of named licenses updates with multiple query parameters

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::LicensesApi.new

begin
  # Get a list of named licenses updates
  result = api_instance.get_named_license_updates
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling LicensesApi->get_named_license_updates: #{e}"
end
```

#### Using the get_named_license_updates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NamedLicenseUpdatesPaginatedResponse>, Integer, Hash)> get_named_license_updates_with_http_info

```ruby
begin
  # Get a list of named licenses updates
  data, status_code, headers = api_instance.get_named_license_updates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NamedLicenseUpdatesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling LicensesApi->get_named_license_updates_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**NamedLicenseUpdatesPaginatedResponse**](NamedLicenseUpdatesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_license_entry_details

> <LicenseUpdateResponse> update_license_entry_details(opts)

Update a license entry details

This API let’s you to update metadata of a license entry

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::LicensesApi.new
opts = {
  license_id: 'addon.1zYnCiM9Bpg.1zYn', # String | License Id to filter
  license_entry_details_update_request: TogaiClient::LicenseEntryDetailsUpdateRequest.new({account_id: 'acc.fdjsl.313', effective_from: Time.parse('2021-03-04T14:25:10Z'), metadata: { key: 'inner_example'}}) # LicenseEntryDetailsUpdateRequest | 
}

begin
  # Update a license entry details
  result = api_instance.update_license_entry_details(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling LicensesApi->update_license_entry_details: #{e}"
end
```

#### Using the update_license_entry_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LicenseUpdateResponse>, Integer, Hash)> update_license_entry_details_with_http_info(opts)

```ruby
begin
  # Update a license entry details
  data, status_code, headers = api_instance.update_license_entry_details_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LicenseUpdateResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling LicensesApi->update_license_entry_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_id** | **String** | License Id to filter | [optional] |
| **license_entry_details_update_request** | [**LicenseEntryDetailsUpdateRequest**](LicenseEntryDetailsUpdateRequest.md) |  | [optional] |

### Return type

[**LicenseUpdateResponse**](LicenseUpdateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

