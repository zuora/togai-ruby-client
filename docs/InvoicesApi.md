# TogaiClient::InvoicesApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_custom_invoice**](InvoicesApi.md#create_custom_invoice) | **POST** /invoices | Create a custom invoice for an account |
| [**create_invoice_bill_run**](InvoicesApi.md#create_invoice_bill_run) | **POST** /invoices/bill_runs | Create a bill run job request |
| [**delete_custom_invoice**](InvoicesApi.md#delete_custom_invoice) | **DELETE** /invoices/{invoice_id} | Delete a custom invoice in DRAFT state |
| [**get_invoice**](InvoicesApi.md#get_invoice) | **GET** /invoices/{invoice_id} | Get an invoice |
| [**list_invoices**](InvoicesApi.md#list_invoices) | **GET** /invoices | List invoices |
| [**list_invoices_for_bill_run**](InvoicesApi.md#list_invoices_for_bill_run) | **GET** /invoices/bill_runs | List invoices eligible for bill run |
| [**list_pricing_rule_logs**](InvoicesApi.md#list_pricing_rule_logs) | **GET** /invoice/{invoice_id}/pricing_rules_logs | List pricing rule logs |
| [**manage_miscellaneous_charges_in_account**](InvoicesApi.md#manage_miscellaneous_charges_in_account) | **PUT** /accounts/{account_id}/miscellaneous_charges | Add or update miscellaneous charges in upcoming Invoice for a account |
| [**manage_miscellaneous_charges_in_invoice**](InvoicesApi.md#manage_miscellaneous_charges_in_invoice) | **PUT** /invoices/{invoice_id}/miscellaneous_charges | Add or update miscellaneous charges in Invoice |
| [**update_invoice**](InvoicesApi.md#update_invoice) | **PATCH** /invoices/{invoice_id} | Update an invoice |


## create_custom_invoice

> <Invoice> create_custom_invoice(opts)

Create a custom invoice for an account

Create a custom invoice for an account.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoicesApi.new
opts = {
  create_custom_invoice_request: TogaiClient::CreateCustomInvoiceRequest.new({account_id: 'ACC001', start_date: Time.parse('2020-06-04T12:00Z'), end_date: Time.parse('2020-07-04T12:00Z'), status: 'DRAFT', line_items: [TogaiClient::CustomInvoiceLineItem.new]}) # CreateCustomInvoiceRequest | Payload to create invoice
}

begin
  # Create a custom invoice for an account
  result = api_instance.create_custom_invoice(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->create_custom_invoice: #{e}"
end
```

#### Using the create_custom_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invoice>, Integer, Hash)> create_custom_invoice_with_http_info(opts)

```ruby
begin
  # Create a custom invoice for an account
  data, status_code, headers = api_instance.create_custom_invoice_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invoice>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->create_custom_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_custom_invoice_request** | [**CreateCustomInvoiceRequest**](CreateCustomInvoiceRequest.md) | Payload to create invoice | [optional] |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_invoice_bill_run

> <BaseSuccessResponse> create_invoice_bill_run(opts)

Create a bill run job request

Create a bill run job request

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoicesApi.new
opts = {
  require_confirmation: false # Boolean | Specifies whether to start a migration only after a confirmation
}

begin
  # Create a bill run job request
  result = api_instance.create_invoice_bill_run(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->create_invoice_bill_run: #{e}"
end
```

#### Using the create_invoice_bill_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> create_invoice_bill_run_with_http_info(opts)

```ruby
begin
  # Create a bill run job request
  data, status_code, headers = api_instance.create_invoice_bill_run_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->create_invoice_bill_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **require_confirmation** | **Boolean** | Specifies whether to start a migration only after a confirmation | [optional] |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_custom_invoice

> <BaseSuccessResponse> delete_custom_invoice(invoice_id)

Delete a custom invoice in DRAFT state

Delete a custom invoice in DRAFT state.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoicesApi.new
invoice_id = 'ACC001' # String | 

begin
  # Delete a custom invoice in DRAFT state
  result = api_instance.delete_custom_invoice(invoice_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->delete_custom_invoice: #{e}"
end
```

#### Using the delete_custom_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> delete_custom_invoice_with_http_info(invoice_id)

```ruby
begin
  # Delete a custom invoice in DRAFT state
  data, status_code, headers = api_instance.delete_custom_invoice_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->delete_custom_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **String** |  |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invoice

> <Invoice> get_invoice(invoice_id)

Get an invoice

Get invoice

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoicesApi.new
invoice_id = 'ACC001' # String | 

begin
  # Get an invoice
  result = api_instance.get_invoice(invoice_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->get_invoice: #{e}"
end
```

#### Using the get_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invoice>, Integer, Hash)> get_invoice_with_http_info(invoice_id)

```ruby
begin
  # Get an invoice
  data, status_code, headers = api_instance.get_invoice_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invoice>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->get_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **String** |  |  |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_invoices

> <ListInvoicesResponse> list_invoices(opts)

List invoices

List invoices

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoicesApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | Pagination token used as a marker to get records from next page.
  status: 'PROCESSED', # String | Filter option to filter by status.
  owner_id: 'ACC001', # String | Filter option to filter based on owner id.
  customer_id: '1234', # String | Filter option to filter based on customer id.
  page_size: 10, # Integer | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
  start_time: 1650110402000, # Integer | Start time filter in epoch milli seconds
  end_time: 1650110402000 # Integer | End time filter in epoch milli seconds
}

begin
  # List invoices
  result = api_instance.list_invoices(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->list_invoices: #{e}"
end
```

#### Using the list_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInvoicesResponse>, Integer, Hash)> list_invoices_with_http_info(opts)

```ruby
begin
  # List invoices
  data, status_code, headers = api_instance.list_invoices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInvoicesResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->list_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** | Pagination token used as a marker to get records from next page. | [optional] |
| **status** | **String** | Filter option to filter by status. | [optional] |
| **owner_id** | **String** | Filter option to filter based on owner id. | [optional] |
| **customer_id** | **String** | Filter option to filter based on customer id. | [optional] |
| **page_size** | **Integer** | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided. | [optional] |
| **start_time** | **Integer** | Start time filter in epoch milli seconds | [optional] |
| **end_time** | **Integer** | End time filter in epoch milli seconds | [optional] |

### Return type

[**ListInvoicesResponse**](ListInvoicesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_invoices_for_bill_run

> <ListInvoicesResponse> list_invoices_for_bill_run(opts)

List invoices eligible for bill run

List invoices eligible for bill run

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoicesApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEyMywgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | Pagination token used as a marker to get records from next page.
  status: 'PROCESSED', # String | Filter option to filter by status.
  owner_id: 'ACC001', # String | Filter option to filter based on owner id.
  customer_id: '1234', # String | Filter option to filter based on customer id.
  page_size: 10, # Integer | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided.
  start_time: 1650110402000, # Integer | Start time filter in epoch milli seconds
  end_time: 1650110402000 # Integer | End time filter in epoch milli seconds
}

begin
  # List invoices eligible for bill run
  result = api_instance.list_invoices_for_bill_run(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->list_invoices_for_bill_run: #{e}"
end
```

#### Using the list_invoices_for_bill_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInvoicesResponse>, Integer, Hash)> list_invoices_for_bill_run_with_http_info(opts)

```ruby
begin
  # List invoices eligible for bill run
  data, status_code, headers = api_instance.list_invoices_for_bill_run_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInvoicesResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->list_invoices_for_bill_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** | Pagination token used as a marker to get records from next page. | [optional] |
| **status** | **String** | Filter option to filter by status. | [optional] |
| **owner_id** | **String** | Filter option to filter based on owner id. | [optional] |
| **customer_id** | **String** | Filter option to filter based on customer id. | [optional] |
| **page_size** | **Integer** | Maximum page size expected by client to return the record list.    NOTE: Max page size cannot be more than 50. Also 50 is the default page size if no value is provided. | [optional] |
| **start_time** | **Integer** | Start time filter in epoch milli seconds | [optional] |
| **end_time** | **Integer** | End time filter in epoch milli seconds | [optional] |

### Return type

[**ListInvoicesResponse**](ListInvoicesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pricing_rule_logs

> <PricingRulesLogsPaginatedResponse> list_pricing_rule_logs(invoice_id)

List pricing rule logs

List pricing rule logs

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoicesApi.new
invoice_id = 'ACC001' # String | 

begin
  # List pricing rule logs
  result = api_instance.list_pricing_rule_logs(invoice_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->list_pricing_rule_logs: #{e}"
end
```

#### Using the list_pricing_rule_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricingRulesLogsPaginatedResponse>, Integer, Hash)> list_pricing_rule_logs_with_http_info(invoice_id)

```ruby
begin
  # List pricing rule logs
  data, status_code, headers = api_instance.list_pricing_rule_logs_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricingRulesLogsPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->list_pricing_rule_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **String** |  |  |

### Return type

[**PricingRulesLogsPaginatedResponse**](PricingRulesLogsPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## manage_miscellaneous_charges_in_account

> <MiscellaneousChargesResponse> manage_miscellaneous_charges_in_account(account_id, opts)

Add or update miscellaneous charges in upcoming Invoice for a account

Add or update miscellaneous charges in upcoming Invoice for a account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoicesApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
opts = {
  manage_miscellaneous_charges_request: TogaiClient::ManageMiscellaneousChargesRequest.new({items: [TogaiClient::MiscellaneousCharge.new({name: 'Charge 1'})]}) # ManageMiscellaneousChargesRequest | Payload to update custom line items
}

begin
  # Add or update miscellaneous charges in upcoming Invoice for a account
  result = api_instance.manage_miscellaneous_charges_in_account(account_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->manage_miscellaneous_charges_in_account: #{e}"
end
```

#### Using the manage_miscellaneous_charges_in_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MiscellaneousChargesResponse>, Integer, Hash)> manage_miscellaneous_charges_in_account_with_http_info(account_id, opts)

```ruby
begin
  # Add or update miscellaneous charges in upcoming Invoice for a account
  data, status_code, headers = api_instance.manage_miscellaneous_charges_in_account_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MiscellaneousChargesResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->manage_miscellaneous_charges_in_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **manage_miscellaneous_charges_request** | [**ManageMiscellaneousChargesRequest**](ManageMiscellaneousChargesRequest.md) | Payload to update custom line items | [optional] |

### Return type

[**MiscellaneousChargesResponse**](MiscellaneousChargesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## manage_miscellaneous_charges_in_invoice

> <MiscellaneousChargesResponse> manage_miscellaneous_charges_in_invoice(invoice_id, opts)

Add or update miscellaneous charges in Invoice

Add or update miscellaneous charges in Invoice

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoicesApi.new
invoice_id = 'ACC001' # String | 
opts = {
  manage_miscellaneous_charges_request: TogaiClient::ManageMiscellaneousChargesRequest.new({items: [TogaiClient::MiscellaneousCharge.new({name: 'Charge 1'})]}) # ManageMiscellaneousChargesRequest | Payload to update custom line items
}

begin
  # Add or update miscellaneous charges in Invoice
  result = api_instance.manage_miscellaneous_charges_in_invoice(invoice_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->manage_miscellaneous_charges_in_invoice: #{e}"
end
```

#### Using the manage_miscellaneous_charges_in_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MiscellaneousChargesResponse>, Integer, Hash)> manage_miscellaneous_charges_in_invoice_with_http_info(invoice_id, opts)

```ruby
begin
  # Add or update miscellaneous charges in Invoice
  data, status_code, headers = api_instance.manage_miscellaneous_charges_in_invoice_with_http_info(invoice_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MiscellaneousChargesResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->manage_miscellaneous_charges_in_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **String** |  |  |
| **manage_miscellaneous_charges_request** | [**ManageMiscellaneousChargesRequest**](ManageMiscellaneousChargesRequest.md) | Payload to update custom line items | [optional] |

### Return type

[**MiscellaneousChargesResponse**](MiscellaneousChargesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_invoice

> <Invoice> update_invoice(invoice_id, opts)

Update an invoice

Update an invoice[Only CUSTOM invoices in DRAFT state support updating of all fields]. Updating status can be done for all invoice.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoicesApi.new
invoice_id = 'ACC001' # String | 
opts = {
  update_invoice_request: TogaiClient::UpdateInvoiceRequest.new # UpdateInvoiceRequest | Payload to update an invoice
}

begin
  # Update an invoice
  result = api_instance.update_invoice(invoice_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->update_invoice: #{e}"
end
```

#### Using the update_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invoice>, Integer, Hash)> update_invoice_with_http_info(invoice_id, opts)

```ruby
begin
  # Update an invoice
  data, status_code, headers = api_instance.update_invoice_with_http_info(invoice_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invoice>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoicesApi->update_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **String** |  |  |
| **update_invoice_request** | [**UpdateInvoiceRequest**](UpdateInvoiceRequest.md) | Payload to update an invoice | [optional] |

### Return type

[**Invoice**](Invoice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

