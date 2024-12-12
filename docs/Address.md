# TogaiClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | Contact number | [optional] |
| **line1** | **String** | Address line 1 (eg. Street, PO Box, Company Name) | [optional] |
| **line2** | **String** | Address line 2 (eg. apartment, suite, unit or building) | [optional] |
| **postal_code** | **String** | ZIP or postal code | [optional] |
| **city** | **String** | City, district, suburb, town or village | [optional] |
| **state** | **String** | State, county, province or region | [optional] |
| **country** | **String** | Two letter country code [ISO-3166-1 Alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::Address.new(
  phone_number: null,
  line1: null,
  line2: null,
  postal_code: null,
  city: null,
  state: null,
  country: null
)
```

