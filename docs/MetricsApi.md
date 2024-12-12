# TogaiClient::MetricsApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_metrics**](MetricsApi.md#get_metrics) | **POST** /metrics | Get Togai Metrics |


## get_metrics

> <GetMetricsResponse> get_metrics(opts)

Get Togai Metrics

Togai Metrics API allows you to fetch different metrics from Events, Usage Meters and PricePlans with multiple queryable options. A single request can query up to five metrics.  Single response can contain a maximum of 300 data points. 

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::MetricsApi.new
opts = {
  get_metrics_request: TogaiClient::GetMetricsRequest.new({start_time: Time.parse('2017-07-21T00:00Z'), end_time: Time.parse('2017-07-21T00:00Z'), metric_queries: [TogaiClient::MetricQuery.new({id: 'id_example', name: TogaiClient::MetricName::EVENTS, aggregation_period: 'HOUR'})]}) # GetMetricsRequest | 
}

begin
  # Get Togai Metrics
  result = api_instance.get_metrics(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling MetricsApi->get_metrics: #{e}"
end
```

#### Using the get_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMetricsResponse>, Integer, Hash)> get_metrics_with_http_info(opts)

```ruby
begin
  # Get Togai Metrics
  data, status_code, headers = api_instance.get_metrics_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMetricsResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling MetricsApi->get_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_metrics_request** | [**GetMetricsRequest**](GetMetricsRequest.md) |  | [optional] |

### Return type

[**GetMetricsResponse**](GetMetricsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

