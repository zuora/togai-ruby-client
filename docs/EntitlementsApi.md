# TogaiClient::EntitlementsApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_entitlement_value**](EntitlementsApi.md#get_entitlement_value) | **GET** /accounts/{account_id}/entitlements/{feature_id} | Get entitlement value for a account |
| [**get_entitlements**](EntitlementsApi.md#get_entitlements) | **GET** /accounts/{account_id}/entitlements | Get entitlements for a account |
| [**get_feature_credits**](EntitlementsApi.md#get_feature_credits) | **GET** /accounts/{account_id}/features/{feature_id} | Get Feature credits balance |
| [**ingest_entitled_event**](EntitlementsApi.md#ingest_entitled_event) | **POST** /entitled | Ingest event if a user is entitled to a feature |
| [**list_feature_credit_entries**](EntitlementsApi.md#list_feature_credit_entries) | **GET** /accounts/{account_id}/features/{feature_id}/entries | List feature credits entries of a feature for an account |
| [**update_feature_credit_entry**](EntitlementsApi.md#update_feature_credit_entry) | **PATCH** /accounts/{account_id}/features/{feature_id}/entries/{entry_id} | Update a feature credits entry |
| [**validate_entitlement_value**](EntitlementsApi.md#validate_entitlement_value) | **POST** /accounts/{account_id}/entitlements/{feature_id} | Check entitlement value for a account |
| [**void_feature_credit_entry**](EntitlementsApi.md#void_feature_credit_entry) | **POST** /accounts/{account_id}/features/{feature_id}/entries/{entry_id}/void | Void a feature credits entry of a feature for an account |


## get_entitlement_value

> <GetEntitlementValuesResponse> get_entitlement_value(account_id, feature_id)

Get entitlement value for a account

This API let’s you to get the entitlement value for a account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EntitlementsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
feature_id = 'feat.fdjskl.sdkjl' # String | feature_id corresponding to a feature

begin
  # Get entitlement value for a account
  result = api_instance.get_entitlement_value(account_id, feature_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->get_entitlement_value: #{e}"
end
```

#### Using the get_entitlement_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEntitlementValuesResponse>, Integer, Hash)> get_entitlement_value_with_http_info(account_id, feature_id)

```ruby
begin
  # Get entitlement value for a account
  data, status_code, headers = api_instance.get_entitlement_value_with_http_info(account_id, feature_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEntitlementValuesResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->get_entitlement_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **feature_id** | **String** | feature_id corresponding to a feature |  |

### Return type

[**GetEntitlementValuesResponse**](GetEntitlementValuesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entitlements

> <GetEntitlementValuesResponse> get_entitlements(account_id)

Get entitlements for a account

This API let’s you to get the entitlements for a account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EntitlementsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account

begin
  # Get entitlements for a account
  result = api_instance.get_entitlements(account_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->get_entitlements: #{e}"
end
```

#### Using the get_entitlements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEntitlementValuesResponse>, Integer, Hash)> get_entitlements_with_http_info(account_id)

```ruby
begin
  # Get entitlements for a account
  data, status_code, headers = api_instance.get_entitlements_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEntitlementValuesResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->get_entitlements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |

### Return type

[**GetEntitlementValuesResponse**](GetEntitlementValuesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feature_credits

> <GetFeatureCreditsResponse> get_feature_credits(account_id, feature_id)

Get Feature credits balance

This API let’s you to get the feature credits balance

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EntitlementsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
feature_id = 'feat.fdjskl.sdkjl' # String | feature_id corresponding to a feature

begin
  # Get Feature credits balance
  result = api_instance.get_feature_credits(account_id, feature_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->get_feature_credits: #{e}"
end
```

#### Using the get_feature_credits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFeatureCreditsResponse>, Integer, Hash)> get_feature_credits_with_http_info(account_id, feature_id)

```ruby
begin
  # Get Feature credits balance
  data, status_code, headers = api_instance.get_feature_credits_with_http_info(account_id, feature_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFeatureCreditsResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->get_feature_credits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **feature_id** | **String** | feature_id corresponding to a feature |  |

### Return type

[**GetFeatureCreditsResponse**](GetFeatureCreditsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ingest_entitled_event

> <BaseSuccessResponse> ingest_entitled_event(opts)

Ingest event if a user is entitled to a feature

This API let’s you to ingest an event if a user is entitled to a feature

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EntitlementsApi.new
opts = {
  ingest_event_request: TogaiClient::IngestEventRequest.new({event: TogaiClient::Event.new({schema_name: 'schema_name_example', timestamp: Time.now, account_id: '1', attributes: [TogaiClient::Attribute.new({name: 'message', value: '100'})], dimensions: { key: '{"Country":"India"}'}})}) # IngestEventRequest | 
}

begin
  # Ingest event if a user is entitled to a feature
  result = api_instance.ingest_entitled_event(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->ingest_entitled_event: #{e}"
end
```

#### Using the ingest_entitled_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> ingest_entitled_event_with_http_info(opts)

```ruby
begin
  # Ingest event if a user is entitled to a feature
  data, status_code, headers = api_instance.ingest_entitled_event_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->ingest_entitled_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingest_event_request** | [**IngestEventRequest**](IngestEventRequest.md) |  | [optional] |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_feature_credit_entries

> <GetFeatureCreditEntriesPaginatedResponse> list_feature_credit_entries(account_id, feature_id, opts)

List feature credits entries of a feature for an account

This API let’s you to list the feature credits entries of a feature for an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EntitlementsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
feature_id = 'feat.fdjskl.sdkjl' # String | feature_id corresponding to a feature
opts = {
  page_size: 10, # Integer | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==' # String | Pagination token used as a marker to get records from next page.
}

begin
  # List feature credits entries of a feature for an account
  result = api_instance.list_feature_credit_entries(account_id, feature_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->list_feature_credit_entries: #{e}"
end
```

#### Using the list_feature_credit_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFeatureCreditEntriesPaginatedResponse>, Integer, Hash)> list_feature_credit_entries_with_http_info(account_id, feature_id, opts)

```ruby
begin
  # List feature credits entries of a feature for an account
  data, status_code, headers = api_instance.list_feature_credit_entries_with_http_info(account_id, feature_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFeatureCreditEntriesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->list_feature_credit_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **feature_id** | **String** | feature_id corresponding to a feature |  |
| **page_size** | **Integer** | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided. | [optional] |
| **next_token** | **String** | Pagination token used as a marker to get records from next page. | [optional] |

### Return type

[**GetFeatureCreditEntriesPaginatedResponse**](GetFeatureCreditEntriesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_feature_credit_entry

> <FeatureCreditEntry> update_feature_credit_entry(account_id, feature_id, entry_id, opts)

Update a feature credits entry

#### This API let's you to update the following attributes: `effectiveUntil` and `granted`  - **effectiveUntil**: must be in future - **granted**: must be greater than the existing usage (previous granted - current balance) 

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EntitlementsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
feature_id = 'feat.fdjskl.sdkjl' # String | feature_id corresponding to a feature
entry_id = 'purchase.21HbazIT3JQ.D90jC#1$PURCHASE' # String | `entryId` corresponding to a particular entitlement/overage grant entry  Formats: 1. If source of entry is an entitlement grant rate card in price plan: `schedule_id#pricing_cycle_start_date$PRICE_PLAN` 2. If source of entry is an entitlement overage rate card in price plan: `schedule_id#pricing_cycle_start_date$OVERAGE` 3. If source of entry is a purchase: `purchase_id#int_index$PURCHASE` 
opts = {
  update_feature_credits_request: TogaiClient::UpdateFeatureCreditsRequest.new # UpdateFeatureCreditsRequest | 
}

begin
  # Update a feature credits entry
  result = api_instance.update_feature_credit_entry(account_id, feature_id, entry_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->update_feature_credit_entry: #{e}"
end
```

#### Using the update_feature_credit_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureCreditEntry>, Integer, Hash)> update_feature_credit_entry_with_http_info(account_id, feature_id, entry_id, opts)

```ruby
begin
  # Update a feature credits entry
  data, status_code, headers = api_instance.update_feature_credit_entry_with_http_info(account_id, feature_id, entry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureCreditEntry>
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->update_feature_credit_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **feature_id** | **String** | feature_id corresponding to a feature |  |
| **entry_id** | **String** | &#x60;entryId&#x60; corresponding to a particular entitlement/overage grant entry  Formats: 1. If source of entry is an entitlement grant rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$PRICE_PLAN&#x60; 2. If source of entry is an entitlement overage rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$OVERAGE&#x60; 3. If source of entry is a purchase: &#x60;purchase_id#int_index$PURCHASE&#x60;  |  |
| **update_feature_credits_request** | [**UpdateFeatureCreditsRequest**](UpdateFeatureCreditsRequest.md) |  | [optional] |

### Return type

[**FeatureCreditEntry**](FeatureCreditEntry.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_entitlement_value

> <BaseSuccessResponse> validate_entitlement_value(account_id, feature_id, opts)

Check entitlement value for a account

This API let’s you to validate the entitlement value for a account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EntitlementsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
feature_id = 'feat.fdjskl.sdkjl' # String | feature_id corresponding to a feature
opts = {
  validate_entitlement_value_request: TogaiClient::ValidateEntitlementValueRequest.new({value: 'value_example'}) # ValidateEntitlementValueRequest | 
}

begin
  # Check entitlement value for a account
  result = api_instance.validate_entitlement_value(account_id, feature_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->validate_entitlement_value: #{e}"
end
```

#### Using the validate_entitlement_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> validate_entitlement_value_with_http_info(account_id, feature_id, opts)

```ruby
begin
  # Check entitlement value for a account
  data, status_code, headers = api_instance.validate_entitlement_value_with_http_info(account_id, feature_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->validate_entitlement_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **feature_id** | **String** | feature_id corresponding to a feature |  |
| **validate_entitlement_value_request** | [**ValidateEntitlementValueRequest**](ValidateEntitlementValueRequest.md) |  | [optional] |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## void_feature_credit_entry

> <BaseSuccessResponse> void_feature_credit_entry(account_id, feature_id, entry_id)

Void a feature credits entry of a feature for an account

This API let’s you to void the feature credits entries of a feature for an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EntitlementsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
feature_id = 'feat.fdjskl.sdkjl' # String | feature_id corresponding to a feature
entry_id = 'purchase.21HbazIT3JQ.D90jC#1$PURCHASE' # String | `entryId` corresponding to a particular entitlement/overage grant entry  Formats: 1. If source of entry is an entitlement grant rate card in price plan: `schedule_id#pricing_cycle_start_date$PRICE_PLAN` 2. If source of entry is an entitlement overage rate card in price plan: `schedule_id#pricing_cycle_start_date$OVERAGE` 3. If source of entry is a purchase: `purchase_id#int_index$PURCHASE` 

begin
  # Void a feature credits entry of a feature for an account
  result = api_instance.void_feature_credit_entry(account_id, feature_id, entry_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->void_feature_credit_entry: #{e}"
end
```

#### Using the void_feature_credit_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> void_feature_credit_entry_with_http_info(account_id, feature_id, entry_id)

```ruby
begin
  # Void a feature credits entry of a feature for an account
  data, status_code, headers = api_instance.void_feature_credit_entry_with_http_info(account_id, feature_id, entry_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EntitlementsApi->void_feature_credit_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **feature_id** | **String** | feature_id corresponding to a feature |  |
| **entry_id** | **String** | &#x60;entryId&#x60; corresponding to a particular entitlement/overage grant entry  Formats: 1. If source of entry is an entitlement grant rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$PRICE_PLAN&#x60; 2. If source of entry is an entitlement overage rate card in price plan: &#x60;schedule_id#pricing_cycle_start_date$OVERAGE&#x60; 3. If source of entry is a purchase: &#x60;purchase_id#int_index$PURCHASE&#x60;  |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

