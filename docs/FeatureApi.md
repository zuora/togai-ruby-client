# TogaiClient::FeatureApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_feature**](FeatureApi.md#create_feature) | **POST** /features | Create a Feature and optionally associate with one or more event_schemas |
| [**get_feature**](FeatureApi.md#get_feature) | **GET** /features/{feature_id} | Get a Feature |
| [**get_features**](FeatureApi.md#get_features) | **GET** /features | List Feature |
| [**update_feature**](FeatureApi.md#update_feature) | **PATCH** /features/{feature_id} | Update a Feature |


## create_feature

> <Feature> create_feature(create_feature_request)

Create a Feature and optionally associate with one or more event_schemas

Create a Feature optionally associate with one or more event_schemas

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::FeatureApi.new
create_feature_request = TogaiClient::CreateFeatureRequest.new({name: 'name_example', schema_associations: [TogaiClient::EventSchemasForFeature.new({schema_name: 'schema_name_example', attribute_name: 'attribute_name_example'})]}) # CreateFeatureRequest | Payload to create a Feature along the association with event_schemas

begin
  # Create a Feature and optionally associate with one or more event_schemas
  result = api_instance.create_feature(create_feature_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling FeatureApi->create_feature: #{e}"
end
```

#### Using the create_feature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Feature>, Integer, Hash)> create_feature_with_http_info(create_feature_request)

```ruby
begin
  # Create a Feature and optionally associate with one or more event_schemas
  data, status_code, headers = api_instance.create_feature_with_http_info(create_feature_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Feature>
rescue TogaiClient::ApiError => e
  puts "Error when calling FeatureApi->create_feature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_feature_request** | [**CreateFeatureRequest**](CreateFeatureRequest.md) | Payload to create a Feature along the association with event_schemas |  |

### Return type

[**Feature**](Feature.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_feature

> <Feature> get_feature(feature_id)

Get a Feature

Get details of a Feature

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::FeatureApi.new
feature_id = 'feat.fdjskl.sdkjl' # String | feature_id corresponding to a feature

begin
  # Get a Feature
  result = api_instance.get_feature(feature_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling FeatureApi->get_feature: #{e}"
end
```

#### Using the get_feature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Feature>, Integer, Hash)> get_feature_with_http_info(feature_id)

```ruby
begin
  # Get a Feature
  data, status_code, headers = api_instance.get_feature_with_http_info(feature_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Feature>
rescue TogaiClient::ApiError => e
  puts "Error when calling FeatureApi->get_feature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feature_id** | **String** | feature_id corresponding to a feature |  |

### Return type

[**Feature**](Feature.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_features

> <FeaturePaginatedListData> get_features(opts)

List Feature

Get a list of features along with its associations

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::FeatureApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List Feature
  result = api_instance.get_features(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling FeatureApi->get_features: #{e}"
end
```

#### Using the get_features_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeaturePaginatedListData>, Integer, Hash)> get_features_with_http_info(opts)

```ruby
begin
  # List Feature
  data, status_code, headers = api_instance.get_features_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeaturePaginatedListData>
rescue TogaiClient::ApiError => e
  puts "Error when calling FeatureApi->get_features_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**FeaturePaginatedListData**](FeaturePaginatedListData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_feature

> <Feature> update_feature(feature_id, update_feature_request)

Update a Feature

Update an existing feature and its eventSchema associations 

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::FeatureApi.new
feature_id = 'feat.fdjskl.sdkjl' # String | feature_id corresponding to a feature
update_feature_request = TogaiClient::UpdateFeatureRequest.new # UpdateFeatureRequest | Payload to update a Feature along the associations with event_schemas

begin
  # Update a Feature
  result = api_instance.update_feature(feature_id, update_feature_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling FeatureApi->update_feature: #{e}"
end
```

#### Using the update_feature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Feature>, Integer, Hash)> update_feature_with_http_info(feature_id, update_feature_request)

```ruby
begin
  # Update a Feature
  data, status_code, headers = api_instance.update_feature_with_http_info(feature_id, update_feature_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Feature>
rescue TogaiClient::ApiError => e
  puts "Error when calling FeatureApi->update_feature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feature_id** | **String** | feature_id corresponding to a feature |  |
| **update_feature_request** | [**UpdateFeatureRequest**](UpdateFeatureRequest.md) | Payload to update a Feature along the associations with event_schemas |  |

### Return type

[**Feature**](Feature.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

