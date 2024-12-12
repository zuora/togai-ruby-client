# TogaiClient::JobsApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**confirm_job**](JobsApi.md#confirm_job) | **POST** /jobs/{job_id}/confirm | Confirm a job |
| [**get_job_entries**](JobsApi.md#get_job_entries) | **GET** /jobs/{job_id}/entries | List job entries |
| [**get_job_status**](JobsApi.md#get_job_status) | **GET** /jobs/{job_id} | Get the status of a job |
| [**get_jobs**](JobsApi.md#get_jobs) | **GET** /jobs | List jobs |
| [**reject_job**](JobsApi.md#reject_job) | **POST** /jobs/{job_id}/reject | Reject a job |


## confirm_job

> <GetJobResponse> confirm_job(job_id)

Confirm a job

Confirm a job

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::JobsApi.new
job_id = 'mig.20aUyEZSuYq.SoGbS' # String | 

begin
  # Confirm a job
  result = api_instance.confirm_job(job_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling JobsApi->confirm_job: #{e}"
end
```

#### Using the confirm_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetJobResponse>, Integer, Hash)> confirm_job_with_http_info(job_id)

```ruby
begin
  # Confirm a job
  data, status_code, headers = api_instance.confirm_job_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetJobResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling JobsApi->confirm_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |

### Return type

[**GetJobResponse**](GetJobResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_job_entries

> <JobEntriesPaginatedResponse> get_job_entries(job_id)

List job entries

List individual job entries and current state of processing

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::JobsApi.new
job_id = 'mig.20aUyEZSuYq.SoGbS' # String | 

begin
  # List job entries
  result = api_instance.get_job_entries(job_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling JobsApi->get_job_entries: #{e}"
end
```

#### Using the get_job_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobEntriesPaginatedResponse>, Integer, Hash)> get_job_entries_with_http_info(job_id)

```ruby
begin
  # List job entries
  data, status_code, headers = api_instance.get_job_entries_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobEntriesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling JobsApi->get_job_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |

### Return type

[**JobEntriesPaginatedResponse**](JobEntriesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_job_status

> <GetJobResponse> get_job_status(job_id)

Get the status of a job

Get the status of a job

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::JobsApi.new
job_id = 'mig.20aUyEZSuYq.SoGbS' # String | 

begin
  # Get the status of a job
  result = api_instance.get_job_status(job_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling JobsApi->get_job_status: #{e}"
end
```

#### Using the get_job_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetJobResponse>, Integer, Hash)> get_job_status_with_http_info(job_id)

```ruby
begin
  # Get the status of a job
  data, status_code, headers = api_instance.get_job_status_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetJobResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling JobsApi->get_job_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |

### Return type

[**GetJobResponse**](GetJobResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_jobs

> <JobsPaginatedResponse> get_jobs(opts)

List jobs

Returns a list of jobs with pagination and sort.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::JobsApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List jobs
  result = api_instance.get_jobs(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling JobsApi->get_jobs: #{e}"
end
```

#### Using the get_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobsPaginatedResponse>, Integer, Hash)> get_jobs_with_http_info(opts)

```ruby
begin
  # List jobs
  data, status_code, headers = api_instance.get_jobs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobsPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling JobsApi->get_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**JobsPaginatedResponse**](JobsPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reject_job

> <GetJobResponse> reject_job(job_id)

Reject a job

Reject a job

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::JobsApi.new
job_id = 'mig.20aUyEZSuYq.SoGbS' # String | 

begin
  # Reject a job
  result = api_instance.reject_job(job_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling JobsApi->reject_job: #{e}"
end
```

#### Using the reject_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetJobResponse>, Integer, Hash)> reject_job_with_http_info(job_id)

```ruby
begin
  # Reject a job
  data, status_code, headers = api_instance.reject_job_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetJobResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling JobsApi->reject_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |

### Return type

[**GetJobResponse**](GetJobResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

