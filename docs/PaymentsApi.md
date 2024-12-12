# TogaiClient::PaymentsApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payments**](PaymentsApi.md#create_payments) | **POST** /payments | create payments |
| [**get_payment**](PaymentsApi.md#get_payment) | **GET** /payments/{payment_id} | Get a payment |
| [**list_payments**](PaymentsApi.md#list_payments) | **GET** /payments | List all payments |


## create_payments

> <Payment> create_payments(opts)

create payments

create payments

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PaymentsApi.new
opts = {
  create_payment_request: TogaiClient::CreatePaymentRequest.new({account_id: 'ACC001', external_payment_reference: TogaiClient::ExternalPaymentReference.new({source_name: 'source_name_example', source_type: 'GATEWAY', transaction_number: 'transaction_number_example'}), line_item_records: [TogaiClient::PaymentLineItemRecord.new({type: 'INVOICE', order: 37})], currency: 'USD', total_amount: 3.56}) # CreatePaymentRequest | Payload to create a payment
}

begin
  # create payments
  result = api_instance.create_payments(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PaymentsApi->create_payments: #{e}"
end
```

#### Using the create_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> create_payments_with_http_info(opts)

```ruby
begin
  # create payments
  data, status_code, headers = api_instance.create_payments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue TogaiClient::ApiError => e
  puts "Error when calling PaymentsApi->create_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payment_request** | [**CreatePaymentRequest**](CreatePaymentRequest.md) | Payload to create a payment | [optional] |

### Return type

[**Payment**](Payment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payment

> <Payment> get_payment(payment_id, opts)

Get a payment

Get payment

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PaymentsApi.new
payment_id = 'payment.1zYnCiM9Bpg.lv25y' # String | 
opts = {
  version: 2 # Integer | Optional version to get a specific version. Gets latest version if it is not provided.
}

begin
  # Get a payment
  result = api_instance.get_payment(payment_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment: #{e}"
end
```

#### Using the get_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> get_payment_with_http_info(payment_id, opts)

```ruby
begin
  # Get a payment
  data, status_code, headers = api_instance.get_payment_with_http_info(payment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue TogaiClient::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_id** | **String** |  |  |
| **version** | **Integer** | Optional version to get a specific version. Gets latest version if it is not provided. | [optional] |

### Return type

[**Payment**](Payment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payments

> <ListPaymentResponse> list_payments(opts)

List all payments

List all payments

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::PaymentsApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | Pagination token used as a marker to get records from next page.
  page_size: 10 # Integer | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
}

begin
  # List all payments
  result = api_instance.list_payments(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling PaymentsApi->list_payments: #{e}"
end
```

#### Using the list_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPaymentResponse>, Integer, Hash)> list_payments_with_http_info(opts)

```ruby
begin
  # List all payments
  data, status_code, headers = api_instance.list_payments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPaymentResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling PaymentsApi->list_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** | Pagination token used as a marker to get records from next page. | [optional] |
| **page_size** | **Integer** | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided. | [optional] |

### Return type

[**ListPaymentResponse**](ListPaymentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

