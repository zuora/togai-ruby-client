# TogaiClient::FileStorageApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_download_url**](FileStorageApi.md#get_download_url) | **GET** /files/{file_id}/download_url | Get a download url for a file |
| [**get_file**](FileStorageApi.md#get_file) | **GET** /files/{file_id} | Get a file |


## get_download_url

> <FileDownloadUrlResponse> get_download_url(file_id, opts)

Get a download url for a file

Get a download url for a file

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::FileStorageApi.new
file_id = 'file.20aUyEZSuYq.SoGbS' # String | 
opts = {
  expiry: 300 # Integer | 
}

begin
  # Get a download url for a file
  result = api_instance.get_download_url(file_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling FileStorageApi->get_download_url: #{e}"
end
```

#### Using the get_download_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDownloadUrlResponse>, Integer, Hash)> get_download_url_with_http_info(file_id, opts)

```ruby
begin
  # Get a download url for a file
  data, status_code, headers = api_instance.get_download_url_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDownloadUrlResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling FileStorageApi->get_download_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** |  |  |
| **expiry** | **Integer** |  | [optional] |

### Return type

[**FileDownloadUrlResponse**](FileDownloadUrlResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file

> <ErrorResponse> get_file(file_id)

Get a file

Get a file

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::FileStorageApi.new
file_id = 'file.20aUyEZSuYq.SoGbS' # String | 

begin
  # Get a file
  result = api_instance.get_file(file_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling FileStorageApi->get_file: #{e}"
end
```

#### Using the get_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorResponse>, Integer, Hash)> get_file_with_http_info(file_id)

```ruby
begin
  # Get a file
  data, status_code, headers = api_instance.get_file_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling FileStorageApi->get_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** |  |  |

### Return type

[**ErrorResponse**](ErrorResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

