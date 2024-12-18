# TogaiClient::PricePlanDetailsConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Mode to get the usage rate card - CUSTOM: Use the price plan details provided in the request - PRICE_PLAN: Use the usage rate cards of the given price plan - ACCOUNT: Use the usage rate cards of a associated price plan of the given account  |  |
| **price_plan_details** | [**CreatePricePlanDetails**](CreatePricePlanDetails.md) |  | [optional] |
| **price_plan_id** | **String** | Id of the price plan, this will be considered if mode is PRICE_PLAN | [optional] |
| **account_id** | **String** | Id of the account, this will be considered if mode is ACCOUNT | [optional] |
| **effective_on** | **Time** | Will be used for getting the usage rate card, only used if mode is ACCOUNT or PRICE_PLAN | [optional] |
| **pricing_cycle_ordinal** | **Integer** | nth cycle, will be used to calculate revenue for the particular cycle, only used if mode is CUSTOM or PRICE_PLAN | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::PricePlanDetailsConfig.new(
  mode: null,
  price_plan_details: null,
  price_plan_id: null,
  account_id: null,
  effective_on: null,
  pricing_cycle_ordinal: null
)
```

