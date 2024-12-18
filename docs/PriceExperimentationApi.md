# TogaiClient::PriceExperimentationApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**calculate_revenue**](PriceExperimentationApi.md#calculate_revenue) | **POST** /revenue_calculator | (DEPRECATED) Calculate and return the revenue for a existing or new price plan |
| [**calculate_revenue_v2**](PriceExperimentationApi.md#calculate_revenue_v2) | **POST** /v2/revenue_calculator | Calculate and return the revenue for a existing or new price plan v2 |


## calculate_revenue

> <CalculateRevenueResponse> calculate_revenue(calculate_revenue_request)

(DEPRECATED) Calculate and return the revenue for a existing or new price plan

Calculate and return the revenue for a existing or new price plan

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PriceExperimentationApi.new
calculate_revenue_request = TogaiClient::CalculateRevenueRequest.new({currency_config: TogaiClient::CurrencyConfig.new({mode: 'CUSTOM'}), price_plan_details_config: TogaiClient::PricePlanDetailsConfig.new({mode: 'CUSTOM'}), usage_config: TogaiClient::UsageConfig.new({mode: 'CUSTOM'}), license_entries_config: TogaiClient::LicenseEntriesConfig.new({mode: 'CUSTOM'})}) # CalculateRevenueRequest | Request payload for calculateRevenueAPI

begin
  # (DEPRECATED) Calculate and return the revenue for a existing or new price plan
  result = api_instance.calculate_revenue(calculate_revenue_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PriceExperimentationApi->calculate_revenue: #{e}"
end
```

#### Using the calculate_revenue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CalculateRevenueResponse>, Integer, Hash)> calculate_revenue_with_http_info(calculate_revenue_request)

```ruby
begin
  # (DEPRECATED) Calculate and return the revenue for a existing or new price plan
  data, status_code, headers = api_instance.calculate_revenue_with_http_info(calculate_revenue_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CalculateRevenueResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PriceExperimentationApi->calculate_revenue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calculate_revenue_request** | [**CalculateRevenueRequest**](CalculateRevenueRequest.md) | Request payload for calculateRevenueAPI |  |

### Return type

[**CalculateRevenueResponse**](CalculateRevenueResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## calculate_revenue_v2

> <CalculateRevenueResponseV2> calculate_revenue_v2(calculate_revenue_request)

Calculate and return the revenue for a existing or new price plan v2

Calculate and return the revenue for a existing or new price plan v2

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PriceExperimentationApi.new
calculate_revenue_request = TogaiClient::CalculateRevenueRequest.new({currency_config: TogaiClient::CurrencyConfig.new({mode: 'CUSTOM'}), price_plan_details_config: TogaiClient::PricePlanDetailsConfig.new({mode: 'CUSTOM'}), usage_config: TogaiClient::UsageConfig.new({mode: 'CUSTOM'}), license_entries_config: TogaiClient::LicenseEntriesConfig.new({mode: 'CUSTOM'})}) # CalculateRevenueRequest | Request payload for calculateRevenueAPI

begin
  # Calculate and return the revenue for a existing or new price plan v2
  result = api_instance.calculate_revenue_v2(calculate_revenue_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PriceExperimentationApi->calculate_revenue_v2: #{e}"
end
```

#### Using the calculate_revenue_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CalculateRevenueResponseV2>, Integer, Hash)> calculate_revenue_v2_with_http_info(calculate_revenue_request)

```ruby
begin
  # Calculate and return the revenue for a existing or new price plan v2
  data, status_code, headers = api_instance.calculate_revenue_v2_with_http_info(calculate_revenue_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CalculateRevenueResponseV2>
rescue TogaiClient::ApiError => e
  puts "Error when calling PriceExperimentationApi->calculate_revenue_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calculate_revenue_request** | [**CalculateRevenueRequest**](CalculateRevenueRequest.md) | Request payload for calculateRevenueAPI |  |

### Return type

[**CalculateRevenueResponseV2**](CalculateRevenueResponseV2.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

