# TogaiClient::EventManagementApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**event_correction**](EventManagementApi.md#event_correction) | **POST** /events/correction | Correct an ingested event |
| [**get_events**](EventManagementApi.md#get_events) | **GET** /events | Get a list of usage events with multiple query options |
| [**get_single_event**](EventManagementApi.md#get_single_event) | **GET** /events/{event_id} | Get an event using event id |


## event_correction

> <EventsCorrectionResponse> event_correction(action, opts)

Correct an ingested event

#### This API lets you to correct events. Available in both synchronous and asynchronous mode - **Usages**: Reduction of all usages associated with this event - **Revenue**: Reduction of all revenues associated with this event - **Entitlements**: Entitlements(Feature Credits) consumed by this event are granted back to the account.  ### Possible Actions: - UNDO: Undo all usages, revenue and entitlements associated with an event - REDO: Performs UNDO and re-ingests the same event - REDO_EVENT: Performs UNDO and re-ingests the correction payload of the event 

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventManagementApi.new
action = 'UNDO' # String | Action to perform in event correction
opts = {
  require_confirmation: false, # Boolean | Specifies whether to start a migration only after a confirmation
  event_correction_request: TogaiClient::EventCorrectionRequest.new # EventCorrectionRequest | 
}

begin
  # Correct an ingested event
  result = api_instance.event_correction(action, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventManagementApi->event_correction: #{e}"
end
```

#### Using the event_correction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventsCorrectionResponse>, Integer, Hash)> event_correction_with_http_info(action, opts)

```ruby
begin
  # Correct an ingested event
  data, status_code, headers = api_instance.event_correction_with_http_info(action, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventsCorrectionResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventManagementApi->event_correction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Action to perform in event correction |  |
| **require_confirmation** | **Boolean** | Specifies whether to start a migration only after a confirmation | [optional] |
| **event_correction_request** | [**EventCorrectionRequest**](EventCorrectionRequest.md) |  | [optional] |

### Return type

[**EventsCorrectionResponse**](EventsCorrectionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_events

> <GetEventsResponse> get_events(opts)

Get a list of usage events with multiple query options

This API let’s you to fetch a list of events with multiple query parameters

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventManagementApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | Pagination token used as a marker to get records from next page.
  status: 'PROCESSED', # String | Filter option to filter by status.
  account_id: '1234', # String | Filter option to filter based on account id.
  schema_name: 'Rides', # String | Filter option to filter the events based on schema name.
  page_size: 10 # Integer | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
}

begin
  # Get a list of usage events with multiple query options
  result = api_instance.get_events(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventManagementApi->get_events: #{e}"
end
```

#### Using the get_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEventsResponse>, Integer, Hash)> get_events_with_http_info(opts)

```ruby
begin
  # Get a list of usage events with multiple query options
  data, status_code, headers = api_instance.get_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEventsResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventManagementApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** | Pagination token used as a marker to get records from next page. | [optional] |
| **status** | **String** | Filter option to filter by status. | [optional] |
| **account_id** | **String** | Filter option to filter based on account id. | [optional] |
| **schema_name** | **String** | Filter option to filter the events based on schema name. | [optional] |
| **page_size** | **Integer** | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided. | [optional] |

### Return type

[**GetEventsResponse**](GetEventsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_single_event

> <GetEventResponse> get_single_event(event_id)

Get an event using event id

Fetch details of a particular event using the event ID.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::EventManagementApi.new
event_id = 'f4a52f2d-b798-4e08-8b24-db0a5a468ba3' # String | 

begin
  # Get an event using event id
  result = api_instance.get_single_event(event_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling EventManagementApi->get_single_event: #{e}"
end
```

#### Using the get_single_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEventResponse>, Integer, Hash)> get_single_event_with_http_info(event_id)

```ruby
begin
  # Get an event using event id
  data, status_code, headers = api_instance.get_single_event_with_http_info(event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEventResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling EventManagementApi->get_single_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  |  |

### Return type

[**GetEventResponse**](GetEventResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

