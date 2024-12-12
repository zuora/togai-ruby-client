# TogaiClient::EventIngestionApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ingest**](EventIngestionApi.md#ingest) | **POST** /ingest | Ingest events to Togai |
| [**ingest_batch**](EventIngestionApi.md#ingest_batch) | **POST** /ingestBatch | Ingest events to Togai in batch |


## ingest

> <IngestEventResponse> ingest(ingest_event_request)

Ingest events to Togai

This API let’s you to ingest events to your Togai account. Events ingested using this API will be processed via associated usage meters and further via associated price plans to generate final billable value to invoice the customer Read more about [Event Ingestion](https://docs.togai.com/docs/event-ingestion) 

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventIngestionApi.new
ingest_event_request = TogaiClient::IngestEventRequest.new({event: TogaiClient::Event.new({schema_name: 'schema_name_example', timestamp: Time.now, account_id: '1', attributes: [TogaiClient::Attribute.new({name: 'message', value: '100'})], dimensions: { key: '{"Country":"India"}'}})}) # IngestEventRequest | Request body to ingest events to Togai usage and billing management service.

begin
  # Ingest events to Togai
  result = api_instance.ingest(ingest_event_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventIngestionApi->ingest: #{e}"
end
```

#### Using the ingest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IngestEventResponse>, Integer, Hash)> ingest_with_http_info(ingest_event_request)

```ruby
begin
  # Ingest events to Togai
  data, status_code, headers = api_instance.ingest_with_http_info(ingest_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IngestEventResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventIngestionApi->ingest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingest_event_request** | [**IngestEventRequest**](IngestEventRequest.md) | Request body to ingest events to Togai usage and billing management service. |  |

### Return type

[**IngestEventResponse**](IngestEventResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ingest_batch

> <IngestEventResponse> ingest_batch(ingest_batch_event_request)

Ingest events to Togai in batch

This API let’s you to ingest events in batch upto 500 events. Ingest large amounts of events up to 500 in batches in an array using this API.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventIngestionApi.new
ingest_batch_event_request = TogaiClient::IngestBatchEventRequest.new({events: [TogaiClient::Event.new({schema_name: 'schema_name_example', timestamp: Time.now, account_id: '1', attributes: [TogaiClient::Attribute.new({name: 'message', value: '100'})], dimensions: { key: '{"Country":"India"}'}})]}) # IngestBatchEventRequest | Request body to ingest events in batch to Togai usage and billing management service.

begin
  # Ingest events to Togai in batch
  result = api_instance.ingest_batch(ingest_batch_event_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventIngestionApi->ingest_batch: #{e}"
end
```

#### Using the ingest_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IngestEventResponse>, Integer, Hash)> ingest_batch_with_http_info(ingest_batch_event_request)

```ruby
begin
  # Ingest events to Togai in batch
  data, status_code, headers = api_instance.ingest_batch_with_http_info(ingest_batch_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IngestEventResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventIngestionApi->ingest_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingest_batch_event_request** | [**IngestBatchEventRequest**](IngestBatchEventRequest.md) | Request body to ingest events in batch to Togai usage and billing management service. |  |

### Return type

[**IngestEventResponse**](IngestEventResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

