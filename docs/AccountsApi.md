# TogaiClient::AccountsApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_aliases**](AccountsApi.md#add_aliases) | **POST** /accounts/{account_id}/add_aliases | Add Aliases to account |
| [**create_account**](AccountsApi.md#create_account) | **POST** /accounts | Create an account |
| [**create_proposal**](AccountsApi.md#create_proposal) | **POST** /accounts/{account_id}/purchase_proposals | (DEPRECATED) Propose a purchase of a plan |
| [**delete_account**](AccountsApi.md#delete_account) | **DELETE** /accounts/{account_id} | Delete an account |
| [**get_account**](AccountsApi.md#get_account) | **GET** /accounts/{account_id} | Get an account |
| [**get_accounts**](AccountsApi.md#get_accounts) | **GET** /accounts | List accounts of customer |
| [**get_pricing_schedules**](AccountsApi.md#get_pricing_schedules) | **GET** /accounts/{account_id}/pricing_schedules | (DEPRECATED) List pricing schedules of an account |
| [**get_proposal**](AccountsApi.md#get_proposal) | **GET** /purchase_proposals/{purchase_proposal_id} | (DEPRECATED) Get proposal information |
| [**get_purchase**](AccountsApi.md#get_purchase) | **GET** /purchases/{purchase_id} | (DEPRECATED) Get a specific purchase of an account |
| [**initiate_one_time_entitlement_plan**](AccountsApi.md#initiate_one_time_entitlement_plan) | **POST** /accounts/{account_id}/purchases | (DEPRECATED) Initiate a purchase |
| [**list_account_aliases**](AccountsApi.md#list_account_aliases) | **GET** /accounts/{account_id}/account_aliases | Get all aliases of an account |
| [**list_account_proposals**](AccountsApi.md#list_account_proposals) | **GET** /accounts/{account_id}/purchase_proposals | (DEPRECATED) List all proposals of an account |
| [**list_account_purchases**](AccountsApi.md#list_account_purchases) | **GET** /accounts/{account_id}/purchases | (DEPRECATED) Get all purchases for an account |
| [**remove_aliases**](AccountsApi.md#remove_aliases) | **POST** /accounts/{account_id}/remove_aliases | Remove Aliases to account |
| [**update_account**](AccountsApi.md#update_account) | **PATCH** /accounts/{account_id} | Update an account |
| [**update_pricing_schedule**](AccountsApi.md#update_pricing_schedule) | **POST** /accounts/{account_id}/price_plans | (DEPRECATED) Dissociate or associate a price plan with an account |
| [**update_pricing_schedule_batch**](AccountsApi.md#update_pricing_schedule_batch) | **POST** /accounts/{account_id}/edit_schedules | (DEPRECATED) Edit schedules of an account. |
| [**update_proposal_status**](AccountsApi.md#update_proposal_status) | **POST** /purchase_proposals/{purchase_proposal_id}/update_status | (DEPRECATED) Approve or decline a purchase of a billing plan |


## add_aliases

> <Account> add_aliases(account_id, add_account_aliases_request)

Add Aliases to account

Add aliases to an account using customer_id and account_id.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
add_account_aliases_request = TogaiClient::AddAccountAliasesRequest.new # AddAccountAliasesRequest | Payload to add aliases to account

begin
  # Add Aliases to account
  result = api_instance.add_aliases(account_id, add_account_aliases_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->add_aliases: #{e}"
end
```

#### Using the add_aliases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> add_aliases_with_http_info(account_id, add_account_aliases_request)

```ruby
begin
  # Add Aliases to account
  data, status_code, headers = api_instance.add_aliases_with_http_info(account_id, add_account_aliases_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->add_aliases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **add_account_aliases_request** | [**AddAccountAliasesRequest**](AddAccountAliasesRequest.md) | Payload to add aliases to account |  |

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_account

> <Account> create_account(create_account_request)

Create an account

This API let’s you to create an account for a customer using customer_id.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
create_account_request = TogaiClient::CreateAccountRequest.new({id: 'ACC00001', name: 'Primary Account', customer_id: 'C1234ewf'}) # CreateAccountRequest | Payload to create account

begin
  # Create an account
  result = api_instance.create_account(create_account_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->create_account: #{e}"
end
```

#### Using the create_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> create_account_with_http_info(create_account_request)

```ruby
begin
  # Create an account
  data, status_code, headers = api_instance.create_account_with_http_info(create_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->create_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_account_request** | [**CreateAccountRequest**](CreateAccountRequest.md) | Payload to create account |  |

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_proposal

> <Proposal> create_proposal(account_id, create_proposal_request)

(DEPRECATED) Propose a purchase of a plan

This API let’s you to create a proposal of a billing/entitlement plan for an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
create_proposal_request = TogaiClient::CreateProposalRequest.new({type: TogaiClient::PurchaseType::ENTITLEMENT_GRANT, payment_mode: 'PREPAID'}) # CreateProposalRequest | Payload to initiate a proposal

begin
  # (DEPRECATED) Propose a purchase of a plan
  result = api_instance.create_proposal(account_id, create_proposal_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->create_proposal: #{e}"
end
```

#### Using the create_proposal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Proposal>, Integer, Hash)> create_proposal_with_http_info(account_id, create_proposal_request)

```ruby
begin
  # (DEPRECATED) Propose a purchase of a plan
  data, status_code, headers = api_instance.create_proposal_with_http_info(account_id, create_proposal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Proposal>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->create_proposal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **create_proposal_request** | [**CreateProposalRequest**](CreateProposalRequest.md) | Payload to initiate a proposal |  |

### Return type

[**Proposal**](Proposal.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_account

> <BaseSuccessResponse> delete_account(account_id)

Delete an account

This API let’s you to delete a customer using customer_id and account_id.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account

begin
  # Delete an account
  result = api_instance.delete_account(account_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->delete_account: #{e}"
end
```

#### Using the delete_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccessResponse>, Integer, Hash)> delete_account_with_http_info(account_id)

```ruby
begin
  # Delete an account
  data, status_code, headers = api_instance.delete_account_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccessResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->delete_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |

### Return type

[**BaseSuccessResponse**](BaseSuccessResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account

> <Account> get_account(account_id, opts)

Get an account

Get account information using customer_id and account_id.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
opts = {
  effective_on: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  include_group_details: true # Boolean | 
}

begin
  # Get an account
  result = api_instance.get_account(account_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> get_account_with_http_info(account_id, opts)

```ruby
begin
  # Get an account
  data, status_code, headers = api_instance.get_account_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **effective_on** | **Time** |  | [optional] |
| **include_group_details** | **Boolean** |  | [optional] |

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts

> <AccountPaginatedResponse> get_accounts(opts)

List accounts of customer

Returns a list of accounts of a customer with pagination and sort.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10 # Float | 
}

begin
  # List accounts of customer
  result = api_instance.get_accounts(opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_accounts: #{e}"
end
```

#### Using the get_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountPaginatedResponse>, Integer, Hash)> get_accounts_with_http_info(opts)

```ruby
begin
  # List accounts of customer
  data, status_code, headers = api_instance.get_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |

### Return type

[**AccountPaginatedResponse**](AccountPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pricing_schedules

> <PricingSchedulePaginatedResponse> get_pricing_schedules(account_id, opts)

(DEPRECATED) List pricing schedules of an account

Returns a list of pricing schedules of an account with pagination and sort.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
opts = {
  next_token: 'eyJsYXN0SXRlbUlkIjogInN0cmluZyIsICJwYWdlU2l6ZSI6IDEwMCwgInNvcnRPcmRlciI6ICJhc2MifQ==', # String | 
  page_size: 10, # Float | 
  start_date: '2023-03-30T10:41:10.088499', # String | 
  end_date: '2099-03-30T10:41:10.088499', # String | 
  include_price_plan_info: true, # Boolean | 
  compact: false # Boolean | 
}

begin
  # (DEPRECATED) List pricing schedules of an account
  result = api_instance.get_pricing_schedules(account_id, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_pricing_schedules: #{e}"
end
```

#### Using the get_pricing_schedules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PricingSchedulePaginatedResponse>, Integer, Hash)> get_pricing_schedules_with_http_info(account_id, opts)

```ruby
begin
  # (DEPRECATED) List pricing schedules of an account
  data, status_code, headers = api_instance.get_pricing_schedules_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PricingSchedulePaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_pricing_schedules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **next_token** | **String** |  | [optional] |
| **page_size** | **Float** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **include_price_plan_info** | **Boolean** |  | [optional] |
| **compact** | **Boolean** |  | [optional] |

### Return type

[**PricingSchedulePaginatedResponse**](PricingSchedulePaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_proposal

> <GetProposalResponse> get_proposal(purchase_proposal_id)

(DEPRECATED) Get proposal information

Get proposal information

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
purchase_proposal_id = 'purchase.20rqjgFJf2O.ejl25' # String | 

begin
  # (DEPRECATED) Get proposal information
  result = api_instance.get_proposal(purchase_proposal_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_proposal: #{e}"
end
```

#### Using the get_proposal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProposalResponse>, Integer, Hash)> get_proposal_with_http_info(purchase_proposal_id)

```ruby
begin
  # (DEPRECATED) Get proposal information
  data, status_code, headers = api_instance.get_proposal_with_http_info(purchase_proposal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProposalResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_proposal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purchase_proposal_id** | **String** |  |  |

### Return type

[**GetProposalResponse**](GetProposalResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_purchase

> <GetPurchaseResponse> get_purchase(purchase_id)

(DEPRECATED) Get a specific purchase of an account

Get purchase information of an account for a specific plan using account_id and price_plan_id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
purchase_id = 'purchase.1zYnCiM9Bpg.lv25y' # String | 

begin
  # (DEPRECATED) Get a specific purchase of an account
  result = api_instance.get_purchase(purchase_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_purchase: #{e}"
end
```

#### Using the get_purchase_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPurchaseResponse>, Integer, Hash)> get_purchase_with_http_info(purchase_id)

```ruby
begin
  # (DEPRECATED) Get a specific purchase of an account
  data, status_code, headers = api_instance.get_purchase_with_http_info(purchase_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPurchaseResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->get_purchase_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purchase_id** | **String** |  |  |

### Return type

[**GetPurchaseResponse**](GetPurchaseResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## initiate_one_time_entitlement_plan

> <Purchase> initiate_one_time_entitlement_plan(account_id, create_purchase_request)

(DEPRECATED) Initiate a purchase

This API let’s you to initiate a purchase for an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
create_purchase_request = TogaiClient::CreatePurchaseRequest.new # CreatePurchaseRequest | Payload to initiate a purchase

begin
  # (DEPRECATED) Initiate a purchase
  result = api_instance.initiate_one_time_entitlement_plan(account_id, create_purchase_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->initiate_one_time_entitlement_plan: #{e}"
end
```

#### Using the initiate_one_time_entitlement_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Purchase>, Integer, Hash)> initiate_one_time_entitlement_plan_with_http_info(account_id, create_purchase_request)

```ruby
begin
  # (DEPRECATED) Initiate a purchase
  data, status_code, headers = api_instance.initiate_one_time_entitlement_plan_with_http_info(account_id, create_purchase_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Purchase>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->initiate_one_time_entitlement_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **create_purchase_request** | [**CreatePurchaseRequest**](CreatePurchaseRequest.md) | Payload to initiate a purchase |  |

### Return type

[**Purchase**](Purchase.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_account_aliases

> <AccountAliasesPaginatedResponse> list_account_aliases(account_id)

Get all aliases of an account

Get all aliases of an account using account_id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account

begin
  # Get all aliases of an account
  result = api_instance.list_account_aliases(account_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->list_account_aliases: #{e}"
end
```

#### Using the list_account_aliases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountAliasesPaginatedResponse>, Integer, Hash)> list_account_aliases_with_http_info(account_id)

```ruby
begin
  # Get all aliases of an account
  data, status_code, headers = api_instance.list_account_aliases_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountAliasesPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->list_account_aliases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |

### Return type

[**AccountAliasesPaginatedResponse**](AccountAliasesPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_account_proposals

> <ProposalsPaginatedResponse> list_account_proposals(account_id)

(DEPRECATED) List all proposals of an account

List all proposals of an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account

begin
  # (DEPRECATED) List all proposals of an account
  result = api_instance.list_account_proposals(account_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->list_account_proposals: #{e}"
end
```

#### Using the list_account_proposals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProposalsPaginatedResponse>, Integer, Hash)> list_account_proposals_with_http_info(account_id)

```ruby
begin
  # (DEPRECATED) List all proposals of an account
  data, status_code, headers = api_instance.list_account_proposals_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProposalsPaginatedResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->list_account_proposals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |

### Return type

[**ProposalsPaginatedResponse**](ProposalsPaginatedResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_account_purchases

> <PurchasePaginatedListData> list_account_purchases(account_id)

(DEPRECATED) Get all purchases for an account

Get Purchase information for an account using account_id and price_plan_id

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account

begin
  # (DEPRECATED) Get all purchases for an account
  result = api_instance.list_account_purchases(account_id)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->list_account_purchases: #{e}"
end
```

#### Using the list_account_purchases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PurchasePaginatedListData>, Integer, Hash)> list_account_purchases_with_http_info(account_id)

```ruby
begin
  # (DEPRECATED) Get all purchases for an account
  data, status_code, headers = api_instance.list_account_purchases_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PurchasePaginatedListData>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->list_account_purchases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |

### Return type

[**PurchasePaginatedListData**](PurchasePaginatedListData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_aliases

> <Account> remove_aliases(account_id, remove_account_aliases_request)

Remove Aliases to account

Remove existing aliases tagged to an account using this API

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
remove_account_aliases_request = TogaiClient::RemoveAccountAliasesRequest.new # RemoveAccountAliasesRequest | Payload to remove aliases from account

begin
  # Remove Aliases to account
  result = api_instance.remove_aliases(account_id, remove_account_aliases_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->remove_aliases: #{e}"
end
```

#### Using the remove_aliases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> remove_aliases_with_http_info(account_id, remove_account_aliases_request)

```ruby
begin
  # Remove Aliases to account
  data, status_code, headers = api_instance.remove_aliases_with_http_info(account_id, remove_account_aliases_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->remove_aliases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **remove_account_aliases_request** | [**RemoveAccountAliasesRequest**](RemoveAccountAliasesRequest.md) | Payload to remove aliases from account |  |

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_account

> <Account> update_account(account_id, update_account_request)

Update an account

This API let’s you to update an account’s information using customer_id and account_id.

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
update_account_request = TogaiClient::UpdateAccountRequest.new # UpdateAccountRequest | Payload to update account

begin
  # Update an account
  result = api_instance.update_account(account_id, update_account_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->update_account: #{e}"
end
```

#### Using the update_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> update_account_with_http_info(account_id, update_account_request)

```ruby
begin
  # Update an account
  data, status_code, headers = api_instance.update_account_with_http_info(account_id, update_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->update_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **update_account_request** | [**UpdateAccountRequest**](UpdateAccountRequest.md) | Payload to update account |  |

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_pricing_schedule

> <UpdatePricingScheduleResponse> update_pricing_schedule(account_id, update_pricing_schedule_request_with_actions)

(DEPRECATED) Dissociate or associate a price plan with an account

This API let’s you to detach or attach a price plan with an existing account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
update_pricing_schedule_request_with_actions = TogaiClient::UpdatePricingScheduleRequestWithActions.new({effective_from: Date.today, effective_until: Date.today}) # UpdatePricingScheduleRequestWithActions | Payload to associate or dissociate a price plan to an account with actions

begin
  # (DEPRECATED) Dissociate or associate a price plan with an account
  result = api_instance.update_pricing_schedule(account_id, update_pricing_schedule_request_with_actions)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->update_pricing_schedule: #{e}"
end
```

#### Using the update_pricing_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePricingScheduleResponse>, Integer, Hash)> update_pricing_schedule_with_http_info(account_id, update_pricing_schedule_request_with_actions)

```ruby
begin
  # (DEPRECATED) Dissociate or associate a price plan with an account
  data, status_code, headers = api_instance.update_pricing_schedule_with_http_info(account_id, update_pricing_schedule_request_with_actions)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePricingScheduleResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->update_pricing_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **update_pricing_schedule_request_with_actions** | [**UpdatePricingScheduleRequestWithActions**](UpdatePricingScheduleRequestWithActions.md) | Payload to associate or dissociate a price plan to an account with actions |  |

### Return type

[**UpdatePricingScheduleResponse**](UpdatePricingScheduleResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_pricing_schedule_batch

> <UpdatePricingScheduleResponse> update_pricing_schedule_batch(account_id, edit_pricing_schedule_request, opts)

(DEPRECATED) Edit schedules of an account.

This API let’s you to detach/attach one or more price plans from/to an existing account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
account_id = 'ACC00001' # String | account_id corresponding to an account
edit_pricing_schedule_request = TogaiClient::EditPricingScheduleRequest.new({edits: [TogaiClient::UpdatePricingScheduleRequest.new({effective_from: Date.today, effective_until: Date.today})]}) # EditPricingScheduleRequest | Payload to dis/associate one or more price plans to an account
opts = {
  dry_run: false # Boolean | 
}

begin
  # (DEPRECATED) Edit schedules of an account.
  result = api_instance.update_pricing_schedule_batch(account_id, edit_pricing_schedule_request, opts)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->update_pricing_schedule_batch: #{e}"
end
```

#### Using the update_pricing_schedule_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePricingScheduleResponse>, Integer, Hash)> update_pricing_schedule_batch_with_http_info(account_id, edit_pricing_schedule_request, opts)

```ruby
begin
  # (DEPRECATED) Edit schedules of an account.
  data, status_code, headers = api_instance.update_pricing_schedule_batch_with_http_info(account_id, edit_pricing_schedule_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePricingScheduleResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->update_pricing_schedule_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | account_id corresponding to an account |  |
| **edit_pricing_schedule_request** | [**EditPricingScheduleRequest**](EditPricingScheduleRequest.md) | Payload to dis/associate one or more price plans to an account |  |
| **dry_run** | **Boolean** |  | [optional] |

### Return type

[**UpdatePricingScheduleResponse**](UpdatePricingScheduleResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_proposal_status

> <Proposal> update_proposal_status(purchase_proposal_id, update_proposal_status)

(DEPRECATED) Approve or decline a purchase of a billing plan

This API let’s you to approve or decline a proposal of a billing plan for an account

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AccountsApi.new
purchase_proposal_id = 'purchase.20rqjgFJf2O.ejl25' # String | 
update_proposal_status = TogaiClient::UpdateProposalStatus.new({status: 'APPROVE'}) # UpdateProposalStatus | Payload to approve or decline a proposal

begin
  # (DEPRECATED) Approve or decline a purchase of a billing plan
  result = api_instance.update_proposal_status(purchase_proposal_id, update_proposal_status)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->update_proposal_status: #{e}"
end
```

#### Using the update_proposal_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Proposal>, Integer, Hash)> update_proposal_status_with_http_info(purchase_proposal_id, update_proposal_status)

```ruby
begin
  # (DEPRECATED) Approve or decline a purchase of a billing plan
  data, status_code, headers = api_instance.update_proposal_status_with_http_info(purchase_proposal_id, update_proposal_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Proposal>
rescue TogaiClient::ApiError => e
  puts "Error when calling AccountsApi->update_proposal_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purchase_proposal_id** | **String** |  |  |
| **update_proposal_status** | [**UpdateProposalStatus**](UpdateProposalStatus.md) | Payload to approve or decline a proposal |  |

### Return type

[**Proposal**](Proposal.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

