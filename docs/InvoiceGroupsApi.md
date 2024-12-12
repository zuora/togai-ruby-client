# TogaiClient::InvoiceGroupsApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_invoice_group_accounts**](InvoiceGroupsApi.md#add_invoice_group_accounts) | **POST** /invoice_groups/{invoice_group_id}/add_accounts | Add accounts to an invoice group |
| [**create_invoice_group**](InvoiceGroupsApi.md#create_invoice_group) | **POST** /invoice_groups | Create an invoice group |
| [**get_invoice_group**](InvoiceGroupsApi.md#get_invoice_group) | **GET** /invoice_groups/{invoice_group_id} | Get information of an invoice group |
| [**list_invoice_groups**](InvoiceGroupsApi.md#list_invoice_groups) | **GET** /invoice_groups | List Invoice Groups |
| [**remove_invoice_group_accounts**](InvoiceGroupsApi.md#remove_invoice_group_accounts) | **POST** /invoice_groups/{invoice_group_id}/remove_accounts | Remove accounts from an invoice group. Removing all accounts will also delete the invoice group |


## add_invoice_group_accounts

> <InvoiceGroups> add_invoice_group_accounts(invoice_group_id, update_invoice_group_accounts)

Add accounts to an invoice group

This API let’s you to add accounts to an invoice group

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoiceGroupsApi.new
invoice_group_id = 'inv_grp.20rqjgFJf2O.ejl25' # String | 
update_invoice_group_accounts = TogaiClient::UpdateInvoiceGroupAccounts.new({account_ids: ['account_ids_example']}) # UpdateInvoiceGroupAccounts | Payload to add or remove accounts to/from an invoice group

begin
  # Add accounts to an invoice group
  result = api_instance.add_invoice_group_accounts(invoice_group_id, update_invoice_group_accounts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoiceGroupsApi->add_invoice_group_accounts: #{e}"
end
```

#### Using the add_invoice_group_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceGroups>, Integer, Hash)> add_invoice_group_accounts_with_http_info(invoice_group_id, update_invoice_group_accounts)

```ruby
begin
  # Add accounts to an invoice group
  data, status_code, headers = api_instance.add_invoice_group_accounts_with_http_info(invoice_group_id, update_invoice_group_accounts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceGroups>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoiceGroupsApi->add_invoice_group_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_group_id** | **String** |  |  |
| **update_invoice_group_accounts** | [**UpdateInvoiceGroupAccounts**](UpdateInvoiceGroupAccounts.md) | Payload to add or remove accounts to/from an invoice group |  |

### Return type

[**InvoiceGroups**](InvoiceGroups.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_invoice_group

> <InvoiceGroups> create_invoice_group(create_invoice_group_request)

Create an invoice group

This API let’s you to create an invoice group

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoiceGroupsApi.new
create_invoice_group_request = TogaiClient::CreateInvoiceGroupRequest.new({name: 'name_example', email: 'email_example', daily_invoice_consolidation: false, account_ids: ['account_ids_example'], address: TogaiClient::Address.new}) # CreateInvoiceGroupRequest | Payload to approve or decline a proposal

begin
  # Create an invoice group
  result = api_instance.create_invoice_group(create_invoice_group_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoiceGroupsApi->create_invoice_group: #{e}"
end
```

#### Using the create_invoice_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceGroups>, Integer, Hash)> create_invoice_group_with_http_info(create_invoice_group_request)

```ruby
begin
  # Create an invoice group
  data, status_code, headers = api_instance.create_invoice_group_with_http_info(create_invoice_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceGroups>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoiceGroupsApi->create_invoice_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_invoice_group_request** | [**CreateInvoiceGroupRequest**](CreateInvoiceGroupRequest.md) | Payload to approve or decline a proposal |  |

### Return type

[**InvoiceGroups**](InvoiceGroups.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_invoice_group

> <InvoiceGroupAccountsPaginatedResponse> get_invoice_group(invoice_group_id)

Get information of an invoice group

This API let’s you to get information of an invoice group

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoiceGroupsApi.new
invoice_group_id = 'inv_grp.20rqjgFJf2O.ejl25' # String | 

begin
  # Get information of an invoice group
  result = api_instance.get_invoice_group(invoice_group_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoiceGroupsApi->get_invoice_group: #{e}"
end
```

#### Using the get_invoice_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceGroupAccountsPaginatedResponse>, Integer, Hash)> get_invoice_group_with_http_info(invoice_group_id)

```ruby
begin
  # Get information of an invoice group
  data, status_code, headers = api_instance.get_invoice_group_with_http_info(invoice_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceGroupAccountsPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoiceGroupsApi->get_invoice_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_group_id** | **String** |  |  |

### Return type

[**InvoiceGroupAccountsPaginatedResponse**](InvoiceGroupAccountsPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_invoice_groups

> <InvoiceGroupPaginatedResponse> list_invoice_groups

List Invoice Groups

This API let’s you to list invoice groups

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoiceGroupsApi.new

begin
  # List Invoice Groups
  result = api_instance.list_invoice_groups
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoiceGroupsApi->list_invoice_groups: #{e}"
end
```

#### Using the list_invoice_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceGroupPaginatedResponse>, Integer, Hash)> list_invoice_groups_with_http_info

```ruby
begin
  # List Invoice Groups
  data, status_code, headers = api_instance.list_invoice_groups_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceGroupPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoiceGroupsApi->list_invoice_groups_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InvoiceGroupPaginatedResponse**](InvoiceGroupPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_invoice_group_accounts

> <BaseSuccessResponse> remove_invoice_group_accounts(invoice_group_id, update_invoice_group_accounts)

Remove accounts from an invoice group. Removing all accounts will also delete the invoice group

This API let’s you to remove accounts from an invoice group. Removing all accounts will also delete the invoice group

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::InvoiceGroupsApi.new
invoice_group_id = 'inv_grp.20rqjgFJf2O.ejl25' # String | 
update_invoice_group_accounts = TogaiClient::UpdateInvoiceGroupAccounts.new({account_ids: ['account_ids_example']}) # UpdateInvoiceGroupAccounts | Payload to add or remove accounts to/from an invoice group

begin
  # Remove accounts from an invoice group. Removing all accounts will also delete the invoice group
  result = api_instance.remove_invoice_group_accounts(invoice_group_id, update_invoice_group_accounts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoiceGroupsApi->remove_invoice_group_accounts: #{e}"
end
```

#### Using the remove_invoice_group_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> remove_invoice_group_accounts_with_http_info(invoice_group_id, update_invoice_group_accounts)

```ruby
begin
  # Remove accounts from an invoice group. Removing all accounts will also delete the invoice group
  data, status_code, headers = api_instance.remove_invoice_group_accounts_with_http_info(invoice_group_id, update_invoice_group_accounts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling InvoiceGroupsApi->remove_invoice_group_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_group_id** | **String** |  |  |
| **update_invoice_group_accounts** | [**UpdateInvoiceGroupAccounts**](UpdateInvoiceGroupAccounts.md) | Payload to add or remove accounts to/from an invoice group |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

