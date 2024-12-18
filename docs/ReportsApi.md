# TogaiClient::ReportsApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_reports**](ReportsApi.md#list_reports) | **GET** /reports | List reports |


## list_reports

> <ReportsPaginatedResponse> list_reports(opts)

List reports

List reports

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::ReportsApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10, # Float | 
  fetch_for: 'ALL' # String | Fetch for flag used to get the reports from: 1. ALL: Both the organization and accounts 2. ORGANIZATION: Only the organization 3. ACCOUNTS: Only accounts, works with account_id filter only. 
}

begin
  # List reports
  result = api_instance.list_reports(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling ReportsApi->list_reports: #{e}"
end
```

#### Using the list_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportsPaginatedResponse>, Integer, Hash)> list_reports_with_http_info(opts)

```ruby
begin
  # List reports
  data, status_code, headers = api_instance.list_reports_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportsPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling ReportsApi->list_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |
| **fetch_for** | **String** | Fetch for flag used to get the reports from: 1. ALL: Both the organization and accounts 2. ORGANIZATION: Only the organization 3. ACCOUNTS: Only accounts, works with account_id filter only.  | [optional][default to &#39;ORGANIZATION&#39;] |

### Return type

[**ReportsPaginatedResponse**](ReportsPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

