# TogaiClient::AlertsApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_alert**](AlertsApi.md#create_alert) | **POST** /alerts | Create an alert |
| [**get_alert_template**](AlertsApi.md#get_alert_template) | **GET** /alert_templates/{alert_template_id} | Get an alert template |
| [**get_alert_templates**](AlertsApi.md#get_alert_templates) | **GET** /alert_templates | List alert templates |
| [**get_incident**](AlertsApi.md#get_incident) | **GET** /incidents/{incident_id} | Get an incident |
| [**get_incidents**](AlertsApi.md#get_incidents) | **GET** /incidents | List incidents |
| [**list_alerts**](AlertsApi.md#list_alerts) | **GET** /alerts | List alerts |
| [**update_alert**](AlertsApi.md#update_alert) | **PATCH** /alerts/{alert_id} | Update an alert |
| [**update_incident_status**](AlertsApi.md#update_incident_status) | **PUT** /incidents/{incident_id}/status | Update an incident status |


## create_alert

> <Alert> create_alert(create_alert_request)

Create an alert

Create an alert

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AlertsApi.new
create_alert_request = TogaiClient::CreateAlertRequest.new({alert_template_id: 'alert_template_id_example', interval: 37, status: TogaiClient::AlertStatus::ACTIVE}) # CreateAlertRequest | Payload to install an alert

begin
  # Create an alert
  result = api_instance.create_alert(create_alert_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->create_alert: #{e}"
end
```

#### Using the create_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Alert>, Integer, Hash)> create_alert_with_http_info(create_alert_request)

```ruby
begin
  # Create an alert
  data, status_code, headers = api_instance.create_alert_with_http_info(create_alert_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Alert>
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->create_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_alert_request** | [**CreateAlertRequest**](CreateAlertRequest.md) | Payload to install an alert |  |

### Return type

[**Alert**](Alert.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_alert_template

> <AlertTemplate> get_alert_template(alert_template_id)

Get an alert template

Get an alert template

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AlertsApi.new
alert_template_id = 'abcd-efgh-ijkl-mnop' # String | 

begin
  # Get an alert template
  result = api_instance.get_alert_template(alert_template_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alert_template: #{e}"
end
```

#### Using the get_alert_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertTemplate>, Integer, Hash)> get_alert_template_with_http_info(alert_template_id)

```ruby
begin
  # Get an alert template
  data, status_code, headers = api_instance.get_alert_template_with_http_info(alert_template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertTemplate>
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alert_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_template_id** | **String** |  |  |

### Return type

[**AlertTemplate**](AlertTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_alert_templates

> <AlertTemplatesPaginatedResponse> get_alert_templates

List alert templates

Returns a list of alert templates with pagination and sort.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AlertsApi.new

begin
  # List alert templates
  result = api_instance.get_alert_templates
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alert_templates: #{e}"
end
```

#### Using the get_alert_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertTemplatesPaginatedResponse>, Integer, Hash)> get_alert_templates_with_http_info

```ruby
begin
  # List alert templates
  data, status_code, headers = api_instance.get_alert_templates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertTemplatesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->get_alert_templates_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AlertTemplatesPaginatedResponse**](AlertTemplatesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident

> <Incident> get_incident(incident_id)

Get an incident

Get an incident

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AlertsApi.new
incident_id = 'inc.20aUyEZSuYq.SoGbS' # String | 

begin
  # Get an incident
  result = api_instance.get_incident(incident_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->get_incident: #{e}"
end
```

#### Using the get_incident_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Incident>, Integer, Hash)> get_incident_with_http_info(incident_id)

```ruby
begin
  # Get an incident
  data, status_code, headers = api_instance.get_incident_with_http_info(incident_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Incident>
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->get_incident_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** |  |  |

### Return type

[**Incident**](Incident.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incidents

> <IncidentsPaginatedResponse> get_incidents

List incidents

Returns a list of incidents with pagination and sort.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AlertsApi.new

begin
  # List incidents
  result = api_instance.get_incidents
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->get_incidents: #{e}"
end
```

#### Using the get_incidents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncidentsPaginatedResponse>, Integer, Hash)> get_incidents_with_http_info

```ruby
begin
  # List incidents
  data, status_code, headers = api_instance.get_incidents_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncidentsPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->get_incidents_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IncidentsPaginatedResponse**](IncidentsPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_alerts

> <AlertsPaginatedResponse> list_alerts

List alerts

Returns a list of alerts with pagination and sort.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AlertsApi.new

begin
  # List alerts
  result = api_instance.list_alerts
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->list_alerts: #{e}"
end
```

#### Using the list_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AlertsPaginatedResponse>, Integer, Hash)> list_alerts_with_http_info

```ruby
begin
  # List alerts
  data, status_code, headers = api_instance.list_alerts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AlertsPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->list_alerts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AlertsPaginatedResponse**](AlertsPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_alert

> <Alert> update_alert(alert_id, opts)

Update an alert

Update an alert

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AlertsApi.new
alert_id = 'alert.20aUyEZSuYq.SoGbS' # String | 
opts = {
  update_alert_request: TogaiClient::UpdateAlertRequest.new # UpdateAlertRequest | Payload to update alert
}

begin
  # Update an alert
  result = api_instance.update_alert(alert_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->update_alert: #{e}"
end
```

#### Using the update_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Alert>, Integer, Hash)> update_alert_with_http_info(alert_id, opts)

```ruby
begin
  # Update an alert
  data, status_code, headers = api_instance.update_alert_with_http_info(alert_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Alert>
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->update_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_id** | **String** |  |  |
| **update_alert_request** | [**UpdateAlertRequest**](UpdateAlertRequest.md) | Payload to update alert | [optional] |

### Return type

[**Alert**](Alert.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_incident_status

> <Incident> update_incident_status(incident_id, opts)

Update an incident status

Update an incident status

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AlertsApi.new
incident_id = 'inc.20aUyEZSuYq.SoGbS' # String | 
opts = {
  update_incident_status_request: TogaiClient::UpdateIncidentStatusRequest.new({status: 'CLOSED'}) # UpdateIncidentStatusRequest | Payload to update incident status
}

begin
  # Update an incident status
  result = api_instance.update_incident_status(incident_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->update_incident_status: #{e}"
end
```

#### Using the update_incident_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Incident>, Integer, Hash)> update_incident_status_with_http_info(incident_id, opts)

```ruby
begin
  # Update an incident status
  data, status_code, headers = api_instance.update_incident_status_with_http_info(incident_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Incident>
rescue TogaiClient::ApiError => e
  puts "Error when calling AlertsApi->update_incident_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_id** | **String** |  |  |
| **update_incident_status_request** | [**UpdateIncidentStatusRequest**](UpdateIncidentStatusRequest.md) | Payload to update incident status | [optional] |

### Return type

[**Incident**](Incident.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

