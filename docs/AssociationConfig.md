# TogaiClient::AssociationConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_plan_id** | **String** | Id of the price plan if association request | [optional] |
| **schedule_id** | **String** | If provided, rate cards and pricing rules will copied from this schedule | [optional] |
| **pricing_cycle_config_override** | [**PricingCycleConfig**](PricingCycleConfig.md) |  | [optional] |
| **retain_start_offsets** | **Boolean** | If this flag is true, current pricing cycle of the account on the date of association will continue rather  than the configurations of the newly associated price plan. Pricing cycle overrides specified  using  &#x60;pricePlanDetailsOverride&#x60; will take precedence over the pricing cycle configurations of  the new price plan that the account needs to migrate to. PricingCycleInterval of the existing plan and  the new plan must be same for this to work. We&#39;ll return a &#x60;400 BadRequest&#x60; otherwise. Examples:   - Ongoing plan (1st Oct to 30th Oct) - {dayOffset: 1, monthOffset: NIL}     New association (15th Oct to 15th Nov) of different price plan with retainStartOffsets option true      will use the same pricing cycle configuration {dayOffset: 1, monthOffset: NIL} rather than using the     pricing cycle configuration of the new price plan that the account needs to migrate to.   - Ongoing plan (1st Oct to 30th Oct) - {dayOffset: 1, monthOffset: NIL}     New association (1st Nov to 30th Nov) of different price plan with retainStartOffsets option true will     throw a &#x60;400 BadRequest&#x60; as no existing price plan configuration found on date of association  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::AssociationConfig.new(
  price_plan_id: null,
  schedule_id: null,
  pricing_cycle_config_override: null,
  retain_start_offsets: null
)
```

