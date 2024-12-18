# TogaiClient::LicenseRateCardConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_quantity** | **Integer** | Max allowed quantity for a particular license in a price plan | [optional] |
| **max_quantity_breach_action** | [**MaxQuantityBreachAction**](MaxQuantityBreachAction.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::LicenseRateCardConfig.new(
  max_quantity: 100,
  max_quantity_breach_action: null
)
```

