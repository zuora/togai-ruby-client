# TogaiClient::UpdatePricingScheduleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Mode of request to create dis/association | [optional] |
| **price_plan_id** | **String** | Id of the price plan if association request | [optional] |
| **effective_from** | **Date** | Date of effectiveness of the association. The date is expected in YYYY-MM-DD format - Editing of a BILLING plan with deferredRevenue can be achieved with    effectiveFrom as start date of current cycle or using &#x60;retainStartOffset&#x60; option.  |  |
| **effective_until** | **Date** | Date until which the association must be effective. The date is expected in YYYY-MM-DD format  |  |
| **price_plan_details_override** | [**CreatePricePlanDetailsOverride**](CreatePricePlanDetailsOverride.md) |  | [optional] |
| **pricing_rules_override** | [**Array&lt;CreatePricingRule&gt;**](CreatePricingRule.md) |  | [optional] |
| **retain_start_offsets** | **Boolean** | If this flag is true, current pricing cycle of the account on the date of association will continue rather  than the configurations of the newly associated price plan. Pricing cycle overrides specified  using  &#x60;pricePlanDetailsOverride&#x60; will take precedence over the pricing cycle configurations of  the new price plan that the account needs to migrate to. PricingCycleInterval of the existing plan and  the new plan must be same for this to work. We&#39;ll return a &#x60;400 BadRequest&#x60; otherwise. Examples:   - Ongoing plan (1st Oct to 30th Oct) - {dayOffset: 1, monthOffset: NIL}     New association (15th Oct to 15th Nov) of different price plan with retainStartOffsets option true      will use the same pricing cycle configuration {dayOffset: 1, monthOffset: NIL} rather than using the     pricing cycle configuration of the new price plan that the account needs to migrate to.   - Ongoing plan (1st Oct to 30th Oct) - {dayOffset: 1, monthOffset: NIL}     New association (1st Nov to 30th Nov) of different price plan with retainStartOffsets option true will     throw a &#x60;400 BadRequest&#x60; as no existing price plan configuration found on date of association  | [optional] |

## Example

```ruby
require 'togai_client'

instance = TogaiClient::UpdatePricingScheduleRequest.new(
  mode: null,
  price_plan_id: null,
  effective_from: null,
  effective_until: null,
  price_plan_details_override: null,
  pricing_rules_override: null,
  retain_start_offsets: null
)
```

