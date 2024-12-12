# TogaiClient::CustomersApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /customers | Create a customer |
| [**create_customer_contact**](CustomersApi.md#create_customer_contact) | **POST** /customers/{customer_id}/contacts | Create a contact for the customer |
| [**delete_customer**](CustomersApi.md#delete_customer) | **DELETE** /customers/{customer_id} | Delete a customer |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /customers/{customer_id} | Get a customer |
| [**get_customers**](CustomersApi.md#get_customers) | **GET** /customers | List customers |
| [**update_customer**](CustomersApi.md#update_customer) | **PATCH** /customers/{customer_id} | Update a customer |


## create_customer

> <CreateCustomerResponse> create_customer(create_customer_request)

Create a customer

This API let’s you to create customers and corresponding accounts.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomersApi.new
create_customer_request = TogaiClient::CreateCustomerRequest.new({id: '01BX5ZZKBKACTAV9WEVGEMMVRZ', name: 'ACME Enterprise', primary_email: 'admin@example.com', address: TogaiClient::Address.new}) # CreateCustomerRequest | Payload to create customer

begin
  # Create a customer
  result = api_instance.create_customer(create_customer_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerResponse>, Integer, Hash)> create_customer_with_http_info(create_customer_request)

```ruby
begin
  # Create a customer
  data, status_code, headers = api_instance.create_customer_with_http_info(create_customer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_customer_request** | [**CreateCustomerRequest**](CreateCustomerRequest.md) | Payload to create customer |  |

### Return type

[**CreateCustomerResponse**](CreateCustomerResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_customer_contact

> <CreateCustomerContactResponse> create_customer_contact(customer_id, create_customer_contact_request)

Create a contact for the customer

This API let’s you to create a contact for the customer

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomersApi.new
customer_id = '01BX5ZZKBKACTAV9WEVGEMMVRZ' # String | 
create_customer_contact_request = TogaiClient::CreateCustomerContactRequest.new({name: 'name_example', email: 'email_example'}) # CreateCustomerContactRequest | Payload to create a contact for a customer

begin
  # Create a contact for the customer
  result = api_instance.create_customer_contact(customer_id, create_customer_contact_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->create_customer_contact: #{e}"
end
```

#### Using the create_customer_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerContactResponse>, Integer, Hash)> create_customer_contact_with_http_info(customer_id, create_customer_contact_request)

```ruby
begin
  # Create a contact for the customer
  data, status_code, headers = api_instance.create_customer_contact_with_http_info(customer_id, create_customer_contact_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerContactResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->create_customer_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **create_customer_contact_request** | [**CreateCustomerContactRequest**](CreateCustomerContactRequest.md) | Payload to create a contact for a customer |  |

### Return type

[**CreateCustomerContactResponse**](CreateCustomerContactResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_customer

> <BaseSuccessResponse> delete_customer(customer_id)

Delete a customer

This API let’s you to delete a customer using customer_id.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomersApi.new
customer_id = '01BX5ZZKBKACTAV9WEVGEMMVRZ' # String | 

begin
  # Delete a customer
  result = api_instance.delete_customer(customer_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->delete_customer: #{e}"
end
```

#### Using the delete_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> delete_customer_with_http_info(customer_id)

```ruby
begin
  # Delete a customer
  data, status_code, headers = api_instance.delete_customer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->delete_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer

> <Customer> get_customer(customer_id)

Get a customer

Get customer information using customer_id.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomersApi.new
customer_id = '01BX5ZZKBKACTAV9WEVGEMMVRZ' # String | 

begin
  # Get a customer
  result = api_instance.get_customer(customer_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> get_customer_with_http_info(customer_id)

```ruby
begin
  # Get a customer
  data, status_code, headers = api_instance.get_customer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customers

> <CustomerPaginatedResponse> get_customers(opts)

List customers

Returns a list of customers with pagination and sort.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomersApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List customers
  result = api_instance.get_customers(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers: #{e}"
end
```

#### Using the get_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerPaginatedResponse>, Integer, Hash)> get_customers_with_http_info(opts)

```ruby
begin
  # List customers
  data, status_code, headers = api_instance.get_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**CustomerPaginatedResponse**](CustomerPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> <Customer> update_customer(customer_id, update_customer_request)

Update a customer

This API let’s you to update a customer’s information using customer_id.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomersApi.new
customer_id = '01BX5ZZKBKACTAV9WEVGEMMVRZ' # String | 
update_customer_request = TogaiClient::UpdateCustomerRequest.new # UpdateCustomerRequest | Payload to update customer

begin
  # Update a customer
  result = api_instance.update_customer(customer_id, update_customer_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> update_customer_with_http_info(customer_id, update_customer_request)

```ruby
begin
  # Update a customer
  data, status_code, headers = api_instance.update_customer_with_http_info(customer_id, update_customer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomersApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  |  |
| **update_customer_request** | [**UpdateCustomerRequest**](UpdateCustomerRequest.md) | Payload to update customer |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

