# TogaiClient::CustomerPortalApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_customer_portal_delegate_token**](CustomerPortalApi.md#get_customer_portal_delegate_token) | **POST** /portal/token | Get delegate token for customer portal |


## get_customer_portal_delegate_token

> <TokenResponse> get_customer_portal_delegate_token(get_customer_portal_delegate_token_request)

Get delegate token for customer portal

Get delegate token for customer portal

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::CustomerPortalApi.new
get_customer_portal_delegate_token_request = TogaiClient::GetCustomerPortalDelegateTokenRequest.new({customer_id: 'customer_id_example'}) # GetCustomerPortalDelegateTokenRequest | Payload to get delegate token for customer portal

begin
  # Get delegate token for customer portal
  result = api_instance.get_customer_portal_delegate_token(get_customer_portal_delegate_token_request)
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomerPortalApi->get_customer_portal_delegate_token: #{e}"
end
```

#### Using the get_customer_portal_delegate_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> get_customer_portal_delegate_token_with_http_info(get_customer_portal_delegate_token_request)

```ruby
begin
  # Get delegate token for customer portal
  data, status_code, headers = api_instance.get_customer_portal_delegate_token_with_http_info(get_customer_portal_delegate_token_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling CustomerPortalApi->get_customer_portal_delegate_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_customer_portal_delegate_token_request** | [**GetCustomerPortalDelegateTokenRequest**](GetCustomerPortalDelegateTokenRequest.md) | Payload to get delegate token for customer portal |  |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

