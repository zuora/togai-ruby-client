# TogaiClient::PricingRulesApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_pricing_rules_by_schedule_id**](PricingRulesApi.md#list_pricing_rules_by_schedule_id) | **GET** /price_plans/{price_plan_id}/pricing_schedules/{pricing_schedule_id}/pricing_rules | (DEPRECATED) List pricing rules by price plan id and pricing schedule id |


## list_pricing_rules_by_schedule_id

> <PricingRulesPaginatedResponse> list_pricing_rules_by_schedule_id(price_plan_id, pricing_schedule_id, opts)

(DEPRECATED) List pricing rules by price plan id and pricing schedule id

Get a list of pricing rules using price plan id and pricing schedule id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PricingRulesApi.new
price_plan_id = 'pp.1zYnCiM9Bpg.lv25y' # String | 
pricing_schedule_id = 'sch.1zYnCiM9Bpg.lv25y' # String | 
opts = {
  invoice_timing: 'IN_ADVANCE' # String | Optional field to filter pricing rules based on invoice timing
}

begin
  # (DEPRECATED) List pricing rules by price plan id and pricing schedule id
  result = api_instance.list_pricing_rules_by_schedule_id(price_plan_id, pricing_schedule_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PricingRulesApi->list_pricing_rules_by_schedule_id: #{e}"
end
```

#### Using the list_pricing_rules_by_schedule_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricingRulesPaginatedResponse>, Integer, Hash)> list_pricing_rules_by_schedule_id_with_http_info(price_plan_id, pricing_schedule_id, opts)

```ruby
begin
  # (DEPRECATED) List pricing rules by price plan id and pricing schedule id
  data, status_code, headers = api_instance.list_pricing_rules_by_schedule_id_with_http_info(price_plan_id, pricing_schedule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricingRulesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PricingRulesApi->list_pricing_rules_by_schedule_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** |  |  |
| **pricing_schedule_id** | **String** |  |  |
| **invoice_timing** | **String** | Optional field to filter pricing rules based on invoice timing | [optional] |

### Return type

[**PricingRulesPaginatedResponse**](PricingRulesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

