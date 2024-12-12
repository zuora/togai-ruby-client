# TogaiClient::AuthenticationApi

All URIs are relative to *https://api.togai.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authenticate**](AuthenticationApi.md#authenticate) | **POST** /authenticate | Generate short lived bearer token |


## authenticate

> <TokenResponse> authenticate

Generate short lived bearer token

Generates and returns a bearer token. Behavior of this API differs on the basis of the auth mechanism used to make the request.   - For API key auth, this API generates a JWT token whcih is valid for 24 hours and returns it.   - For JWT bearer auth, returns the same JWT token in response For information on how to generate API token, refer [Generating New API Keys](https://docs.togai.com/api-reference/authentication#generating-new-api-keys) section of docs. 

### Examples

```ruby
require 'time'
require 'togai_client'
# setup authorization
TogaiClient.configure do |config|
  # Configure Bearer authorization (Bearer <credential>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = TogaiClient::AuthenticationApi.new

begin
  # Generate short lived bearer token
  result = api_instance.authenticate
  p result
rescue TogaiClient::ApiError => e
  puts "Error when calling AuthenticationApi->authenticate: #{e}"
end
```

#### Using the authenticate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> authenticate_with_http_info

```ruby
begin
  # Generate short lived bearer token
  data, status_code, headers = api_instance.authenticate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue TogaiClient::ApiError => e
  puts "Error when calling AuthenticationApi->authenticate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

