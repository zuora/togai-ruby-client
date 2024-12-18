# TogaiClient::EntitlementOverageRateCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feature_id** | **String** | Unique Identifier of the attached Feature |  |
| **display_name** | **String** | Name to be displayed during invoice | [optional] |
| **name** | **String** | Unique identifier for the rate card in a price plan. If left null it is auto-generated. | [optional] |
| **tag** | **String** | A tag string to group rate cards | [optional] |
| **max_quantity** | **Float** | Maximum quantity allowed for the feature, if not specified, unlimited quantity is allowed | [optional] |
| **rate_plan** | [**RatePlan**](RatePlan.md) |  |  |
| **rate_values** | [**Array&lt;RateValue&gt;**](RateValue.md) |  |  |
| **billing_config** | [**BillingConfig**](BillingConfig.md) |  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::EntitlementOverageRateCard.new(
  feature_id: null,
  display_name: null,
  name: null,
  tag: null,
  max_quantity: null,
  rate_plan: null,
  rate_values: null,
  billing_config: null
)
```

